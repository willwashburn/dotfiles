#Will's Dotfile's
Keeping things gangsta across all my machines, yo

##Installation

1. Clone this repo somewhere. I put them at ~/dotfiles

    ```
    git clone git@github.com:willwashburn/dotfiles.git ~/
    ```

2. Create symlinks by entering this into the terminal
    
    ```
    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gitrc ~/.gitrc
    ```

3.  Source bashrc

    ```
    source ~/.bashrc
    ```

4. Install Bundles by opening vim and running

    ```
    :BundleInstall
    ```

