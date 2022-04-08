# <center> neovim config by lua </center>

### Install for Windows or Linux, MacOs

# Step 1: download repo for win

> git clone --branch lua https://github.com/CompanyDATV/neovim.git nvim --depth 1 && cd nvim

  - Linux or Max : 

> git clone --branch lua https://github.com/CompanyDATV/neovim.git ~/.config/nvim --depth 1 && nvim +'hi NormalFloat guibg=#1e222a' +PackerSync  
  
# step 2: Copy repo to ~/AppData/Local/nvim for windows

> copy -r neovimLua\* $(pwd) && rm neovimLua

# step 2: download packet for win and mac and linux

> git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

# step 3: type command line : install plug and settings for windows

> nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

# step 4: setup exec server both win + linux + mac

> LspInstall html css javascript typescript java c c++ markdown json python tsx

# step 5: thank for readding

> Donate: ViettinBank: 103868801400


# Delete

> Linux 
```diff
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```
> Windows
```diff
rm $env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim
rm ~\AppData\Local\nvim
```
