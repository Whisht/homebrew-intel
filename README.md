# homebrew-intel

专为 Intel Mac (`x86_64`) 维护的 Homebrew Tap，直接拉取各开源项目在 GitHub Releases 上官方构建的 Intel 预编译二进制包（对于 `eza`、`btop`、`git-delta` 等官方未提供 macOS Intel Release 二进制的项目，由本仓库 GitHub Actions 在云端自动交叉编译为兼容 `macOS 11.0+ x86_64` 的独立预编译包并发布至本仓库 Releases），彻底跳过老款 Mac 漫长的本地源码编译。

通过 GitHub Actions 每天自动检测上游最新 Release 并更新 `Formula/`。

## 使用方法

### 1. 添加 Tap
```bash
brew tap whisht/intel
```

### 2. 安装或替换现有软件
如果之前已通过 `homebrew-core` 安装过同名软件，可先卸载原版（或直接指定 Tap 安装）：
```bash
# 安装指定工具（免本地编译）
brew install whisht/intel/eza
brew install whisht/intel/ripgrep
brew install whisht/intel/gh
brew install whisht/intel/yazi
```

### 3. 日常更新
```bash
brew update && brew upgrade
```

## 已收录软件列表（共 53 个，已排除底层依赖库）

### 1. 本地常用 CLI 工具
- `bat` (`sharkdp/bat`)
- `carapace` (`carapace-sh/carapace-bin` — 多 Shell 多命令参数补全器)
- `curl` (`stunnel/static-curl` — 静态编译独立 `x86_64` 包，内置 HTTP/3、Zstd、Brotli，零动态库依赖)
- `eza` (`eza-community/eza` — 云端自动预编译独立 `x86_64` 包，无需 `libgit2` 依赖)
- `fzf` (`junegunn/fzf`)
- `gh` (`cli/cli`)
- `git` (`git/git` — 云端自动预编译独立 `x86_64` 包，无需 `gettext`/`pcre2` 依赖)
- `git-lfs` (`git-lfs/git-lfs`)
- `jj` (`jj-vcs/jj`)
- `pandoc` (`jgm/pandoc`)
- `ripgrep` (`BurntSushi/ripgrep`)
- `starship` (`starship/starship`)
- `wget` (`mirror/wget` — 云端自动静态链接 LibreSSL 预编译独立 `x86_64` 包，零外部动态库依赖)
- `yazi` (`sxyazi/yazi`)
- `zoxide` (`ajeetdsouza/zoxide`)

### 2. Omarchy 现代化 Shell Tools & TUIs
参考 [Omarchy Shell Tools](https://omarchy.org/manual/shell-tools/) 与 [Omarchy TUIs](https://omarchy.org/manual/tuis/)：
- `fd` (`sharkdp/fd`) — `find` 现代替代
- `try` (`tobi/try`) — 临时实验目录管理器 (`try`)
- `lazygit` (`jesseduffield/lazygit`) — Git 终端 TUI
- `lazydocker` (`jesseduffield/lazydocker`) — Docker 终端 TUI
- `btop` (`aristocratos/btop`) — 系统资源监控器（云端自动预编译 `x86_64` 包）
- `herdr` (`herdrdev/herdr`) — 持久终端会话与 AI 编程 Agent 多路复用器
- `cliamp` (`bjarneo/cliamp`) — 复古 Winamp 风格终端音乐播放器
- `fastfetch` (`fastfetch-cli/fastfetch`) — 极速系统信息展示
- `zellij` (`zellij-org/zellij`) — 现代终端复用器
- `neovim` (`neovim/neovim`) — 现代终端编辑器
- `gum` (`charmbracelet/gum`) — 交互式 Shell 脚本组件
- `glow` (`charmbracelet/glow`) — 终端 Markdown 阅读器
- `jq` (`jqlang/jq`) — 命令行 JSON 处理器
- `dust` (`bootandy/dust`) — `du` 磁盘空间分析替代
- `duf` (`muesli/duf`) — `df` 磁盘统计替代
- `bottom` (`ClementTsang/bottom`) — `btm` 进程与系统监控
- `hyperfine` (`sharkdp/hyperfine`) — 命令行基准测试
- `xh` (`ducaale/xh`) — HTTP 请求工具
- `tealdeer` (`tealdeer-rs/tealdeer`) — 极速 Rust 版 `tldr`

### 3. dlvhdr CLI Gems 精选工具
参考 [dlvhdr's List of CLI Gems](https://www.dlvhdr.me/posts/cli-tools)：
- `atuin` (`atuinsh/atuin`) — 现代化多端同步 Shell 历史记录
- `direnv` (`direnv/direnv`) — 基于目录自动加载/卸载环境变量
- `serpl` (`yassinebridi/serpl`) — 类似 VS Code 的全局搜索替换 TUI
- `procs` (`dalance/procs`) — 现代 `ps` 替代工具
- `sd` (`chmln/sd`) — 直观快速的 `sed` 查找替换替代工具
- `curlie` (`rs/curlie`) — 兼具 `curl` 性能与 `httpie` 易用性的 HTTP 工具
- `jnv` (`ynqa/jnv`) — 交互式 JSON 导航与 `jq` 过滤器 TUI
- `gojq` (`itchyny/gojq`) — 纯 Go 实现的 `jq`
- `fx` (`antonmedv/fx`) — 终端交互式 JSON 查看与处理工具
- `jless` (`PaulJuliusMartinez/jless`) — 命令行 JSON 分页阅读器
- `jqp` (`noahgorstein/jqp`) — `jq` 交互式 TUI 演练场
- `git-delta` (`dandavison/delta`) — Git / diff 语法高亮分页器（云端自动预编译 `x86_64` 包）
- `diffnav` (`dlvhdr/diffnav`) — 基于 `delta` 的带文件树 Git diff 查看器
- `gh-dash` (`dlvhdr/gh-dash`) — GitHub PR 与 Issue 终端仪表盘 TUI
- `svu` (`caarlos0/svu`) — 语义化版本号管理工具
- `sesh` (`joshmedeski/sesh`) — `tmux` 智能终端会话管理器
- `k9s` (`derailed/k9s`) — Kubernetes 集群管理 TUI
- `freeze` (`charmbracelet/freeze`) — 将代码与终端输出生成精美图片
- `vhs` (`charmbracelet/vhs`) — 用代码编写并录制终端演示 GIF

## 如何添加新软件

只需在 [`packages.json`](./packages.json) 中新增一项配置并推送到 `main` 分支，GitHub Actions（或本地运行 `python3 scripts/update_formulas.py`）会自动拉取最新 Release 计算 SHA256 并生成对应的 `Formula/<name>.rb`。
