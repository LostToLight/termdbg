let s:config = backend#base#Get()
let s:config['prompt'] = '> '
let s:config['next_cmd'] = 'next'
let s:config['step_cmd'] = 'step'
let s:config['finish_cmd'] = 'step up'
let s:config['continue_cmd'] = 'cont'
let s:config['break_cmd'] = 'stop at'
let s:config['clear_cmd'] = 'clear'

"TODO: create patterns

" vi:set sts=2 sw=2 et:
