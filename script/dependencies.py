#!/usr/bin/env python

import os

dependencies = (
    ('resources/vim/bundle/neobundle.vim',
        'https://github.com/Shougo/neobundle.vim'),
    ('resources/zsh/zsh-syntax-highlighting',
        'git://github.com/zsh-users/zsh-syntax-highlighting.git'),

    ('bins/el-rando', 'https://github.com/EvanHahn/el-rando.git'),
    ('bins/is_github_up', 'https://github.com/EvanHahn/is-GitHub-up.git'),
    ('bins/iscp', 'https://github.com/EvanHahn/iscp.git'),
    ('bins/journ', 'https://github.com/EvanHahn/journ.git'),
    ('bins/rename', 'https://github.com/EvanHahn/rename.git'),
)

my_path = os.path.dirname(os.path.realpath(__file__))
root_path = os.path.join(my_path, '..')

for (path, url) in dependencies:

    os.chdir(root_path)

    exists = os.path.isdir(path)
    if exists:
        print('Updating ' + path)
        os.chdir(path)
        os.system('git checkout master')
        os.system('git pull origin master')
    else:
        print('Grabbing ' + path)
        os.system('git clone {0} {1}'.format(url, path))

    print('')
