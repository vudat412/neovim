# [Setup Neovim with LUA]()

### `Step 1`: Download packer from us!!!

  Windows
> git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"

### `Step 2`: Download repo from us!!!

  Windows
> git clone --branch master https://github.com/CompanyDATV/neovim "$env:LOCALAPPDATA\nvim"
  
### `Step 3`: Install packet

  Windows
> nvim +'hi NormalFloat guibg=#1e222a' lua\datv\plugins\init.lua +PackerSync

## For Linux 
> git clone --depth 1 https://github.com/wbthomason/packer.nvim/ $(pwd)/site/pack/packer/start/packer.nvim && \
> git clone --branch master https://github.com/CompanyDATV/neovim ~\.config\nvim \
--depth 1 && nvim +'hi NormalFloat guibg=#1e222a' +PackerSync

## Donate me: 
  - ViettinBank: 103868801400 

# END
