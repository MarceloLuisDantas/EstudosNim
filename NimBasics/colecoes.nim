# # ARRAYS

var 
    array1: array[3, int] = [1, 2, 3]
    array2: array[3, string]
    array3 = [1, 2, 3]

const x = 3
var y = 3
let z = 5

var array4: array[x, int]
# var array5: array[y, int] - Erro, o tamanho de um array precisa 
# var array6: array[z, int] - ser em tempo de compilarção(const)

var teste: array[5, int] = [1, 2, 3, 4, 5]
for i in teste :
    stdout.write i, " "
stdout.write "\n"

import strutils
var notas: array[3, float]
for i, v in notas :
    stdout.write "Digite a ", i+1, "º nota: "
    notas[i] = stdin.readLine.parseFloat
echo notas

var listaLonga: array[100, int]
for i in 0..100 :
    listaLonga[i] = i + 1

stdout.write "Digite a partir de quando começar: "
var comeco = stdin.readLine.parseInt

stdout.write "Digite quando parar: "
var parar = stdin.readLine.parseInt
var listaCurta = listaLonga[comeco..parar]
echo listaCurta

# SEQ

var 
    seq1: seq[int] = @[1, 2, 3] 
    seq2: seq[string]
    seq3 = @["Marisa", "Reimu"]
    seq4 = newSeq[int]()
    seq5 = newSeq[int](30)
    seq6 = newSeqOfCap[int](30)

seq1.add(4)
echo seq1
echo seq1.pop
echo seq1
seq1.add(@[5, 6, 7])
echo seq1.len
echo seq1.high
seq1.del(2)
seq1.delete(1)
echo seq1

# TUPLES

var tupla1 = (pokemon: "Leavanny", level: 42)

echo tupla1[0]
tupla1.level = tupla1.level + 1
echo tupla1

type Pokemon = tuple 
    nome: string
    level: int

proc newPokemon(nome: string, level: int): Pokemon =
    result = (nome, level)

proc upar(poke: Pokemon): Pokemon =
    result = newPokemon(poke.nome, poke.level + 1)

proc echo(poke: Pokemon) =
    echo "Pokemon: ", poke.nome
    echo "Level: ", poke.level

var leavanny: Pokemon = newPokemon("Leavanny", 21)
leavanny.echo
leavanny = leavanny.upar
leavanny.echo

