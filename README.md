# homebrew-intel

专为 Intel Mac (`x86_64`) 维护的 Homebrew Tap，直接拉取各开源项目在 GitHub Releases 上官方构建的 Intel 预编译二进制包，跳过老款 Mac 漫长的本地源码编译。

通过 GitHub Actions 每天自动检测上游最新 Release 并更新 `Formula/`。

## 使用方法

### 1. 添加 Tap
```bash
brew tap whisht/intel
```

### 2. 安装或替换现有软件
如果之前已通过 `homebrew-core` 安装过同名软件，可先卸载原版（或直接指定 Tap 安装）：
```bash
# 安装指定工具（免编译）
brew install whisht/intel/ripgrep
brew install whisht/intel/gh
brew install whisht/intel/yazi
```

### 3. 日常更新
```bash
brew update && brew upgrade
```

## 已收录软件列表（已排除底层依赖库）

### 本地常用 CLI 工具
- `bat` (`sharkdp/bat`)
- `fzf` (`junegunn/fzf`)
- `gh` (`cli/cli`)
- `git-lfs` (`git-lfs/git-lfs`)
- `jj` (`jj-vcs/jj`)
- `pandoc` (`jgm/pandoc`)
- `ripgrep` (`BurntSushi/ripgrep`)
- `starship` (`starship/starship`)
- `yazi` (`sxyazi/yazi`)
- `zoxide` (`ajeetdsouza/zoxide`)

### Omarchy 风格现代化 Shell 工具
- `fd` (`sharkdp/fd`) — `find` 现代替代
- `lazygit` (`jesseduffield/lazygit`) — Git 终端 TUI
- `lazydocker` (`jesseduffield/lazydocker`) — Docker 终端 TUI
- `zellij` (`zellij-org/zellij`) — 现代终端复用器
- `neovim` (`neovim/neovim`) — 现代终端编辑器
- `fastfetch` (`fastfetch-cli/fastfetch`) — 极速系统信息展示
- `gum` (`charmbracelet/gum`) — 交互式 Shell 脚本组件
- `glow` (`charmbracelet/glow`) — 终端 Markdown 阅读器
- `jq` (`jqlang/jq`) — 命令行 JSON 处理器
- `dust` (`bootandy/dust`) — `du` 磁盘空间分析替代
- `duf` (`muesli/duf`) — `df` 磁盘统计替代
- `bottom` (`ClementTsang/bottom`) — `btm` 进程与系统监控
- `hyperfine` (`sharkdp/hyperfine`) — 命令行基准测试
- `xh` (`ducaale/xh`) — HTTP 请求工具
- `tealdeer` (`tealdeer-rs/tealdeer`) — 极速 Rust 版 `tldr`

## 如何添加新软件

只需在 [`packages.json`](./packages.json) 中新增一项配置并推送到 `main` 分支，GitHub Actions（或本地运行 `python3 scripts/update_formulas.py`）会自动拉取最新 Release 计算 SHA256 并生成对应的 `Formula/<name>.rb`。
