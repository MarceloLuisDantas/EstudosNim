import strutils

proc print(label: string, final="") =
    stdout.write(label, final)

proc print(label: int, final="") =
    stdout.write(label, final)

print("Digite um numero: ")
var num = readLine(stdin).parseInt(); 

while num != 1 :
    num.print(" -> ")
    if (num mod 2 == 1) :
        num *= 3
        num += 1
    else :
        num = num div 2

num.print()