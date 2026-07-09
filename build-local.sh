#!/bin/bash

echo "🚀 开始构建并启动本地环境..."
echo "----------------------------------------"

docker compose -f docker-compose.local.yml up -d --build

if [ $? -eq 0 ]; then
    echo "----------------------------------------"
    echo "✅ 构建完成！"
    echo "📡 服务运行在: http://localhost:3006"
    echo ""
    echo "查看日志: docker compose -f docker-compose.local.yml logs -f"
    echo "停止服务: docker compose -f docker-compose.local.yml down"
else
    echo "❌ 构建失败，请检查错误信息"
    exit 1
fi
