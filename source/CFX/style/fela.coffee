import { createRenderer } from 'fela'
import { renderToString } from 'fela-tools'

newFela = (styles) =>

  renderer = createRenderer()

  globalHandler = (globalStyles) =>
    (
      Object.keys globalStyles
    )
    .forEach (i) =>
      renderer.renderStatic globalStyles[i], i

  fontsHandler = (fontsStyles) =>
    (
      Object.keys fontsStyles
    )
    .forEach (i) =>
      renderer.renderFont i, fontsStyles[i] 

  classes = =>
    (
      Object.keys styles
    )
    .reduce (r, c) =>
      {
        r...
        (
          switch c
            when '@global'
            then(
              globalHandler styles[c]
              {} 
            )
            when '@fonts'
            then(
              fontsHandler styles[c]
              {}
            )
            else [c]: renderer.renderRule => styles[c]
        )...
      }
    , {}
  cssCode: =>
    classes()
    renderToString renderer
  classes: => classes()

export {
  newFela
}

export default (styles) =>
  (
    newFela styles
  ).classes()
