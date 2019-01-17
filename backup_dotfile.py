import sys, os, shutil
# workarounds for annoyances of shutil with directories
from distutils.dir_util import copy_tree, remove_tree

item_name = sys.argv[1] # first argument is script name
actual_name = os.path.basename(item_name)

script_dir = os.path.dirname(os.path.realpath('__file__'))
absolute_path = os.path.join(script_dir, item_name)

dotfiles_dir = os.path.abspath('../dotfiles/macos')

backup_dir = os.path.isdir(absolute_path)

# Copy file/directory to its dotfiles location
if backup_dir:
    dotfiles_dir = os.path.join(dotfiles_dir, actual_name)
    copy_tree(absolute_path, dotfiles_dir)
else:
    shutil.copy(absolute_path, dotfiles_dir)
    
print('[dotup] ' + actual_name + ' was backed up successfully.')

# Delete file/directory from its original location
if backup_dir:
    remove_tree(absolute_path)
else:
    os.remove(absolute_path)

print('[dotup] ' + actual_name + ' was deleted from its original location.')

# Create symbolic link in original location to the backed-up file/directory
# os.symlink(dotfiles_dir, absolute_path)
if backup_dir:
    os.symlink(dotfiles_dir, absolute_path)
else:
    new_file_path = os.path.join(dotfiles_dir, actual_name)
    os.symlink(new_file_path, absolute_path)

print('[dotup] Symbolic link created for ' + actual_name + '.')

