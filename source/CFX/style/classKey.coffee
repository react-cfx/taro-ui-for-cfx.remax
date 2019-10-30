import dd from 'ddeyes'

isUpper = (c) =>
  if /[A-Z]/.test c
  then true
  else false

isLower = (c) =>
  if /[a-z]/.test c
  then true
  else false

msLower = (cs) =>

  _msLower = (c) =>
    if isUpper c
    then c.toLowerCase()
    else c

  if cs.length is 1
  then _msLower cs
  else(
    cs
    .split ''
    .reduce (r, c) =>
      "#{r}#{_msLower c}"
    , ''
  )

slice = (a, start, end) =>
  _start =
    if start < 0
    then a.length + start
    else start
  _end =
    if end < 0
    then a.length + end
    else end
  if end?
  then(
    a.slice _start, _end
  )
  else a.slice _start

last = (a) => a[a.length - 1]

camlToSlash = (k) =>

  return '' if (
    k.length is 0
  ) or (
    typeof k isnt 'string'
  )

  ka = k.split ''

  [
    msLower ka[0]
    (
      if k.length > 2
      then slice ka, 1, -1
      else []
    )...
    (
      unless k.length is 1
      then [ last ka ]
      else []
    )...
  ] 
  .reduce (r, c, i, a) =>
    _c = msLower c
    return [ _c ] if i is 0
    return [
      r...
      ''
    ] unless ( isUpper c ) or ( isLower c )
    if isUpper c
    then [
      r...
      _c
    ]
    else(
      [
        (
          if r.length is 1
          then []
          else slice r, 0, -1
        )...
        "#{last r}#{_c}"
      ]
    )
  , []
  .reduce (r, c) =>
    return r if c is ''
    [
      r...
      c
    ]
  , []
  .join '-'

slashToCaml = (k) =>
  (
    k.split '-'
  )
  .reduce (r, c, i) =>
    ca = c.split ''
    [
      r...
      if i >= 1
      then(
        [
          ca[0].toUpperCase()
          if ca[1..].length is 1
          then msLower ca[1..]
          else msLower ca[1..].join ''
        ].join ''
      )
      else msLower ca.join ''
    ]
  , []
  .join ''

withPoint = (c) => ".#{c}"
withOutPoint = (c) => c[1..].join ''

classTo = (c) => withOutPoint slashToCaml c
toClass = (c) => withPoint camlToSlash c

classKey = (cs) =>
  if cs.includes '-'
  then slashToCaml cs
  else camlToSlash cs

export {
  camlToSlash
  slashToCaml

  withPoint
  withOutPoint

  classTo
  toClass

  classKey
}
