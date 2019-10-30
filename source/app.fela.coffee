import icons from './style/components/icons'
import { iconfont } from './style/components/fonts'

# import defStyl from './style/variables/default'
# { color } = defStyl

export default {

  '@fonts': {
    iconfont
  }

  '@global': {

    page:
      backgroundColor: '#f8f8f8'

      display: 'flex'
      flexDirection: 'column'
      minHeight: '100vh'

      boxSizing: 'border-box'

    view:
      boxSizing: 'boxder-box'

    icons...

  # 'at-frozen':
  #   position: 'fixed'
  #   width: '100%'

  # example:
  #   padding: [
  #     10
  #     20
  #   ]
  #   marginBottom: 10

  #   '&:not(:first-child)':
  #     borderTop: [
  #       40
  #       'solid'
  #       '#f5f5f5'
  #     ]

  #   '&__header':
  #     marginBottom: 20
  #     paddingBottom: 10
  #     borderBottom: [
  #       1
  #       'solid'
  #       colorGrey4
  #     ]

  #     '&-title':
  #       color: colorGrey2
  #       fontSize: 28

  #     '&-note':
  #       fontSize: 24
  #       marginLeft: 20
  #       color: colorGrey3

  # panel__content:

  #   '& .example-item':

  #     marginBottom: 20

  #     '&:last-child':
  #       marginBottom: 0

  #     '& .subitem':
  #       display: 'inline-block'
  #       marginLeft: 24

  #     '&__desc':
  #       marginBottom: 12
  #       color: '#333'
  #       fontSize: 24

  # 'doc-body':
  #   minHeight: 'calc(100vh - 180px)'
  #   background: '#fff'
  #   boxShadow: [
  #     0
  #     26
  #     163
  #     0
  #     'rgba(0, 0, 0, 0.11)'
  #   ]
  #   paddingBottom: [
  #     60
  #     'calc(constant(safe-area-inset-bottom) + 60px)'
  #     'calc(env(safe-area-inset-bottom) + 60px)'
  #   ]

  #   '& .panel':
  #     margin: [
  #       32
  #       0
  #       56
  #     ]

  #     '&__title':
  #       position: 'relative'
  #       marginBottom: 50
  #       paddingLeft: 50
  #       color: '#6a6a77'
  #       font:
  #         size: 32
  #         weight: 'bold'
  #       lineHeight: 1.5

  #       '&::before':
  #         content: ""
  #         display: 'inline-block'
  #         position: 'absolute'
  #         left: 24
  #         top: '50%'
  #         marginTop: -20
  #         width: 2
  #         height: 40
  #         backgroundColor: '#6190e8'
  #         boxShadow: [
  #           0
  #           7
  #           12
  #           0
  #           'rgba(97, 144, 232, 0.2)'
  #         ]
  #         borderRadius: 1

  #     '&__content':
  #       padding: [
  #         0
  #         20
  #       ]

  #       '&.no-padding':
  #         padding: 0

  }
}
