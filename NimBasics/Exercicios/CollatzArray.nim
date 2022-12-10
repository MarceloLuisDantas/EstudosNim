import std/tables

proc geraCollatz(start: int): seq[int] =
    var x = start;
    var collatz = newSeq[int]()
    while x != 1 :
        collatz.add(x)
        if x mod 2 == 0 :
            x = x div 2
        else :
            x *= 3
            x += 1
    result = collatz

echo "começou"

var tabela = initOrderedTable[int, int]()
var mGerador = 1
var mTamanho = 1
for i in 1..1000000 :
    var lista = geraCollatz(i)
    let tamanho = lista.len
    # echo i, " como entrada gera ", tamanho, " valores"

    if tabela.hasKey(tamanho) : tabela[tamanho] += 1
    else : tabela[tamanho] = 1

    if lista.len > mTamanho :
        mGerador = i
        mTamanho = tamanho
    
echo "-------------------------------"
stdout.write "{"
for v, t in tabela :
    stdout.write v, ": ", t, ", "
stdout.write "}"


echo "-------"
echo "A maior lista gerada tinha ", mTamanho, " valores"
echo "e foi gerada pelo valor inicial ", mGerador