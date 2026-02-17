import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop/constants.dart';
import 'package:shop/core/components/network_image_with_loader.dart';
import 'package:shop/core/components/product/product_card.dart';
import 'package:shop/features/discover/data/models/category_model.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_controller.dart';
import 'package:shop/features/discover/presentaion/controllers/discover_products_controller.dart';
import 'package:shop/features/product/presentation/views/product_details_screen.dart';
import 'package:shop/generated/l10n.dart';

class DiscoverScreen extends ConsumerStatefulWidget {
  const DiscoverScreen({super.key});

  @override
  ConsumerState<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends ConsumerState<DiscoverScreen>
    with SingleTickerProviderStateMixin {
  late TextEditingController _searchController;
  late AnimationController _animationController;
  String? _currentSearch;
  String? _currentDirection;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    // Debounce search
    Future.delayed(const Duration(milliseconds: 500), () {
      if (_searchController.text == value) {
        _currentSearch = value.isEmpty ? null : value;
        ref
            .read(discoverProductsControllerProvider.notifier)
            .setSearch(_currentSearch);
      }
    });
  }

  void _toggleSort() {
    setState(() {
      _currentDirection = _currentDirection == 'asc' ? 'desc' : 'asc';
    });
    ref
        .read(discoverProductsControllerProvider.notifier)
        .setDirection(_currentDirection);
  }

  String _getSortText(BuildContext context) {
    // For now, use simple text. Can be extended with translations later
    // In Arabic: 'تصاعدي' for ascending, 'تنازلي' for descending
    // In English: 'ASC' for ascending, 'DESC' for descending
    final locale = Localizations.localeOf(context);
    if (locale.languageCode == 'ar') {
      return _currentDirection == 'asc' ? 'تصاعدي' : 'تنازلي';
    } else {
      return _currentDirection == 'asc' ? 'ASC' : 'DESC';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Search and Sort Bar
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _searchController,
                      onChanged: _onSearchChanged,
                      decoration: InputDecoration(
                        hintText: S.of(context).search,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Theme.of(context).cardColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  InkWell(
                    onTap: _toggleSort,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            _getSortText(context),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            _currentDirection == 'asc'
                                ? Icons.arrow_upward
                                : Icons.arrow_downward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  // Categories Section
                  SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding / 2,
                          ),
                          child: Text(
                            S.of(context).categories,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(
                          height: 120,
                          child: ref.watch(discoverControllerProvider).when(
                                data: (data) {
                                  if (data.categories.isEmpty) {
                                    return Center(
                                      child: Text(
                                        "No categories found",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    );
                                  }
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding,
                                    ),
                                    itemCount: data.categories.length,
                                    itemBuilder: (context, index) {
                                      final category = data.categories[index];
                                      final isSelected = ref
                                              .watch(
                                                  discoverProductsControllerProvider)
                                              .requireValue
                                              .selectedCategoryId ==
                                          category.id;
                                      return FadeTransition(
                                        opacity: _animationController,
                                        child: CategoryAvatar(
                                          category: category,
                                          isSelected: isSelected,
                                          onTap: () {
                                            ref
                                                .read(
                                                    discoverProductsControllerProvider
                                                        .notifier)
                                                .setCategoryId(
                                                  isSelected
                                                      ? null
                                                      : category.id,
                                                );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                                error: (error, stackTrace) => Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(defaultPadding),
                                    child: Text(
                                      error.toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                loading: () => Shimmer.fromColors(
                                  baseColor: Colors.grey[300]!,
                                  highlightColor: Colors.grey[100]!,
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding,
                                    ),
                                    itemCount: 5,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: 70,
                                            height: 70,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Container(
                                            width: 60,
                                            height: 12,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        ),
                        const SizedBox(height: defaultPadding),
                      ],
                    ),
                  ),
                  // Products Section
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding / 2,
                      ),
                      child: Text(
                        S.of(context).products,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ),
                  // Products Grid
                  ref.watch(discoverProductsControllerProvider).when(
                        data: (data) {
                          if (data.products?.isEmpty ?? true) {
                            return SliverFillRemaining(
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/Illustration/EmptyState_lightTheme.png",
                                      height: 200,
                                    ),
                                    const SizedBox(height: 16),
                                    Text(S.of(context).no_product_found),
                                  ],
                                ),
                              ),
                            );
                          }
                          return SliverPadding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                              vertical: defaultPadding,
                            ),
                            sliver: SliverGrid(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 20,
                                crossAxisSpacing: 20,
                                childAspectRatio: 0.80,
                              ),
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  final product = data.products![index];
                                  return FadeTransition(
                                    opacity: _animationController,
                                    child: ProductCard(
                                      image: product.thumbnail ?? "",
                                      brandName: product.slug ?? "",
                                      title: product.name ?? "",
                                      // ProductCard will use variation prices when variations exist
                                      // This price prop is only used as fallback when no variations
                                      price: product.price?.beforeDiscount ?? 0,
                                      priceBeforeDiscount:
                                          product.price?.beforeDiscount,
                                      priceAfetDiscount: product
                                          .price?.afterDiscount
                                          ?.toString(),
                                      dicountpercent: 0,
                                      productId: product.id,
                                      hasDiscount:
                                          product.price?.hasDiscount ?? false,
                                      // Pass variations - ProductCard will use variation prices when available
                                      variations: product.variations,
                                      press: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (_) =>
                                                ProductDetailsScreen(
                                              productSlug: product.slug,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                                childCount: data.products!.length,
                              ),
                            ),
                          );
                        },
                        error: (error, stackTrace) => SliverFillRemaining(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.error_outline,
                                  size: 64,
                                  color: Colors.red,
                                ),
                                const SizedBox(height: 16),
                                Text(error.toString()),
                              ],
                            ),
                          ),
                        ),
                        loading: () => SliverPadding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                            vertical: defaultPadding,
                          ),
                          sliver: SliverGrid(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.65,
                            ),
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => Shimmer.fromColors(
                                baseColor: Colors.grey[300]!,
                                highlightColor: Colors.grey[100]!,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                              childCount: 6,
                            ),
                          ),
                        ),
                      ),
                  // Load More Button
                  ref.watch(discoverProductsControllerProvider).when(
                        data: (data) {
                          if (!data.hasMore || data.isLoading) {
                            return const SliverToBoxAdapter(child: SizedBox());
                          }
                          return SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: ElevatedButton(
                                onPressed: () {
                                  ref
                                      .read(discoverProductsControllerProvider
                                          .notifier)
                                      .loadMore();
                                },
                                child: Text(S.of(context).load_more),
                              ),
                            ),
                          );
                        },
                        error: (_, __) =>
                            const SliverToBoxAdapter(child: SizedBox()),
                        loading: () =>
                            const SliverToBoxAdapter(child: SizedBox()),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryAvatar extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryAvatar({
    super.key,
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? primaryColor : Colors.grey.shade300,
                  width: isSelected ? 3 : 1,
                ),
                color: isSelected
                    ? primaryColor.withOpacity(0.1)
                    : Colors.grey.shade100,
              ),
              child: ClipOval(
                child: category.thumbnail != null
                    ? NetworkImageWithLoader(category.thumbnail!)
                    : Icon(
                        Icons.category,
                        color: isSelected ? primaryColor : Colors.grey,
                        size: 30,
                      ),
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 80,
              child: Text(
                category.name ?? "",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected ? primaryColor : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
