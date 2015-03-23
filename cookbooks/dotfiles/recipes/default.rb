# This cookbook does not actually manage dotfiles. Instead it downloads
# a dotfile git repo and runs the idempotent install script contained
# within it.
#
# See: https://github.com/ttdonovan/dotfiles
#

dotfile_dir = "#{ENV['HOME']}/.dotfiles"

git dotfile_dir do
  repository 'git://github.com/ttdonovan/dotfiles.git'
  reference 'master'
  action :sync
end

execute 'install_dotfiles' do
  command './install.sh -n'
  cwd dotfile_dir
end
