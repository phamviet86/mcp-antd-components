#!/bin/bash

# Script để chuyển phiên bản Ant Design và cập nhật data
# Sử dụng: ./scripts/switch-version.sh <version>
# Ví dụ: ./scripts/switch-version.sh 5.29.3

set -e

if [ -z "$1" ]; then
  echo "❌ Vui lòng cung cấp phiên bản Ant Design"
  echo "Sử dụng: $0 <version>"
  echo "Ví dụ: $0 5.29.3"
  exit 1
fi

TARGET_VERSION="$1"
PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ANT_DESIGN_DIR="$PROJECT_ROOT/ant-design"
DATA_DIR="$PROJECT_ROOT/data"
VERSION_FILE="$PROJECT_ROOT/version-info.json"

echo "🚀 Bắt đầu chuyển sang phiên bản Ant Design $TARGET_VERSION..."

# Bước 1: Clone hoặc reuse ant-design repo
if [ ! -d "$ANT_DESIGN_DIR" ]; then
  echo "📥 Thư mục ant-design chưa tồn tại, đang clone..."
  git clone https://github.com/ant-design/ant-design.git "$ANT_DESIGN_DIR"
else
  echo "📂 Thư mục ant-design đã tồn tại, đang sử dụng lại..."
fi

cd "$ANT_DESIGN_DIR"

# Fetch để đảm bảo có tất cả tags
echo "🔄 Đang fetch tags..."
git fetch --all --tags

# Lấy phiên bản hiện tại trước khi checkout
CURRENT_ANTD_VERSION=$(head -n 80 CHANGELOG.en-US.md | grep -E "^## [0-9]+\.[0-9]+\.[0-9]+" | head -n 1 | sed 's/## //' | xargs || echo "unknown")
echo "📌 Phiên bản hiện tại của Ant Design: $CURRENT_ANTD_VERSION"

# Bước 2: Checkout phiên bản được chỉ định
echo "🔀 Đang checkout phiên bản $TARGET_VERSION..."
if ! git checkout "tags/$TARGET_VERSION" 2>/dev/null; then
  echo "⚠️  Không tìm thấy tag $TARGET_VERSION, thử checkout như một branch..."
  if ! git checkout "$TARGET_VERSION" 2>/dev/null; then
    echo "❌ Không thể checkout phiên bản $TARGET_VERSION"
    echo "Các phiên bản có sẵn (10 tags gần nhất):"
    git tag --sort=-version:refname | head -n 10
    exit 1
  fi
fi

# Bước 3: Xác nhận phiên bản đã checkout
echo "🔍 Đang xác nhận phiên bản sau khi checkout..."
CHECKED_OUT_VERSION=$(head -n 80 CHANGELOG.en-US.md | grep -E "^## [0-9]+\.[0-9]+\.[0-9]+" | head -n 1 | sed 's/## //' | xargs)

if [ -z "$CHECKED_OUT_VERSION" ]; then
  echo "⚠️  Không thể xác định phiên bản từ CHANGELOG, đang lấy từ package.json..."
  CHECKED_OUT_VERSION=$(node -p "require('./package.json').version")
fi

echo "✅ Phiên bản đã checkout: $CHECKED_OUT_VERSION"

# Lấy commit hash và ngày hiện tại
COMMIT_HASH=$(git rev-parse --short HEAD)
CURRENT_DATE=$(date +%Y-%m-%d)

cd "$PROJECT_ROOT"

# Bước 4: Xóa data cũ
if [ -d "$DATA_DIR" ]; then
  echo "🗑️  Đang xóa data cũ..."
  rm -rf "$DATA_DIR"
fi

# Bước 5: Tạo data mới
echo "📝 Đang extract docs từ phiên bản $CHECKED_OUT_VERSION..."
npm run extract

# Bước 6: Test data
echo "🧪 Đang chạy tests..."
npm test

# Bước 7: Lưu thông tin phiên bản
echo "💾 Đang lưu thông tin phiên bản..."
cat > "$VERSION_FILE" <<EOF
{
  "lastUpdated": "$CURRENT_DATE",
  "antDesignVersion": "$CURRENT_ANTD_VERSION",
  "checkedOutVersion": "$CHECKED_OUT_VERSION",
  "dataVersion": "$CHECKED_OUT_VERSION",
  "sourceCommit": "$COMMIT_HASH",
  "mode": "specific-version",
  "targetVersion": "$TARGET_VERSION",
  "notes": "Switched to Ant Design version $TARGET_VERSION"
}
EOF

echo "✨ Hoàn thành!"
echo ""
echo "📊 Thông tin phiên bản:"
cat "$VERSION_FILE"
echo ""
echo "💡 Bạn có thể:"
echo "   - Giữ thư mục ant-design để chuyển phiên bản khác sau này"
echo "   - Xóa thư mục ant-design để tiết kiệm dung lượng: rm -rf ./ant-design"
