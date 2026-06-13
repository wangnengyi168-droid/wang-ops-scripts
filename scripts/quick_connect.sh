#!/bin/bash
# 快速远程连接工具
# 用法: ./quick_connect.sh <设备名>
# 支持: SSH、RDP、VNC

DEVICE=$1
case $DEVICE in
    "wang2025"|"nas")
        ssh wang2025.lan
        ;;
    "sgp"|"新加坡")
        ssh sgp
        ;;
    *)
        echo "未知设备: $DEVICE"
        echo "可用设备: wang2025, sgp"
        exit 1
        ;;
esac
