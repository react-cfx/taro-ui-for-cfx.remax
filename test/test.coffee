import dd from 'ddeyes'

import 'shelljs/make'
import tint, { mix } from '../source/style/mixins/libs/tint'

target.tint = =>
  dd tint '#000', '50%'

import style from '../source/pages/index/index.fela'
import fela from '../source/CFX/style/fela'

target.classes = =>
  dd style
  dd( fela style )

import {
  slashToCaml
  camlToSlash
  classKey
} from '../source/CFX/style/classKey'

target.classkeyI = =>
  p = (cs, func) =>
    dd "'#{cs}' => '#{func cs}'"
  pstc = (cs) => p cs, slashToCaml
  pcts = (cs) => p cs, camlToSlash

  pstc 'h'
  pstc 'H'
  pstc 'he'
  pstc 'He'
  pstc 'hE'
  pstc 'hello'
  pstc 'HEll-O'
  pstc 'hello-With-hand'

  pcts 'h'
  pcts 'H'
  pcts 'he'
  pcts 'He'
  pcts 'hE'
  pcts 'hello'
  pcts 'HEll-O'
  pcts 'hello-With-hand'

target.classkey = =>
  p = (cs) =>
    dd "'#{cs}' => '#{classKey cs}'"

  p 'h'
  p 'H'
  p 'he'
  p 'He'
  p 'hE'
  p 'hello'
  p 'HEll-O'
  p 'hello-With-hand'
  p 'helloWith-hand'
  p 'helloWithHand'
