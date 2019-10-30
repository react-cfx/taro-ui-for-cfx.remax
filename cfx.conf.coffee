import CoffeeScript from 'coffeescript'
import { newFela } from './source/CFX/style/fela'
import css from 'css'

export default

  exts:

    coffee:
      libs: {
        CoffeeScript
      }

    felaCoffee:
      libs:
        newFela: (styles) =>
          {
            cssCode
            classes
          } = newFela styles
          {
            cssCode: => css.stringify css.parse cssCode()
            classes
          }

  excludes: '/style'

  others:
    action: 'copy'
