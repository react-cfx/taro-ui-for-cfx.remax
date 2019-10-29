import * as React from 'react'

cfxify = (e) => React.createFactory e
  # return createFactory e if typeof e is 'string'
  # (args...) =>
  #   createElement.apply null
  #   , [
  #     args...
  #     e
  #   ]

cfxifys = (tags) ->

  self = @

  return {} if (typeof tags) is not 'Object'

  (
    Object.keys tags
  )
  .reduce (r, c) =>
    {
      r...
      [c]: cfxify tags[c]
    }
  , {
    (
      if self?
      then self
      else {}
    )...
    cfxifys
  }

export {
  cfxify
}
export default cfxifys
