import dd from 'ddeyes'
import 'shelljs/make'
import tint, { mix } from '../source/style/mixins/libs/tint'
import style from '../source/pages/index/index.fela'
import fela from '../source/CFX/style'

target.tint = =>
  dd tint '#000', '50%'

target.classes = =>
  dd style
  dd( fela style )
