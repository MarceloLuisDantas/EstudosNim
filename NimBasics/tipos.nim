

type Segundos = distinct int

proc `+=`(x: var Segundos, y: int) =
    x = Segundos(int(x) + y)

proc `$`(x: Segundos): string =
    result = $int(x)

var x = Segundos(60)
x += 30
echo x

proc `^`(base: int, potencia: int): int =
  result = base
  for x in [0..potencia] :
    result *= base

var potencia = 2 ^ 2
echo potencia

# proc `/`(num1, num2: int): int =
    # result = num1 div num2

var divisao = 4 / 2
echo divisao
