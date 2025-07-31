# TSProjectTemplate

A TypeScript project template with a script to initialize a new project based on this repository **without cloning its Git history**.

---

## 🚀 Quick Start

You can use the `create-project.sh` script without cloning this repo by defining a convenient alias.

### 1. Add the alias to your shell config

Add this line to your `~/.bashrc`, `~/.zshrc`, or `~/.config/fish/config.fish`:

```bash
alias newtsproj='bash <(curl -s https://raw.githubusercontent.com/TrueSoftwareNL/TSProjectTemplate/master/create-project.sh)'
