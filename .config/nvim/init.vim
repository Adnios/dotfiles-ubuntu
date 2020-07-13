let s:MyVimConfigFiles = [
            \'plug.vim',
            \'keymap.vim',
            \'fzf.vim',
            \'coc.vim',
            \'set.vim',
            \'floaterm.vim',
            \'markdown.vim',
            \'latex.vim',
            \'vim-which-key.vim',
            \'vm.vim',
            \'bullet.vim',
            \'vim-illuminate.vim',
            \'airline.vim',
            \'easymotion.vim',
            \'signify.vim',
            \'goyo.vim',
            \'start.vim',
            \'nerdtree.vim'
            \]
for s:path in s:MyVimConfigFiles
    exe 'source ' .'~/.config/nvim/config/'.s:path
endfor

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC
