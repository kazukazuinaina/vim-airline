let g:airline_experimental = 1
let g:airline_themes = 'dark'

source plugin/airline.vim
doautocmd VimEnter

describe 'vim9commands'

  it 'should toggle off and on'
    if exists(':def') < 1
      SKIP 'not support vim9 script'
    endif
    execute 'AirlineToggle'
    Expect exists('#airline') to_be_false
    execute 'AirlineToggle'
    Expect exists('#airline') to_be_true
  end
end
