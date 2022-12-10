# # Sets

# var 
#     set1: set[int8/int16]
#     set2: set[uint8/uint16]
#     set3: set[byte]
#     set4: set[char]
#     set5 = {1, 2, 3, 4}

# var nums1 = {1, 2, 3, 4}
# var nums2 = {3, 4, 5, 6}

# var nums3 = nums1 + nums2
# echo nums3 # {1, 2, 3, 4, 5, 6}

# var nums4 = nums1 - nums2
# echo nums4 # {1, 2}

# var nums5 = nums2 - nums1
# echo nums5 # {5, 6}

# import std.setutils

# var lista = [1, 2, 3, 4]
# var set1 = lista.toSet 
# # Error, pois lista é array[int], e int é int64 por padrão

# import std.setutils

# var lista = [1.int8, 2, 3, 4] 
# var set1 = lista.toSet 
# # agora sim, pois lista é array[int8]


# Hash Map
import std/tables
var pokedex = {1: "Sprigatito", 4: "Fuecoco", 7: "Quaxly"}.toTable  # creates a Table

var pokedex1 = initTable[int, string]()
# pokedex.add(1, "Sprigatito") deprecado 
pokedex1[1] = "Sprigatito"
pokedex1[2] = "Floragato"
pokedex1[3] = "Meowscarada"

var existe = pokedex.hasKey(3)

pokedex.clear() # Reseta a tabela
pokedex.del(3) # Remove a chave 3

var resultado = pokedex.getOrDefault(4)
# se 4 não existir retorna string vazia

var resultado2 = pokedex.hasKeyOrPut(4, "fuecoco")
# se 4 não existir ele adiciona com o valor "teste

var tamanho = pokedex.len() # Tamanho da tabela


var startes = {
    1: "Venusaur", 2: "Meganium", 3: "Sceptile", 
    4: "Torterra", 5: "Serperior", 6: "Chesnaught", 
    7: "Decidueye", 8: "Rillaboom", 9: "Meowscarada"
}.toTable

for pokemonkey in startes.keys :
    echo startes[pokemonkey]

for pokemon in startes.values :
    echo pokemon

for (key, value) in startes.pairs :
    echo key, " - ", value

for pokemon in startes.mvalues :
    if pokemon == "Meowscarada" :
        pokemon = "Mirra"

for (key, value) in startes.mpairs :
    if value == "alguma coisa" : # ou key
        value = "algum valor"    # ou key

var startesOrdenados = {
    1: "Venusaur", 2: "Meganium", 3: "Sceptile", 
    4: "Torterra", 5: "Serperior", 6: "Chesnaught", 
    7: "Decidueye", 8: "Rillaboom", 9: "Meowscarada"
}.toOrderedTable

for pokemon in startesOrdenados.values :
    echo pokemon # Agora seram exibidos em ordem

import std/sequtils

var power = @[90, 70, 25, 80]
var moves = @["Leaf Blade", "Flower Trick", "Bullet Seed", "Drum Beating"]
var powerMove = power.zip(moves).toTable


# Open Arrays

# Subanges

# Enum