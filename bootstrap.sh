git pull
read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
if [[ $REPLY =~ ^[Yy]$ ]]; then
  rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
fi
echo