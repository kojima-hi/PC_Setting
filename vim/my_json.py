import re
from .base import Base

KEYWORD = [
'spacebar', 'control', 'keypad_enter', 'shift', 
'command', 'open_bracket', 'close_bracket', 'up_arrow', 
'down_arrow', 'right_arrow', 'left_arrow', 'end'
]


class Source(Base):

    def __init__(self, vim):
        Base.__init__(self, vim)

        self.name = 'MyJson'
        self.mark = '[MyJson]'
        self.filetypes = ['json']
        self.min_pattern_length = 2
        self.rank = 500

        self.result_keywords = [{'word': x} for x in KEYWORD]

#    def on_init(self, context):
#        vars = context['vars']
#
#        #self.foo = vars.get('deoplete#sources#my_tex#foo', '')
#        #self.bar = vars.get('deoplete#sources#my_tex#bar', False)
#
#        try:
#            # init(load suorce) only work
#            pass
#        except Exception:
#            # Ignore the error
#            pass
#
#    def on_event(self, context):
#        if context['event'] == 'BufRead':
#            try:
#                # vim autocmd event based works
#                pass
#            except Exception:
#                # Ignore the error
#                pass

    def get_complete_position(self, context):
        m = re.search(r'\w*$', context['input'])
        return m.start() if m else -1

    def gather_candidates(self, context):
        # return dict in list ([{},{},{}...])
        return self.result_keywords
