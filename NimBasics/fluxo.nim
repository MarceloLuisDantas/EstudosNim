# IF ELSE
echo "Qual o seu nome? "
let nome = readLine(stdin)
if nome == "Duo":
    echo "PFV DEVOLVE MEU CACHORRO"
elif nome == "Fernanda" :
    echo "Prazer em conheçela pojeto de dominatrix"
else :
    echo "Vai embora, n te conheço"

# WHILE
while true :
    echo "Deseja parar: "
    let escolha = readLine(stdin)
    if escolha == "sim" :
        break

# FOR
import strutils

echo "Qual o limite? "
let quantidade = readLine(stdin).parseInt()
for i in 1..quantidade :
    echo "Item - ", i

let nomes: array[3, string] = ["Marisa", "Reimua", "Alice"]
for i, n in nomes :
    echo i + 1,"º Nome = ", n 

for local in @["Templo Hakurei", "Floresta da Magia", "Floresta de Bambu"] :
    echo "Local: ", local