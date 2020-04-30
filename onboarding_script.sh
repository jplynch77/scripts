echo "Copying bashrc file.."
curl https://raw.githubusercontent.com/jplynch77/scripts/master/starter.sh > ~/.bashrc
echo "Copied successfully"

## install homebrew
echo "Installing Homebrew.."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "Homebrew successfully installed"

## install git
echo "Installing git.."
brew install git
echo "git successfully installed"

## install git completion
echo "Installing git completion.."
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
echo "git completion successfully installed"

## install iterm2
echo "Installing iTerm2.."
cd ~/Downloads
curl https://iterm2.com/downloads/stable/iTerm2-3_1_7.zip > iTerm2.zip
unzip iTerm2.zip &> /dev/null
mv iTerm.app/ /Applications/iTerm.app
spctl --add /Applications/iTerm.app
rm -rf iTerm2.zip
echo "iTerm2 successfully installed.. Adding colors.."
cd ~/Downloads
mkdir -p ${HOME}/iterm2-colors
cd ${HOME}/iterm2-colors
curl https://github.com/mbadolato/iTerm2-Color-Schemes/zipball/master > iterm2-colors.zip
unzip iterm2-colors.zip
rm iterm2-colors.zip
echo "iTerm2 + Colors installed"

## install visual studio code
echo "Installing VS Code.."
brew cask install visual-studio-code
## this might ask you for your password
code --version
echo "VS Code successfully installed"

## install tldr https://tldr.sh/
echo "Installing tldr..."
brew install tldr
echo "tldr installed. "

## install bash completion
echo "Installing bash completion.."
brew install bash-completion
echo "bash completion successfully installed"

## update terminal prompt
echo "Updating terminal prompt.."
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh > ~/.git-prompt.sh
echo "Terminal prompt successfully updated"

echo "Installing the data project.."
mkdir ~/workspace/
cd ~/workspace/
git clone git@github.com:Updater/data.git
echo "Data repo successfully installed"

echo "Installing goto.."
brew install goto
touch ~/.inputrc
echo -e "\$include /etc/inputrc\nset colored-completion-prefix on" > ~/.inputrc
echo "goto successfully installed..."

echo "Installing anaconda.."
brew cask install anaconda
echo "export PATH=/usr/local/anaconda3/bin:"$PATH"" >> ~/.bash_profile
echo "anaconda installed succesfully"

## install the dbt completion script
echo "Installing dbt completion script.."
curl https://raw.githubusercontent.com/fishtown-analytics/dbt-completion.bash/master/dbt-completion.bash > ~/.dbt-completion.bash
echo "dbt completion script successfully installed"

## Add refresh command
echo "alias dbt_refresh='dbt clean ; dbt deps ; dbt seed'" >> ~/.bash_profile

echo "source ~/.bashrc" >> ~/.bash_profile
echo "source ~/.bashrc"
echo "source ~/.bash_profile"

echo "Onboarding script ran successfully"
