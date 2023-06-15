import os

DOT_FILES = [
    '.config/nvim',
    '.config/sheldon',
    '.config/starship.toml',
    '.zshrc'
]
def main():
    for file in DOT_FILES:
        os.system(f'ln -n -s `pwd`/{file} ~/{file}')
    os.system(
        'git clone --depth 1 https://github.com/wbthomason/packer.nvim '
        '~/.local/share/nvim/site/pack/packer/start/packer.nvim'
    )
    formulas = open('./brew.txt', 'r').read().split('\n')
    os.system(f'brew install {" ".join(formulas)}')

if __name__ == '__main__':
    main()

