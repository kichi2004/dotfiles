import os

DOT_FILES = [
    '.config/neovim',
    '.config/sheldon',
    '.config/starship.toml',
    '.zshrc'
]
def main():
    for file in DOT_FILES:
        os.system(f'ln -n -s `pwd`/{file} ~/{file}')
    formulas = open('./brew.txt', 'r').read().split('\n')
    os.system(f'brew install {" ".join(formulas)}')

if __name__ == '__main__':
    main()

