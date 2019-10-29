px = (n) => "#{n}px"
per = (n) => "#{n}%"

makeArray = (a) =>
  unless Array.isArray a
  then [a]
  else a
mayBeJoin = (a, beJoin) =>
  if a.length > 1
  then a.join beJoin
  else a

join = (a, beJoin) =>
  mayBeJoin(
    makeArray a
    beJoin
  )
joinS = (a) => join a, ' '
joinP = (a) => join a, ', '

func = (funcName, funcBody) => "#{funcName}(#{funcBody})"
fujp = (funcName, a) =>
  func funcName
  ,
    joinP makeArray a

rgba = (a) =>
  fujp 'rgba', a
cubicBezier = (a) =>
  fujp 'cubic-bezier', a
matrix = (a) =>
  fujp 'matrix', a
translate = (a) =>
  fujp 'translate', a

export {
  px
  per

  joinS
  joinP

  func
  fujp 

  rgba
  cubicBezier
  matrix
  translate
}
