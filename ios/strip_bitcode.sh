#!/bin/bash

# Script to strip bitcode from PayTabs SDK framework
# This resolves the "Invalid executable contains bitcode" error during App Store submission

echo "🔧 Starting bitcode stripping process for PayTabs SDK..."

# Find PayTabs framework in Pods
PAYTABS_FRAMEWORK_PATH="$PODS_ROOT/PayTabsSDK/PaymentSDK.xcframework"

if [ ! -d "$PAYTABS_FRAMEWORK_PATH" ]; then
    echo "❌ PayTabs framework not found at $PAYTABS_FRAMEWORK_PATH"
    exit 1
fi

echo "📍 Found PayTabs framework at: $PAYTABS_FRAMEWORK_PATH"

# Function to strip bitcode from a binary
strip_bitcode_from_binary() {
    local binary_path="$1"
    if [ -f "$binary_path" ]; then
        echo "🔧 Processing: $binary_path"

        # Check if binary contains bitcode
        if otool -l "$binary_path" 2>/dev/null | grep -q "__LLVM"; then
            echo "📝 Found bitcode in $binary_path, stripping..."

            # Create temporary file for stripped binary
            local temp_file="${binary_path}.tmp"

            # Strip bitcode using xcrun
            if xcrun bitcode_strip -r "$binary_path" -o "$temp_file" 2>/dev/null; then
                # Replace original with stripped version
                mv "$temp_file" "$binary_path"
                echo "✅ Successfully stripped bitcode from $(basename "$binary_path")"
            else
                echo "⚠️  Failed to strip bitcode from $(basename "$binary_path")"
                rm -f "$temp_file"
            fi
        else
            echo "ℹ️  No bitcode found in $(basename "$binary_path")"
        fi
    fi
}

# Find all PaymentSDK binaries in the framework
find "$PAYTABS_FRAMEWORK_PATH" -name "PaymentSDK" -type f | while read -r binary_file; do
    strip_bitcode_from_binary "$binary_file"
done

# Also check for any other binary files that might contain bitcode
find "$PAYTABS_FRAMEWORK_PATH" -type f \( -name "*.dylib" -o -name "*.a" \) | while read -r binary_file; do
    if file "$binary_file" 2>/dev/null | grep -q "Mach-O"; then
        strip_bitcode_from_binary "$binary_file"
    fi
done

echo "🎉 Bitcode stripping process completed!"
echo "📋 You can now archive and upload your app to the App Store."
