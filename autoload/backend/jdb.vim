let s:config = backend#base#Get()
let s:config['prompt'] = '> '
let s:config['next_cmd'] = 'next'
let s:config['step_cmd'] = 'step'
let s:config['finish_cmd'] = 'step up'
let s:config['continue_cmd'] = 'cont'
let s:config['break_cmd'] = 'stop at'
let s:config['clear_cmd'] = 'clear'

let s:config['locate_pattern'] = {
      \ 'short': '^Breakpoint hit: ',
      \ 'long': '^.+: "\w+=\S+", (\S+) \w+=([0-9,]+) \S+$',
      \ 'index': [1, 2],
      \ }

let s:config['new_breakpoint_pattern'] = {
      \ 'short': '^Set breakpoint \S+:[0-9,]+',
      \ 'long': '^Set breakpoint (\S+):([0-9,]+)$',
      \ 'index': [2, 3],
      \ }

let s:config['del_breakpoint_pattern'] = {
      \ 'short': '^Removed: breakpoint \S+:[0-9,]+',
      \ 'long': '^Removed: breakpoint (\S+):([0-9,]+)$',
      \ 'index': [2, 3],
      \ }

func backend#jdb#Get()
  return s:config
endfunc

" vi:set sts=2 sw=2 et:
