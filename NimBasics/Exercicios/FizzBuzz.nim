import strutils

proc fizz(num: int): bool =
    result = (num mod 3) == 0

proc buzz(num: int): bool =
    result = (num mod 5) == 0

proc fizzBuzz(num: int): string =
    if num.fizz : result.add "fizz "
    if num.buzz : result.add "buzz "
    if result == "" : result = $num

proc input(label: string): int =
    stdout.write label
    result = stdin.readLine.parseInt

let num: int = input("Digite um numero: ")
for i in 1..num :
    echo i.fizzBuzz

    