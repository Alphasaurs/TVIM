# Tvim (my mac vim setup)
* install macvim from here https://macvim.org
## vim location
* press “Command” + “Shift” + “.” to view hidden files,
* then add .vimrc here
* after adding .vimrc in /users/abhisheksharma/ open this and your structure lool like this

![Screenshot 2023-03-21 at 10 03 50 PM](https://user-images.githubusercontent.com/50196057/226678412-83b80c8b-4728-4a0f-b582-cf916ee3d315.png)


## .vimrc setup guide
* first install homebrew using
  ```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
* paste this command at the when homebrew installation finish in your terminal
```
   (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/abhisheksharma/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
```
* brew analytics off, use this command after above
* install git using brew install git
* then install plug install using
  ```
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
* type vi in termial and enter :PlugInstall
* install python3 using  brew install python, if you dont do it then you will face these error
  ```
    E319: Sorry, the command is not available in this version: py3 UltiSnips_Manager._track_change()
  ```

## ultisnips
to use this feature right command and then press tab
to use custom snippet make a folder and put your cpp.snippets in it
![Screenshot 2023-03-21 at 10 46 36 PM](https://user-images.githubusercontent.com/50196057/226690067-38b0ea68-1e74-4550-b622-cf18eb7c0e88.png)

![Screenshot 2023-03-21 at 10 48 43 PM](https://user-images.githubusercontent.com/50196057/226690238-1d3665f8-344a-4481-8ab1-28d4a84c7f1b.png)

## error while running c++ code with #include <bits/stdc++.h> on macos
`solution`
just create new folder  /usr/local/include/bits and paste this file https://github.com/Alphasaurs/Tvim/blob/main/stdc++.h

## precompiled <bits/stdc++.h>
`solution`
g++ -std=c++20 stdc++.h



## add and commit
git config --global alias.coa '!git add -A && git commit -m'
git coa "updated"
