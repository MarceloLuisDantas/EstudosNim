proc input(label: string): string =
    stdout.write(label) 
    result = stdin.readLine()

proc print(label: char, final="\n") =
    stdout.write(label, final)

let nome: string = input("Qual seu nome: ")
for letra in nome[0..^2] :
    if letra == ' ' :
        print('-', ", ")
    else :
        letra.print(", ")
nome[^1].print()
