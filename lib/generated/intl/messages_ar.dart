// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(quantity, unit) => "تمت إضافة ${quantity} ${unit} إلى السلة";

  static String m1(count) => "بناءً على ${count} تقييم";

  static String m2(buyQuantity, buyProduct, getProduct) =>
      "اشتر ${buyQuantity} ${buyProduct} واحصل على ${getProduct}";

  static String m3(x, y, product) => "اشتر ${x} واحصل على ${y} ${product}";

  static String m4(items) => "الحد الأدنى للعناصر: ${items}";

  static String m5(phone) => "تم إرسال رمز التحقق إلى ${phone}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "about_us": MessageLookupByLibrary.simpleMessage("عنا"),
    "account": MessageLookupByLibrary.simpleMessage("الحساب"),
    "account_created": MessageLookupByLibrary.simpleMessage(
      "تم إنشاء الحساب بنجاح.",
    ),
    "account_creation_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في إنشاء الحساب.",
    ),
    "account_deleted": MessageLookupByLibrary.simpleMessage(
      "تم حذف الحساب بنجاح.",
    ),
    "account_deletion_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في حذف الحساب.",
    ),
    "add": MessageLookupByLibrary.simpleMessage("إضافة"),
    "add_products_before_checkout": MessageLookupByLibrary.simpleMessage(
      "أضف بعض المنتجات إلى سلتك قبل الدفع",
    ),
    "add_to_cart": MessageLookupByLibrary.simpleMessage("أضف إلى السلة"),
    "added_quantity_to_cart": m0,
    "address": MessageLookupByLibrary.simpleMessage("العنوان"),
    "address_line": MessageLookupByLibrary.simpleMessage("العنوان"),
    "address_name": MessageLookupByLibrary.simpleMessage("اسم المكان"),
    "addresses": MessageLookupByLibrary.simpleMessage("العناوين"),
    "app_language": MessageLookupByLibrary.simpleMessage("لغة التطبيق"),
    "available": MessageLookupByLibrary.simpleMessage("متاح"),
    "back": MessageLookupByLibrary.simpleMessage("رجوع"),
    "based_on_reviews": m1,
    "basic_info": MessageLookupByLibrary.simpleMessage("المعلومات الأساسية"),
    "billing_address": MessageLookupByLibrary.simpleMessage("عنوان الفوترة"),
    "bust": MessageLookupByLibrary.simpleMessage("الصدر"),
    "buy": MessageLookupByLibrary.simpleMessage("شراء"),
    "buy_and_get": m2,
    "buy_now": MessageLookupByLibrary.simpleMessage("اشتر الآن"),
    "buy_x_get_y": m3,
    "camera": MessageLookupByLibrary.simpleMessage("الكاميرا"),
    "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
    "canceled": MessageLookupByLibrary.simpleMessage("ملغي"),
    "cart_nav": MessageLookupByLibrary.simpleMessage("السلة"),
    "cash_on_delivery": MessageLookupByLibrary.simpleMessage(
      "الدفع عند الاستلام",
    ),
    "cash_on_delivery_description": MessageLookupByLibrary.simpleMessage(
      "ادفع عند استلام طلبك",
    ),
    "categories": MessageLookupByLibrary.simpleMessage("الفئات"),
    "change_address": MessageLookupByLibrary.simpleMessage("تغيير العنوان"),
    "change_password": MessageLookupByLibrary.simpleMessage(
      "تغيير كلمة المرور",
    ),
    "checkout": MessageLookupByLibrary.simpleMessage("الدفع"),
    "choose_shipping_method": MessageLookupByLibrary.simpleMessage(
      "اختر طريقة الشحن",
    ),
    "city": MessageLookupByLibrary.simpleMessage("المدينة"),
    "commercial_register": MessageLookupByLibrary.simpleMessage(
      "السجل التجاري",
    ),
    "company": MessageLookupByLibrary.simpleMessage("الشركة"),
    "company_name": MessageLookupByLibrary.simpleMessage("اسم الشركة"),
    "company_name_optional": MessageLookupByLibrary.simpleMessage(
      "اسم الشركة (اختياري)",
    ),
    "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
    "confirm_credit_payment": MessageLookupByLibrary.simpleMessage(
      "تأكيد الدفع بالرصيد",
    ),
    "confirm_delete": MessageLookupByLibrary.simpleMessage("تأكيد الحذف"),
    "confirm_password": MessageLookupByLibrary.simpleMessage(
      "تأكيد كلمة المرور",
    ),
    "contact_us": MessageLookupByLibrary.simpleMessage("تواصل معنا"),
    "continue_shopping": MessageLookupByLibrary.simpleMessage("متابعة التسوق"),
    "copy_link": MessageLookupByLibrary.simpleMessage("نسخ الرابط"),
    "country": MessageLookupByLibrary.simpleMessage("الدولة"),
    "create_new_address": MessageLookupByLibrary.simpleMessage(
      "إنشاء عنوان جديد",
    ),
    "create_new_address_button": MessageLookupByLibrary.simpleMessage(
      "إنشاء عنوان جديد",
    ),
    "credit": MessageLookupByLibrary.simpleMessage("ذمم"),
    "credit_debit_card": MessageLookupByLibrary.simpleMessage(
      "بطاقة ائتمان/خصم",
    ),
    "credit_debit_card_description": MessageLookupByLibrary.simpleMessage(
      "ادفع بأمان باستخدام بطاقة الائتمان أو الخصم",
    ),
    "credit_description": MessageLookupByLibrary.simpleMessage(
      "ادفع باستخدام الفاتورة بعد الموافقة على طلبك",
    ),
    "credit_payment_confirmation": MessageLookupByLibrary.simpleMessage(
      "ستتم معالجة الدفع بالرصيد. سيتم خصم المبلغ من رصيدك المتاح.",
    ),
    "cvv": MessageLookupByLibrary.simpleMessage("رمز الأمان"),
    "date": MessageLookupByLibrary.simpleMessage("التاريخ"),
    "deals": MessageLookupByLibrary.simpleMessage("العروض"),
    "default_billing_address": MessageLookupByLibrary.simpleMessage(
      "عنوان الفوترة الافتراضي",
    ),
    "default_billing_shipping": MessageLookupByLibrary.simpleMessage(
      "الفوترة والشحن الافتراضية",
    ),
    "default_shipping_address": MessageLookupByLibrary.simpleMessage(
      "عنوان الشحن الافتراضي",
    ),
    "delete": MessageLookupByLibrary.simpleMessage("حذف"),
    "delete_all": MessageLookupByLibrary.simpleMessage("حذف الكل"),
    "delete_selected": MessageLookupByLibrary.simpleMessage("حذف المحدد"),
    "delivered": MessageLookupByLibrary.simpleMessage("تم التسليم"),
    "delivery_date": MessageLookupByLibrary.simpleMessage("تاريخ التسليم"),
    "delivery_fee": MessageLookupByLibrary.simpleMessage("رسوم التوصيل"),
    "discount": MessageLookupByLibrary.simpleMessage("خصم"),
    "do_you_have_account": MessageLookupByLibrary.simpleMessage(
      "هل لديك حساب؟",
    ),
    "dont_have_account": MessageLookupByLibrary.simpleMessage("ليس لديك حساب؟"),
    "edit": MessageLookupByLibrary.simpleMessage("تعديل"),
    "egypt": MessageLookupByLibrary.simpleMessage("مصر"),
    "email": MessageLookupByLibrary.simpleMessage("البريد الإلكتروني"),
    "email_address": MessageLookupByLibrary.simpleMessage(
      "عنوان البريد الإلكتروني",
    ),
    "email_verification_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في التحقق من البريد الإلكتروني.",
    ),
    "email_verified": MessageLookupByLibrary.simpleMessage(
      "تم التحقق من البريد الإلكتروني بنجاح.",
    ),
    "empty_cart": MessageLookupByLibrary.simpleMessage("سلة فارغة"),
    "empty_state": MessageLookupByLibrary.simpleMessage("لا توجد عناصر"),
    "end_at": MessageLookupByLibrary.simpleMessage("ينتهي في"),
    "end_date": MessageLookupByLibrary.simpleMessage("تاريخ الانتهاء"),
    "enter_coupon_code": MessageLookupByLibrary.simpleMessage("أدخل كود الخصم"),
    "enter_otp": MessageLookupByLibrary.simpleMessage("أدخل رمز التحقق"),
    "enter_valid_email": MessageLookupByLibrary.simpleMessage(
      "أدخل عنوان بريد إلكتروني صحيح",
    ),
    "error": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ. يرجى المحاولة مرة أخرى.",
    ),
    "error_loading_cart": MessageLookupByLibrary.simpleMessage(
      "خطأ في تحميل السلة",
    ),
    "failed_to_add_to_cart": MessageLookupByLibrary.simpleMessage(
      "فشل في الإضافة إلى السلة",
    ),
    "faq": MessageLookupByLibrary.simpleMessage("الأسئلة الشائعة"),
    "favorite": MessageLookupByLibrary.simpleMessage("المفضلة"),
    "featured_products": MessageLookupByLibrary.simpleMessage(
      "المنتجات المميزة",
    ),
    "female": MessageLookupByLibrary.simpleMessage("أنثى"),
    "first_name": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
    "forgot_password": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "forgot_password_question": MessageLookupByLibrary.simpleMessage(
      "هل نسيت كلمة المرور؟",
    ),
    "full_address": MessageLookupByLibrary.simpleMessage("العنوان الكامل"),
    "full_address_optional": MessageLookupByLibrary.simpleMessage(
      "العنوان الكامل (اختياري)",
    ),
    "full_name": MessageLookupByLibrary.simpleMessage("الاسم الكامل"),
    "gallery": MessageLookupByLibrary.simpleMessage("المعرض"),
    "get_full_code": MessageLookupByLibrary.simpleMessage(
      "احصل على الكود الكامل",
    ),
    "get_full_template": MessageLookupByLibrary.simpleMessage(
      "احصل على القالب الكامل",
    ),
    "get_started": MessageLookupByLibrary.simpleMessage("ابدأ"),
    "get_the_full_template": MessageLookupByLibrary.simpleMessage(
      "احصل على القالب الكامل",
    ),
    "good_morning": MessageLookupByLibrary.simpleMessage("صباح الخير"),
    "group_type": MessageLookupByLibrary.simpleMessage(
      "المجموعة (جملة، تاجر، تجزئة، مبيعات متنقلة ...)",
    ),
    "group_type_optional": MessageLookupByLibrary.simpleMessage(
      "المجموعة (جملة، تاجر، تجزئة، مبيعات متنقلة ...) - اختياري",
    ),
    "help_support": MessageLookupByLibrary.simpleMessage("المساعدة والدعم"),
    "hips": MessageLookupByLibrary.simpleMessage("الوركين"),
    "home": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "home_nav": MessageLookupByLibrary.simpleMessage("الرئيسية"),
    "individual": MessageLookupByLibrary.simpleMessage("فردي"),
    "install_whatsapp_first": MessageLookupByLibrary.simpleMessage(
      "يرجى تثبيت واتساب أولاً",
    ),
    "invalid_otp": MessageLookupByLibrary.simpleMessage("رمز التحقق غير صحيح"),
    "jod": MessageLookupByLibrary.simpleMessage("دينار"),
    "join_our_world": MessageLookupByLibrary.simpleMessage("انضم إلى عالمنا"),
    "jordan_phone_start_7": MessageLookupByLibrary.simpleMessage(
      "أرقام الهواتف الأردنية يجب أن تبدأ بـ 7",
    ),
    "jordan_phone_validation": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رقم هاتف أردني صحيح (9 أرقام)",
    ),
    "language": MessageLookupByLibrary.simpleMessage("اللغة"),
    "last_name": MessageLookupByLibrary.simpleMessage("الاسم الأخير"),
    "lets_get_started": MessageLookupByLibrary.simpleMessage("لنبدأ!"),
    "lets_start": MessageLookupByLibrary.simpleMessage("لنبدأ"),
    "link_copied": MessageLookupByLibrary.simpleMessage("تم نسخ الرابط"),
    "load_more": MessageLookupByLibrary.simpleMessage("تحميل المزيد"),
    "load_more_cities": MessageLookupByLibrary.simpleMessage(
      "تحميل المزيد من المدن",
    ),
    "load_more_countries": MessageLookupByLibrary.simpleMessage(
      "تحميل المزيد من الدول",
    ),
    "loading": MessageLookupByLibrary.simpleMessage("جارٍ التحميل..."),
    "loading_text": MessageLookupByLibrary.simpleMessage("جارٍ التحميل"),
    "location": MessageLookupByLibrary.simpleMessage("الموقع"),
    "location_services_description": MessageLookupByLibrary.simpleMessage(
      "قم بتشغيل خدمات الموقع في إعدادات جهازك للبحث عن المتاجر حسب الموقع الحالي. يمكنك أيضاً البحث بالدولة/المنطقة أو المدينة أو الرمز البريدي.",
    ),
    "location_services_off": MessageLookupByLibrary.simpleMessage(
      "خدمات الموقع الخاصة بك مغلقة.",
    ),
    "log_in": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "log_in_small": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "log_out": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
    "login_as_visitor": MessageLookupByLibrary.simpleMessage(
      "تسجيل الدخول كزائر",
    ),
    "login_description": MessageLookupByLibrary.simpleMessage(
      "سجل الدخول بالبيانات التي أدخلتها أثناء التسجيل.",
    ),
    "logout": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
    "lost_password_description": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال بياناتك الصحيحة لاستعادة حسابك.",
    ),
    "lost_password_title": MessageLookupByLibrary.simpleMessage(
      "هل فقدت كلمة المرور؟",
    ),
    "male": MessageLookupByLibrary.simpleMessage("ذكر"),
    "mark_all_as_read": MessageLookupByLibrary.simpleMessage(
      "تحديد الكل كمقروء",
    ),
    "mark_all_as_unread": MessageLookupByLibrary.simpleMessage(
      "تحديد الكل كغير مقروء",
    ),
    "mark_as_read": MessageLookupByLibrary.simpleMessage("تحديد كمقروء"),
    "mark_as_unread": MessageLookupByLibrary.simpleMessage("تحديد كغير مقروء"),
    "message": MessageLookupByLibrary.simpleMessage("الرسالة"),
    "min_amount": MessageLookupByLibrary.simpleMessage("الحد الأدنى للمبلغ"),
    "min_items": m4,
    "more": MessageLookupByLibrary.simpleMessage("المزيد"),
    "must_have_address_to_checkout": MessageLookupByLibrary.simpleMessage(
      "يجب أن يكون لديك عنوان لإتمام عملية الدفع. يرجى إنشاء عنوان أولاً.",
    ),
    "mustafa": MessageLookupByLibrary.simpleMessage("مصطفى"),
    "my_addresses": MessageLookupByLibrary.simpleMessage("عناويني"),
    "my_files": MessageLookupByLibrary.simpleMessage("ملفاتي"),
    "my_orders": MessageLookupByLibrary.simpleMessage("طلباتي"),
    "my_profile": MessageLookupByLibrary.simpleMessage("ملفي الشخصي"),
    "name": MessageLookupByLibrary.simpleMessage("الاسم"),
    "national_id": MessageLookupByLibrary.simpleMessage("الهوية الوطنية"),
    "new_orders": MessageLookupByLibrary.simpleMessage("طلبات جديدة"),
    "new_password": MessageLookupByLibrary.simpleMessage("كلمة المرور الجديدة"),
    "next": MessageLookupByLibrary.simpleMessage("التالي"),
    "no": MessageLookupByLibrary.simpleMessage("لا"),
    "no_notifications": MessageLookupByLibrary.simpleMessage(
      "لا توجد إشعارات متاحة.",
    ),
    "no_payment_methods_available": MessageLookupByLibrary.simpleMessage(
      "لا توجد طرق دفع متاحة!!",
    ),
    "no_product_found": MessageLookupByLibrary.simpleMessage(
      "عذرًا، لم يتم العثور على منتج!!",
    ),
    "no_results": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على نتائج.",
    ),
    "no_shipping_methods": MessageLookupByLibrary.simpleMessage(
      "لا توجد طرق شحن متاحة!!",
    ),
    "no_shipping_methods_available": MessageLookupByLibrary.simpleMessage(
      "لا توجد طرق شحن متاحة!!",
    ),
    "not_found_route": MessageLookupByLibrary.simpleMessage("المسار غير موجود"),
    "notification": MessageLookupByLibrary.simpleMessage("إشعار"),
    "notification_settings": MessageLookupByLibrary.simpleMessage(
      "إعدادات الإشعارات",
    ),
    "notification_settings_description": MessageLookupByLibrary.simpleMessage(
      "إدارة تفضيلات الإشعارات الخاصة بك.",
    ),
    "notification_settings_email": MessageLookupByLibrary.simpleMessage(
      "إشعارات البريد الإلكتروني",
    ),
    "notification_settings_email_description":
        MessageLookupByLibrary.simpleMessage(
          "تلقي الإشعارات عبر البريد الإلكتروني.",
        ),
    "notification_settings_email_disabled":
        MessageLookupByLibrary.simpleMessage(
          "تم تعطيل إشعارات البريد الإلكتروني.",
        ),
    "notification_settings_email_enabled": MessageLookupByLibrary.simpleMessage(
      "تم تفعيل إشعارات البريد الإلكتروني.",
    ),
    "notification_settings_in_app": MessageLookupByLibrary.simpleMessage(
      "إشعارات التطبيق",
    ),
    "notification_settings_in_app_description":
        MessageLookupByLibrary.simpleMessage("تلقي الإشعارات داخل التطبيق."),
    "notification_settings_push": MessageLookupByLibrary.simpleMessage(
      "إشعارات الدفع",
    ),
    "notification_settings_push_description":
        MessageLookupByLibrary.simpleMessage("تلقي الإشعارات على جهازك."),
    "notification_settings_push_disabled": MessageLookupByLibrary.simpleMessage(
      "تم تعطيل إشعارات الدفع.",
    ),
    "notification_settings_push_enabled": MessageLookupByLibrary.simpleMessage(
      "تم تفعيل إشعارات الدفع.",
    ),
    "notification_settings_sms": MessageLookupByLibrary.simpleMessage(
      "إشعارات الرسائل النصية",
    ),
    "notification_settings_sms_description":
        MessageLookupByLibrary.simpleMessage(
          "تلقي الإشعارات عبر الرسائل النصية.",
        ),
    "notification_settings_sms_disabled": MessageLookupByLibrary.simpleMessage(
      "تم تعطيل إشعارات الرسائل النصية.",
    ),
    "notification_settings_sms_enabled": MessageLookupByLibrary.simpleMessage(
      "تم تفعيل إشعارات الرسائل النصية.",
    ),
    "notification_settings_update_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في تحديث إعدادات الإشعارات.",
    ),
    "notification_settings_updated": MessageLookupByLibrary.simpleMessage(
      "تم تحديث إعدادات الإشعارات بنجاح.",
    ),
    "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
    "office": MessageLookupByLibrary.simpleMessage("المكتب"),
    "old_password": MessageLookupByLibrary.simpleMessage("كلمة المرور القديمة"),
    "or": MessageLookupByLibrary.simpleMessage("أو"),
    "order": MessageLookupByLibrary.simpleMessage("الطلب"),
    "ordered": MessageLookupByLibrary.simpleMessage("تم الطلب"),
    "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
    "other": MessageLookupByLibrary.simpleMessage("أخرى"),
    "otp_sent_to_phone": m5,
    "otp_verified_successfully": MessageLookupByLibrary.simpleMessage(
      "تم التحقق من رمز التحقق بنجاح! يمكنك الآن تسجيل الدخول.",
    ),
    "packed": MessageLookupByLibrary.simpleMessage("تم التعبئة"),
    "passport": MessageLookupByLibrary.simpleMessage("جواز السفر"),
    "password": MessageLookupByLibrary.simpleMessage("كلمة المرور"),
    "password_change_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في تغيير كلمة المرور.",
    ),
    "password_changed": MessageLookupByLibrary.simpleMessage(
      "تم تغيير كلمة المرور بنجاح.",
    ),
    "password_no_match": MessageLookupByLibrary.simpleMessage(
      "كلمة المرور غير متطابقة",
    ),
    "password_reset": MessageLookupByLibrary.simpleMessage(
      "تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني.",
    ),
    "password_reset_email_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في إرسال بريد إعادة تعيين كلمة المرور.",
    ),
    "password_reset_email_sent": MessageLookupByLibrary.simpleMessage(
      "تم إرسال بريد إعادة تعيين كلمة المرور.",
    ),
    "password_reset_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في إرسال رابط إعادة تعيين كلمة المرور.",
    ),
    "password_reset_link_expired": MessageLookupByLibrary.simpleMessage(
      "انتهت صلاحية رابط إعادة تعيين كلمة المرور.",
    ),
    "password_reset_link_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في إرسال رابط إعادة تعيين كلمة المرور.",
    ),
    "password_reset_link_invalid": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور غير صالح أو منتهي الصلاحية.",
    ),
    "password_reset_link_invalid_agent": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على وكيل مستخدم غير صالح.",
    ),
    "password_reset_link_invalid_code": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على رمز غير صالح.",
    ),
    "password_reset_link_invalid_email": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على بريد إلكتروني غير صالح.",
    ),
    "password_reset_link_invalid_ip": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على عنوان IP غير صالح.",
    ),
    "password_reset_link_invalid_method": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على طريقة غير صالحة.",
    ),
    "password_reset_link_invalid_request": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على طلب غير صالح.",
    ),
    "password_reset_link_invalid_token": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على رمز غير صالح.",
    ),
    "password_reset_link_invalid_url": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على عنوان URL غير صالح.",
    ),
    "password_reset_link_invalid_user": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور يحتوي على مستخدم غير صالح.",
    ),
    "password_reset_link_not_found": MessageLookupByLibrary.simpleMessage(
      "لم يتم العثور على رابط إعادة تعيين كلمة المرور.",
    ),
    "password_reset_link_sent": MessageLookupByLibrary.simpleMessage(
      "تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني.",
    ),
    "password_reset_link_successful": MessageLookupByLibrary.simpleMessage(
      "رابط إعادة تعيين كلمة المرور صالح.",
    ),
    "password_reset_link_unsuccessful": MessageLookupByLibrary.simpleMessage(
      "فشل في التحقق من رابط إعادة تعيين كلمة المرور.",
    ),
    "password_reset_link_used": MessageLookupByLibrary.simpleMessage(
      "تم استخدام رابط إعادة تعيين كلمة المرور بالفعل.",
    ),
    "password_reset_success": MessageLookupByLibrary.simpleMessage(
      "تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني.",
    ),
    "password_reset_successful": MessageLookupByLibrary.simpleMessage(
      "تمت إعادة تعيين كلمة المرور بنجاح.",
    ),
    "password_reset_unsuccessful": MessageLookupByLibrary.simpleMessage(
      "فشل في إعادة تعيين كلمة المرور. يرجى المحاولة مرة أخرى.",
    ),
    "passwords_match": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور متطابقة",
    ),
    "passwords_no_match": MessageLookupByLibrary.simpleMessage(
      "كلمات المرور غير متطابقة",
    ),
    "payment": MessageLookupByLibrary.simpleMessage("الدفع"),
    "payment_confirmation": MessageLookupByLibrary.simpleMessage("تأكيد الدفع"),
    "payment_method": MessageLookupByLibrary.simpleMessage("طريقة الدفع"),
    "payment_redirect_message": MessageLookupByLibrary.simpleMessage(
      "سيتم توجيهك إلى PayTabs لإكمال الدفع. إذا ألغيت الدفع، سيتم إنشاء طلبك ويمكنك الدفع لاحقاً.",
    ),
    "payment_summary": MessageLookupByLibrary.simpleMessage("ملخص الدفع"),
    "phone": MessageLookupByLibrary.simpleMessage("الهاتف"),
    "phone_number": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
    "phone_number_not_provided": MessageLookupByLibrary.simpleMessage(
      "رقم الهاتف غير متوفر. يرجى المحاولة مرة أخرى.",
    ),
    "phone_number_optional": MessageLookupByLibrary.simpleMessage(
      "رقم الهاتف (اختياري)",
    ),
    "place_order": MessageLookupByLibrary.simpleMessage("تأكيد الطلب"),
    "please_select_city": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار مدينة",
    ),
    "please_select_country": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار دولة",
    ),
    "please_select_country_first": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار دولة أولاً",
    ),
    "please_select_delivery_date": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار تاريخ التسليم",
    ),
    "please_select_payment_method": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار طريقة الدفع",
    ),
    "please_select_shipping_method": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار طريقة الشحن",
    ),
    "please_select_variation": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار تنويع",
    ),
    "pormotions": MessageLookupByLibrary.simpleMessage("العروض"),
    "postal_code": MessageLookupByLibrary.simpleMessage("الرمز البريدي"),
    "postal_code_optional": MessageLookupByLibrary.simpleMessage(
      "الرمز البريدي (اختياري)",
    ),
    "prestige": MessageLookupByLibrary.simpleMessage("PRESTIGE"),
    "prestige_brand": MessageLookupByLibrary.simpleMessage("PRESTIGE"),
    "previous": MessageLookupByLibrary.simpleMessage("السابق"),
    "price": MessageLookupByLibrary.simpleMessage("السعر"),
    "privacy_policy": MessageLookupByLibrary.simpleMessage("سياسة الخصوصية"),
    "privacy_policy_title": MessageLookupByLibrary.simpleMessage(
      "سياسة الخصوصية",
    ),
    "proceed_to_payment": MessageLookupByLibrary.simpleMessage(
      "المتابعة للدفع",
    ),
    "processing": MessageLookupByLibrary.simpleMessage("قيد المعالجة"),
    "product_added_to_cart": MessageLookupByLibrary.simpleMessage(
      "تم إضافة المنتج إلى السلة",
    ),
    "product_details": MessageLookupByLibrary.simpleMessage("تفاصيل المنتج"),
    "product_info": MessageLookupByLibrary.simpleMessage("معلومات المنتج"),
    "products": MessageLookupByLibrary.simpleMessage("المنتجات"),
    "profile": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
    "profile_nav": MessageLookupByLibrary.simpleMessage("الملف الشخصي"),
    "profile_update_failed": MessageLookupByLibrary.simpleMessage(
      "فشل في تحديث الملف الشخصي.",
    ),
    "profile_updated": MessageLookupByLibrary.simpleMessage(
      "تم تحديث الملف الشخصي بنجاح.",
    ),
    "promotion_description": MessageLookupByLibrary.simpleMessage("وصف العرض"),
    "promotion_title": MessageLookupByLibrary.simpleMessage("عنوان العرض"),
    "promotions": MessageLookupByLibrary.simpleMessage("العروض"),
    "promotions_nav": MessageLookupByLibrary.simpleMessage("العروض"),
    "quantity": MessageLookupByLibrary.simpleMessage("الكمية"),
    "rate_app": MessageLookupByLibrary.simpleMessage("قيم التطبيق"),
    "rates": MessageLookupByLibrary.simpleMessage("التقييمات"),
    "register": MessageLookupByLibrary.simpleMessage("تسجيل"),
    "remove": MessageLookupByLibrary.simpleMessage("إزالة"),
    "remove_account_confirmation": MessageLookupByLibrary.simpleMessage(
      "هل أنت متأكد من أنك تريد حذف حسابك؟",
    ),
    "required": MessageLookupByLibrary.simpleMessage("مطلوب"),
    "reset_password": MessageLookupByLibrary.simpleMessage(
      "إعادة تعيين كلمة المرور",
    ),
    "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
    "return1": MessageLookupByLibrary.simpleMessage("إرجاع"),
    "return_to": MessageLookupByLibrary.simpleMessage("إرجاع"),
    "return_to_login": MessageLookupByLibrary.simpleMessage("العودة إلى"),
    "returns": MessageLookupByLibrary.simpleMessage("الإرجاع"),
    "returns_description": MessageLookupByLibrary.simpleMessage(
      "إرجاع وتبديل مجاني مدفوع مسبقاً للطلبات المشحونة إلى الولايات المتحدة. احصل على استرداد أسرع مع الإرجاع السهل عبر الإنترنت واطبع ملصق الإرجاع الذكي مجاناً! أرجع أو استبدل أي بضائع غير مستخدمة أو معيبة عبر البريد أو في أحد مواقع متاجرنا في الولايات المتحدة أو كندا. لا يمكن إلغاء أو تبديل أو إرجاع العناصر المصنوعة حسب الطلب.",
    ),
    "review_the_products": MessageLookupByLibrary.simpleMessage(
      "مراجعة المنتجات",
    ),
    "review_your_order": MessageLookupByLibrary.simpleMessage("مراجعة طلبك"),
    "reviews": MessageLookupByLibrary.simpleMessage("التقييمات"),
    "save": MessageLookupByLibrary.simpleMessage("حفظ"),
    "search": MessageLookupByLibrary.simpleMessage("بحث"),
    "select": MessageLookupByLibrary.simpleMessage("إختر"),
    "select_action": MessageLookupByLibrary.simpleMessage("اختر العملية"),
    "select_address_option": MessageLookupByLibrary.simpleMessage(
      "يرجى اختيار خيار عنوان واحد على الأقل",
    ),
    "select_all": MessageLookupByLibrary.simpleMessage("تحديد الكل"),
    "select_city": MessageLookupByLibrary.simpleMessage("اختر المدينة"),
    "select_city_optional": MessageLookupByLibrary.simpleMessage(
      "اختر المدينة (اختياري)",
    ),
    "select_country": MessageLookupByLibrary.simpleMessage("اختر الدولة"),
    "select_country_optional": MessageLookupByLibrary.simpleMessage(
      "اختر الدولة (اختياري)",
    ),
    "select_image_source": MessageLookupByLibrary.simpleMessage(
      "اختر مصدر الصورة",
    ),
    "select_invert": MessageLookupByLibrary.simpleMessage("عكس التحديد"),
    "select_items": MessageLookupByLibrary.simpleMessage("تحديد العناصر"),
    "select_none": MessageLookupByLibrary.simpleMessage("إلغاء تحديد الكل"),
    "selected_items": MessageLookupByLibrary.simpleMessage("العناصر المحددة"),
    "send": MessageLookupByLibrary.simpleMessage("إرسال"),
    "send_reset_link": MessageLookupByLibrary.simpleMessage(
      "إرسال رابط إعادة التعيين",
    ),
    "services": MessageLookupByLibrary.simpleMessage("الخدمات"),
    "settings": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "settings_button": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "settings_label": MessageLookupByLibrary.simpleMessage("الإعدادات"),
    "shipped": MessageLookupByLibrary.simpleMessage("تم الشحن"),
    "shipping_address": MessageLookupByLibrary.simpleMessage("عنوان الشحن"),
    "shipping_information": MessageLookupByLibrary.simpleMessage(
      "معلومات الشحن",
    ),
    "shipping_methods": MessageLookupByLibrary.simpleMessage("طرق الشحن"),
    "shop_nav": MessageLookupByLibrary.simpleMessage("المتجر"),
    "shop_now": MessageLookupByLibrary.simpleMessage("تسوق الآن"),
    "sign_up": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "signup": MessageLookupByLibrary.simpleMessage("إنشاء حساب"),
    "signup_description": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال بياناتك الصحيحة لإنشاء حساب.",
    ),
    "size": MessageLookupByLibrary.simpleMessage("المقاس"),
    "size_l": MessageLookupByLibrary.simpleMessage("كبير"),
    "size_m": MessageLookupByLibrary.simpleMessage("متوسط"),
    "size_s": MessageLookupByLibrary.simpleMessage("صغير"),
    "size_xl": MessageLookupByLibrary.simpleMessage("كبير جداً"),
    "state": MessageLookupByLibrary.simpleMessage("الولاية"),
    "status": MessageLookupByLibrary.simpleMessage("الحالة"),
    "sub_total": MessageLookupByLibrary.simpleMessage("المجموع الفرعي"),
    "subject": MessageLookupByLibrary.simpleMessage("الموضوع"),
    "submit": MessageLookupByLibrary.simpleMessage("إرسال"),
    "terms_and_conditions": MessageLookupByLibrary.simpleMessage(
      "الشروط والأحكام",
    ),
    "the_cancelled": MessageLookupByLibrary.simpleMessage("الملغية"),
    "the_completed": MessageLookupByLibrary.simpleMessage("المكتملة"),
    "time": MessageLookupByLibrary.simpleMessage("الوقت"),
    "total": MessageLookupByLibrary.simpleMessage("المجموع"),
    "total_price": MessageLookupByLibrary.simpleMessage("السعر الإجمالي"),
    "unable_to_process": MessageLookupByLibrary.simpleMessage(
      "غير قادر على معالجة البيانات",
    ),
    "unavailable": MessageLookupByLibrary.simpleMessage("غير متاح"),
    "unexpected_error": MessageLookupByLibrary.simpleMessage(
      "حدث خطأ غير متوقع",
    ),
    "unit_bag": MessageLookupByLibrary.simpleMessage("شوال"),
    "unit_piece": MessageLookupByLibrary.simpleMessage("حبه"),
    "unit_price": MessageLookupByLibrary.simpleMessage("سعر الوحدة"),
    "unselect": MessageLookupByLibrary.simpleMessage("إلغاء التحديد"),
    "update": MessageLookupByLibrary.simpleMessage("تحديث"),
    "update_address": MessageLookupByLibrary.simpleMessage("تعديل العنوان"),
    "upload_commercial_register": MessageLookupByLibrary.simpleMessage(
      "ارفع سجلك التجاري هنا",
    ),
    "upload_official_paper": MessageLookupByLibrary.simpleMessage(
      "ارفع ورقتك الرسمية هنا",
    ),
    "username": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
    "variations": MessageLookupByLibrary.simpleMessage("التنويعات"),
    "vat_number": MessageLookupByLibrary.simpleMessage(
      "رقم ضريبة القيمة المضافة",
    ),
    "vat_number_optional": MessageLookupByLibrary.simpleMessage(
      "رقم ضريبة القيمة المضافة (اختياري)",
    ),
    "verify_account": MessageLookupByLibrary.simpleMessage("تحقق من الحساب"),
    "verify_account_description": MessageLookupByLibrary.simpleMessage(
      "يرجى إدخال رمز التحقق المرسل إلى رقم هاتفك للتحقق من حسابك.",
    ),
    "video": MessageLookupByLibrary.simpleMessage("فيديو"),
    "view_all": MessageLookupByLibrary.simpleMessage("عرض الكل"),
    "waist": MessageLookupByLibrary.simpleMessage("الخصر"),
    "wallet": MessageLookupByLibrary.simpleMessage("المحفظة"),
    "want_to_change_password": MessageLookupByLibrary.simpleMessage(
      "هل تريد تغيير كلمة المرور؟",
    ),
    "welcome": MessageLookupByLibrary.simpleMessage("مرحبًا بك في تطبيقنا!"),
    "welcome_back": MessageLookupByLibrary.simpleMessage("مرحباً بعودتك!"),
    "welcome_to_app": MessageLookupByLibrary.simpleMessage(
      "مرحباً بك في تطبيقنا",
    ),
    "whatsapp_not_installed": MessageLookupByLibrary.simpleMessage(
      "واتساب غير مثبت",
    ),
    "yes": MessageLookupByLibrary.simpleMessage("نعم"),
    "you_may_also_like": MessageLookupByLibrary.simpleMessage("قد يعجبك أيضًا"),
    "your_cart_is_empty": MessageLookupByLibrary.simpleMessage("سلتك فارغة"),
    "zip": MessageLookupByLibrary.simpleMessage("الرمز البريدي"),
  };
}
