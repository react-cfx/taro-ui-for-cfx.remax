import CFX from '../../CFX'
import { useShow } from 'remax'
import clsx from 'clsx'

import fela from '../../CFX/style/fela'
import styl from './index.fela'
import './index.fela.css'
classes = fela styl

import { logoImg } from './data'

import {
  View
  Text
  Image
} from 'remax/wechat'

c = CFX {
  View
  Text
  Image
}

export default =>

  c.View
    className:
      clsx(
        classes.page
        classes['page-index']
      )
  ,
    c.View
      className: 'logo'
    ,
      c.Image
        className: 'img'
        src: logoImg
        mode: 'widthFix'

    # c.View
    #   className: 'page-title'
    # , 'Taro UI'
    # c.View
    #   className: 'module-list'
    # ,
    #   menuData.reduce (r, c, i) =>
    #     [
    #       r...
    #       c.View
    #         className: 'module-list__item'
    #         key: i
    #         'data-id': c.id
    #         'data-name': c.title
    #         'data-list': c.subpages
    #         # onClick: gotoPanel
    #       ,
    #         c.View
    #           className: 'module-list__icon'
    #         ,
    #           c.Image
    #             className: 'img'
    #             src: c.icon
    #             mode: 'widthFix'
    #         c.View
    #           className: 'module-list__info'
    #         ,
    #           c.View
    #             className: 'title'
    #           , c.title
    #           c.View
    #             className: 'content'
    #           , c.content
    #         c.View
    #           className: 'module-list__arrow'
    #         ,
    #           c.Text
    #             className: 'at-icon at-icon-chevron-right'
    #     ]
    #   , []
