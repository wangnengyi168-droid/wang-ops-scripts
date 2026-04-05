#!/bin/bash

echo "🚀 快速连接到 192.168.1.7"
echo "========================"
echo ""
echo "认证信息:"
echo "用户名: administrator"
echo "密码: Yn123456!"
echo "目标: 192.168.1.7"
echo ""

echo "🔍 检查连接状态..."
ping -c 1 192.168.1.7 > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "✅ 网络可达: 192.168.1.7"
else
    echo "❌ 网络不可达，请检查网络连接"
    exit 1
fi

echo ""
echo "🎯 连接方法选择:"
echo ""
echo "1. 使用Remmina图形界面连接"
echo "2. 命令行直接连接"
echo "3. 创建桌面快捷方式"
echo ""

read -p "请选择 (1-3): " choice

case $choice in
    1)
        echo "启动Remmina图形界面..."
        remmina -c ~/.local/share/remmina/192.168.1.7_admin.remmina &
        ;;
    2)
        echo "命令行连接..."
        remmina -c "rdp://administrator:Yn123456!@192.168.1.7"
        ;;
    3)
        echo "创建桌面快捷方式..."
        cat > ~/桌面/连接到192.168.1.7.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=连接到192.168.1.7
Comment=远程桌面连接到192.168.1.7
Exec=remmina -c ~/.local/share/remmina/192.168.1.7_admin.remmina
Icon=network-wired
Terminal=false
Categories=Network;RemoteAccess;
EOF
        chmod +x ~/桌面/连接到192.168.1.7.desktop
        echo "✅ 桌面快捷方式已创建"
        ;;
    *)
        echo "使用默认连接方式..."
        remmina -c ~/.local/share/remmina/192.168.1.7_admin.remmina &
        ;;
esac

echo ""
echo "💡 连接提示:"
echo "- 第一次连接可能需要接受安全证书"
echo "- 如果连接失败，请检查Windows远程桌面设置"
echo "- 支持多显示器、文件传输等功能"
echo ""
echo "🐾 技术支持: 总管"
echo "连接时间: $(date)"