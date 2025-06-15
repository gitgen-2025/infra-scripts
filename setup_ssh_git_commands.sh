
#SSH Key Setup
ssh-keygen -t ed25519 -c "your-email@example.com"

eval "$(ssh-agent -s)"

ssh-add ~/ .ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub

ssh -T git@github.com

#Git Init and Remote Setup

git init
git remote add origin
git@github.com:your-username/your-repo.git
git add .
git commit -m "Initial commit"
git branch -M main/master
git push -u origin main/master

