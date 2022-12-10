var lista: array[10, int]

for i, _ in lista :
    lista[i] = 10 * (i + 1)
echo lista

for i, v in lista :
    if (i + 1) mod 2 == 0 :
        stdout.write v, " "
echo ""

for i, v in lista :
    if (i + 1) mod 2 == 1 :
        lista[i] = v * 5
echo lista