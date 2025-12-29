#!/bin/bash

# Script để cập nhật data với phiên bản mới nhất của Ant Design
# Sử dụng: ./scripts/update-latest.sh

set -e

PROJECT_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ANT_DESIGN_DIR="$PROJECT_ROOT/ant-design"
DATA_DIR="$PROJECT_ROOT/data"
VERSION_FILE="$PROJECT_ROOT/version-info.json"

echo "🚀 Bắt đầu cập nhật data từ phiên bản mới nhất của Ant Design..."

# Bước 1: Tải Ant Design repo
if [ -d "$ANT_DESIGN_DIR" ]; then
  echo "📂 Thư mục ant-design đã tồn tại, đang xóa..."
  rm -rf "$ANT_DESIGN_DIR"
fi

echo "📥 Đang clone Ant Design repository..."
git clone https://github.com/ant-design/ant-design.git "$ANT_DESIGN_DIR"

# Bước 2: Kiểm tra phiên bản đã tải về
echo "🔍 Đang kiểm tra phiên bản Ant Design..."
cd "$ANT_DESIGN_DIR"

# Lấy phiên bản từ CHANGELOG (dòng đầu tiên có format: ## x.x.x)
ANTD_VERSION=$(head -n 80 CHANGELOG.en-US.md | grep -E "^## [0-9]+\.[0-9]+\.[0-9]+" | head -n 1 | sed 's/## //' | xargs)

if [ -z "$ANTD_VERSION" ]; then
  echo "⚠️  Không thể xác định phiên bản từ CHANGELOG, đang lấy từ package.json..."
  ANTD_VERSION=$(node -p "require('./package.json').version")
fi

echo "✅ Phiên bản Ant Design: $ANTD_VERSION"

# Lấy commit hash và ngày hiện tại
COMMIT_HASH=$(git rev-parse --short HEAD)
CURRENT_DATE=$(date +%Y-%m-%d)

cd "$PROJECT_ROOT"

# Bước 3: Xóa data cũ
if [ -d "$DATA_DIR" ]; then
  echo "🗑️  Đang xóa data cũ..."
  rm -rf "$DATA_DIR"
fi

# Bước 4: Tạo data mới
echo "📝 Đang extract docs..."
npm run extract

# Bước 5: Test data
echo "🧪 Đang chạy tests..."
npm test

# Bước 6: Lưu thông tin phiên bản
echo "💾 Đang lưu thông tin phiên bản..."
cat > "$VERSION_FILE" <<EOF
{
  "lastUpdated": "$CURRENT_DATE",
  "antDesignVersion": "$ANTD_VERSION",
  "dataVersion": "$ANTD_VERSION",
  "sourceCommit": "$COMMIT_HASH",
  "mode": "latest",
  "notes": "Updated to latest Ant Design version"
}
EOF

echo "✨ Hoàn thành!"
echo ""
echo "📊 Thông tin phiên bản:"
cat "$VERSION_FILE"
echo ""
echo "💡 Bạn có thể xóa thư mục ant-design để tiết kiệm dung lượng:"
echo "   rm -rf ./ant-design"
