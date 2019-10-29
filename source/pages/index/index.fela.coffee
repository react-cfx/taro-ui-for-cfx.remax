import {
  px
  per
  joinS
  rgba
  matrix
  translate
} from '../../CFX/style/helper'

export default

  page:
    position: 'relative'
    backgroundColor: '#f8f8f8'

    '& view':
      boxSizing: 'border-box'

  'page-index':
    paddingTop: px 60
    paddingBottom: px 100

    '& .logo':
      margin: joinS [
        0
        'auto'
      ]
      marginTop: px 60
      fontSize: 0
      textAlign: 'center'

      '& .img':
        width: px 264
        height: px 180

    '& .page-title':
      marginTop: px 24
      color: '#333'
      fontSize: px 36
      textAlign: 'center'

    '& .module-list':
      marginTop: px 72
      display: 'flex'
      flexDirection: 'column'
      alignItems: 'center'

      '&__item':
        boxSizing: 'border-box'
        display: 'flex'
        flexDirection: 'row'
        alignItems: 'center'
        marginBottom: px 40
        padding: joinS [
          0
          px 30
        ]
        width: per 90
        height: px 144
        background: '#fff'
        boxShadow: joinS [
          0
          px 8
          px 40
          0
          rgba [
            0
            0
            0
            0.04
          ]
        ]
        borderRadius: px 10

        ':last-child':
          marginBottom: 0

      '&__icon':
        display: 'flex'
        justifyContent: 'center'
        alignItems: 'center'
        width: px 70
        height: px 70
        color: '#78A4FA'
        textAlign: 'center'
        border: joinS [
          px 5
          'solid'
          rgba [
            120
            164
            250
            0.16
          ]
        ]
        borderRadius: per 50

        '& .img':
          width: px 30
          height: px 30

      '&__info':
        flex: 1
        textAlign: 'left'
        marginLeft: px 24

        '& .title':
          color: '#6A6A77'
          fontSize: px 28
          fontWeight: 'bold'

        '& .content':
          color: '#88889C'
          fontSize: px 22

      '&__arrow':
        display: 'flex'
        justifyContent: 'center'
        alignItems: 'center'
        width: px 62
        height: px 62
        color: '#fff'
        textAlign: 'center'
        background: '#78A4FA'
        boxShadow: joinS [
          px 4
          px 10
          px 30
          0
          rgba [
            120
            164
            250
            0.30
          ]
        ]
        borderRadius: per 50

  'page-body':
    padding: px 40

  'componene-group':
    fontSize: px 32

  'group-item':
    padding: joinS [
      0
      px 30
    ]
    margin: joinS [
      px 20
      0
    ]
    backgroundColor: '#fff'
    borderRadius: px 4
    overflow: 'hidden'

    ':first-child':
      marginTop: 0

  'group-info':
    padding: joinS [
      px 30
      0
    ]
    display: 'flex'
    alignItems: 'center'
    transition: joinS [
      'opacity'
      '0.3s'
    ]

    '&-tite':
      opacity: 0.5

  'group-list':
    fontSize: px 28

    '& .list-component':
      padding: joinS [
        px 20
        0
      ]
      position: 'relative'
      alignItems: 'center'

      '::before':
        content: '" "'
        position: 'absolute'
        left: 0
        top: 0
        right: 0
        height: px 1
        borderTop: joinS [
          1
          'solid'
          '#d8d8d8'
        ]
        color: '#d8d8d8'

      ':first-child::before':
        display: 'none'

      '&-info':
        width: per 100

      '&-arrow':
        display: 'inline-block'
        height: px 18
        width: px 18
        borderWidth: joinS [
          px 2
          px 2
          0
          0
        ]
        borderColor: '#888'
        borderStyle: 'solid'
        transform: joinS [
          matrix [
            0.71, 0.71
            -0.71, 0.71
            0, 0
          ]
          translate per -50
        ]

        position: 'absolute'
        top: per 50
        right: 0
