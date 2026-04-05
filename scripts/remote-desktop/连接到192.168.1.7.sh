#!/bin/bash

echo "🚀 连接到 192.168.1.7"
echo "===================="
echo ""
echo "目标: 192.168.1.7"
echo "协议: RDP (Windows 远程桌面)"
echo "工具: Remmina"
echo ""

# 检查目标是否可达
echo "🔍 检查网络连接..."
ping -c 2 192.168.1.7 > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "✅ 目标可达: 192.168.1.7"
else
    echo "⚠️  目标不可达，请检查网络"
    echo "尝试继续连接..."
fi

echo ""
echo "📋 连接信息:"
echo "服务器: 192.168.1.7"
echo "用户名: (需要输入)"
echo "密码: (需要输入)"
echo "域: (可选)"
echo ""

echo "🎯 连接方法:"

echo ""
echo "方法1: 使用Remmina图形界面"
echo "----------------------------------------"
echo "1. 打开Remmina: remmina &"
echo "2. 点击 '+' 新建连接"
echo "3. 设置:"
echo "   - 协议: RDP"
echo "   - 服务器: 192.168.1.7"
echo "   - 用户名: 输入用户名"
echo "   - 密码: 输入密码"
echo "4. 点击 '保存并连接'"

echo ""
echo "方法2: 命令行快速连接"
echo "----------------------------------------"
echo "remmina -c rdp://192.168.1.7"
echo ""
echo "或使用完整命令:"
echo "remmina -c \"rdp://username@192.168.1.7\""

echo ""
echo "方法3: 创建配置文件"
echo "----------------------------------------"
echo "创建 ~/.local/share/remmina/192.168.1.7.remmina:"
cat > /tmp/192.168.1.7.remmina << EOF
[remmina]
name=192.168.1.7
server=192.168.1.7
protocol=RDP
username=
password=
domain=
security=
gateway_hostname=
gateway_username=
gateway_password=
gateway_domain=
clientname=
quality=0
disableautoreconnect=0
EOF
echo "配置文件已创建: /tmp/192.168.1.7.remmina"

echo ""
echo "🔧 故障排除:"

echo ""
echo "1. 如果连接失败，检查:"
echo "   - 目标机器是否开启远程桌面"
echo "   - 防火墙是否允许3389端口"
echo "   - 用户名密码是否正确"
echo "   - 网络是否通畅"

echo ""
echo "2. Windows远程桌面设置:"
echo "   - 开启远程桌面: 设置 → 系统 → 远程桌面 → 启用"
echo "   - 防火墙: 允许远程桌面通过防火墙"
echo "   - 用户权限: 添加远程桌面用户"

echo ""
echo "3. 常用命令:"
echo "   # 测试端口"
echo "   nc -zv 192.168.1.7 3389"
echo ""
echo "   # 扫描服务"
echo "   nmap -p 3389 192.168.1.7"
echo ""
echo "   # 查看路由"
echo "   traceroute 192.168.1.7"

echo ""
echo "🚀 立即连接:"
echo "remmina &"
echo ""
echo "或者直接运行:"
echo "remmina -c rdp://192.168.1.7"

echo ""
echo "💡 提示:"
echo "- 第一次连接可能需要接受证书"
echo "- 可以保存密码方便下次连接"
echo "- 支持多显示器、声音重定向等功能"
echo "- 可以调整显示质量和性能设置"

echo ""
echo "🐾 技术支持: 总管"
echo "开始时间: $(date)"