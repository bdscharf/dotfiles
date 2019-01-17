import sys, os, shutil, errno
from distutils.dir_util import copy_tree # workaround for annoyances of shutil's copytree
item_name = sys.argv[1] # first argument is script name

script_dir = os.path.dirname(os.path.realpath('__file__'))
absolute_path = os.path.join(script_dir, item_name)

dotfiles_dir = os.path.abspath('../dotfiles/macos')

print('Backing up ' + item_name)

if os.path.isdir(absolute_path):
    dotfiles_dir = os.path.join(dotfiles_dir, os.path.basename(item_name))
    copy_tree(absolute_path, dotfiles_dir)
else:
    shutil.copy(absolute_path, dotfiles_dir)