import strutils

proc inputInt*(label: string = ">"): int =
    while true :
        stdout.write label
        try :
            let entrada = stdin.readLine.parseInt
            return entrada
        except ValueError :
            stdout.write "Entrada invalida \n"

proc input*(label: string = ">"): string =
    result = stdin.readLine