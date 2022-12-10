

func soma[T](n1, n2: T): T =
    return n1 + n2

echo soma(1, 3)
echo soma(3.1, 4.2)


func converte[T](n1: string): T =
    return T(n1)