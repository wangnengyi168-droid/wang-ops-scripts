# 王总管的个人运维脚本集

![GitHub last commit](https://img.shields.io/github/last-commit/wangnengyi168-droid/wang-ops-scripts)
![GitHub repo size](https://img.shields.io/github/repo-size/wangnengyi168-droid/wang-ops-scripts)
![GitHub](https://img.shields.io/github/license/wangnengyi168-droid/wang-ops-scripts)

个人运维工作中积累的实用脚本集合，涵盖远程桌面、系统监控、自动化部署等场景。

## 🎯 项目特点

- **实用性强**: 来自实际运维工作的脚本
- **即拿即用**: 简单配置即可使用
- **文档完整**: 每个脚本都有详细说明
- **持续更新**: 根据实际需求不断优化

## 📁 项目结构

```
wang-ops-scripts/
├── scripts/                    # 脚本目录
│   ├── remote-desktop/        # 远程桌面工具
│   ├── system-monitor/        # 系统监控脚本
│   ├── backup/               # 备份脚本
│   └── network/              # 网络工具
├── docs/                      # 文档
├── examples/                  # 使用示例
├── LICENSE                   # 许可证
└── README.md                # 本文件
```

## 🚀 快速开始

### 远程桌面连接工具
```bash
cd scripts/remote-desktop
./快速连接192.168.1.7.sh
```

### 查看使用指南
```bash
cat docs/192.168.1.7连接指南.md
```

## 🛠️ 工具列表

### 1. 远程桌面连接工具 ⭐⭐⭐⭐⭐
- **文件**: `scripts/remote-desktop/快速连接192.168.1.7.sh`
- **功能**: 一键连接到Windows远程桌面
- **特点**: 自动化配置、支持认证、故障排除
- **适用**: Windows远程桌面管理

### 2. 详细连接指南 ⭐⭐⭐⭐
- **文件**: `docs/192.168.1.7连接指南.md`
- **功能**: 完整的远程桌面连接指南
- **特点**: 步骤详细、故障排除全面
- **适用**: 远程桌面配置和问题解决

### 3. 更多工具即将添加...
- 系统健康监控脚本
- 自动化备份工具
- 网络诊断工具
- 安全加固脚本

## 📖 使用说明

### 远程桌面工具使用

#### 基本使用
```bash
# 运行连接脚本
bash scripts/remote-desktop/快速连接192.168.1.7.sh

# 或直接运行
remmina -c "rdp://administrator@192.168.1.7"
```

#### 自定义配置
```bash
# 编辑配置文件
vim ~/.local/share/remmina/192.168.1.7.remmina

# 修改连接参数
# server=你的IP地址
# username=你的用户名
# password=你的密码
```

#### 故障排除
```bash
# 检查网络连接
ping 192.168.1.7

# 检查端口状态
nc -zv 192.168.1.7 3389

# 查看Remmina日志
G_MESSAGES_DEBUG=remmina remmina -c rdp://192.168.1.7
```

## 🔧 环境要求

### 基础环境
- Linux系统 (Ubuntu/Debian推荐)
- Bash shell
- Git

### 远程桌面工具要求
```bash
# 安装Remmina
sudo apt install -y remmina remmina-plugin-rdp remmina-plugin-vnc

# 或使用脚本自动安装
./scripts/remote-desktop/install-remmina.sh
```

## 🤝 贡献指南

欢迎提交你的运维脚本！

1. **脚本要求**:
   - 有实际使用价值
   - 有详细注释
   - 有使用说明
   - 经过测试验证

2. **提交流程**:
   - Fork本仓库
   - 创建功能分支
   - 提交脚本和文档
   - 创建Pull Request

3. **代码规范**:
   - 使用有意义的变量名
   - 添加错误处理
   - 包含使用示例
   - 提供故障排除指南

## 📄 许可证

本项目采用 MIT 许可证 - 查看 [LICENSE](LICENSE) 文件了解详情。

## 📞 联系与支持

### 问题反馈
1. 查看相关脚本的文档
2. 检查GitHub Issues
3. 提交新的Issue

### 功能建议
欢迎提出新脚本的需求和建议！

### 技术交流
- GitHub: [@wangnengyi168-droid](https://github.com/wangnengyi168-droid)
- 维护者: 王总管 🐾

## 📈 更新计划

### 近期计划
- [ ] 添加系统监控脚本
- [ ] 添加自动化备份工具
- [ ] 完善文档和示例
- [ ] 增加测试用例

### 长期计划
- [ ] 开发Web管理界面
- [ ] 添加配置管理功能
- [ ] 支持更多操作系统
- [ ] 建立脚本库生态系统

## 🎉 致谢

感谢所有使用和贡献本项目的朋友！

---

**最后更新**: 2026-04-05  
**版本**: v1.0.0  
**状态**: 🚀 活跃开发中  

**让运维工作更轻松，从一个好脚本开始！** 🐾
