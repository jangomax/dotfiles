"let g:startify_custom_header = [
          "\ '                            _           _           ',
          "\ '  /\/\   __ ___      ___ __| | __/\   /(_)_ __ ___  ',
          "\ ' /    \ / _` \ \ /\ / / \'__| |/ /\ \ / / | \\'_ ` _ \ ',
          "\ '/ /\/\ \ (_| |\ V  V /| |  |   <  \ V /| | | | | | |',
          "\ '\/    \/\__\,_| \_/\_/ |_|  |_|\_\  \_/ |_|_| |_| |_|',
          "\]                                                    

let g:startify_custom_header = ['     MawrkVim 2°22']

let g:startify_session_dir = '~/.config/nvim/session'
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

