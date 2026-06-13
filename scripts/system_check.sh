#!/bin/bash
# 系统状态快速检查
echo "=== 系统状态 ==="
echo "主机名: $(hostname)"
echo "系统: $(uname -s -r)"
echo "运行时间: $(uptime -p)"
echo ""
echo "=== 内存 ==="
free -h | head -2
echo ""
echo "=== 磁盘 ==="
df -h / | tail -1
echo ""
echo "=== 网络 ==="
ip -4 addr show | grep inet | grep -v 127.0.0.1 | head -3
echo ""
echo "=== Docker ==="
docker ps --format "table {{.Names}}\t{{.Status}}" 2>/dev/null || echo "Docker 未运行"
