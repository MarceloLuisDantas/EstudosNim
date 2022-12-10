import strutils

type cmt = int
type inc = float
type parse = (cmt, inc)
type parseTabel = seq[parse]

proc parseInche(centi: cmt): parse =
    let inches: inc = centi.toFloat * 0.39
    result = (centi, inches)

proc geraLinha(s: parseTabel): seq[string] =
    var linhas: seq[string] = newSeqOfCap[string](s.len + 2)
    let maior = ($(s.max[0])).len
    if maior >= 2 :
        linhas.add("cm | in".indent(maior - 1))
        linhas.add("-".repeat(8 + maior).indent(1))
    else :
        linhas.add("cm | in".indent(maior))
        linhas.add("-".repeat(7).indent(1))

    for (x, y) in s :
        var s1: string = $x
        if s1.len < maior :
            s1 = s1.indent(maior - s1.len)
        linhas.add(" " & s1 & " | " & $(y.formatFloat(ffDecimal, 2)))
    result = linhas
    
proc showTable(tabela: parseTabel) = 
    for linha in tabela.geraLinha :
        echo linha

let total = 1000

var tabela: parseTabel = newSeqOfCap[parse](total)
for i in 1..total :
    tabela.add(i.parseInche)

echo()

tabela.showTable