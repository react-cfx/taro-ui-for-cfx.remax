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
  classes = =>
    (
      Object.keys styles
    )
    .reduce (r, c) =>
      {
        r...
        (
          if c is '@global'
          then(
            globalHandler styles[c]
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
