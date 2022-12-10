import strutils

proc isType(s: string, tipo: string): bool =
    if tipo == "int" :
        try:
            discard s.parseInt();    
            result = true
        except ValueError:
            result = false
    elif tipo == "float" :
        try:
            discard s.parseFloat();    
            result = true
        except ValueError:
            result = false

# String
echo "Qual o seu nome? "
let nome: string = readLine(stdin)
echo "Bem vindo ", nome

# Int
var erros = 0;
echo "Qual a sua idade ", nome, "? "
let idade: string = readLine(stdin)
if (idade.isType("int")) :
    echo "Então sua idade é ", idade
else :
    echo "Parece que n sabe ler, eu pedi idade"
    erros += 1

proc teste(s: string) =
    echo s

let x: string = "teste"
x.teste()


proc `existe?`(): bool =
    result = true

    
# Float
echo "Qual a sua altura? "
let altura: string = readLine(stdin)

if altura.isType("float") :
    let alturaFloat = altura.parseFloat()
    if (alturaFloat >= 1.80) : 
        echo "Tu é uma pessoa ou um predio de 30 andares?"
    elif (alturaFloat >= 1.70) : 
        echo "Generico eu diria"
    else :
        echo "Rebaixado"
else :
    if erros == 1 :
        echo "Errar 2 vezes ai vc já ta zuando"
    else : 
        echo "Eu quero numeros, não letras"