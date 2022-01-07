# zsh-jx

A [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/) plugin for the Jenkins-X CLI.

## Installation

> [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/) needs to be installed.

1.  **Clone the repo into your `custom/plugins` folder.**

    ```bash
    git clone https://github.com/haysclark/zsh-jx.git ~/.oh-my-zsh/custom/plugin/jx
    ```

2.  **Add 'jx' to your `.zshrc` file.**

    ```bash
    plugins=(jx)
    ```
    
    Open a new zsh session or re-source your existing shell.
      
    ```bash
    source ~/.zshrc
    ```

## Usage

### Updating

1.  **Get the latest version by pulling and rebasing your repo.**

    ```bash
    cd ~/.oh-my-zsh/custom/plugin/jx
    git fetch origin main && git rebase origin/main
    ```
