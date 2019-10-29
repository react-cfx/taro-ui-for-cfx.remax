import CFX from '../../CFX'
import { useShow } from 'remax'
import clsx from 'clsx'

import fela from '../../CFX/style/fela'
import styl from './index.fela'
import './index.fela.css'
classes = fela styl

import menuData, { logoImg } from './data'

import {
  View
  Text
  Image
} from 'remax/wechat'

C = CFX {
  View
  Text
  Image
}

export default =>

  C.View
    className:
      clsx(
        classes.page
        classes['page-index']
      )
  ,
    C.View
      className: 'logo'
    ,
      C.Image
        className: 'img'
        src: logoImg
        mode: 'widthFix'

    C.View
      className: 'page-title'
    , 'Taro UI'
    C.View
      className: 'module-list'
    ,
      menuData.reduce (r, c, i) =>
        [
          r...
          C.View
            className: 'module-list__item'
            key: i
            'data-id': c.id
            'data-name': c.title
            'data-list': c.subpages
            # onClick: gotoPanel
          ,
            C.View
              className: 'module-list__icon'
            ,
              C.Image
                className: 'img'
                src: c.icon
                mode: 'widthFix'
            C.View
              className: 'module-list__info'
            ,
              C.View
                className: 'title'
              , c.title
              C.View
                className: 'content'
              , c.content
            C.View
              className: 'module-list__arrow'
            ,
              C.Text
                className: clsx [
                  'at-icon'
                  'at-icon-chevron-right'
                ]
        ]
      , []
