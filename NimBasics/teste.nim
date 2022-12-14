

type Veiculo = ref object of RootObj
    placa: string
    ligado: bool

proc ligarDesligar(self: Veiculo): string =
    self.ligado = not self.ligado
    result = if self.ligado : 
        "Veiculo ligado" 
    else : 
        "veiculo desligado"

type Carro = ref object of Veiculo
    portas: int
    rodas: int

func newCarro(placa: string, portas: int): Carro =
    return Carro(
        placa: placa, 
        portas: portas, 
        rodas: 4, 
        ligado: false
    )

type Aviao = ref object of Veiculo
    turbinas: int
    altitude: int

func newAviao(placa: string, turbinas: int): Aviao =
    return Aviao(
        placa: placa, 
        turbinas: turbinas, 
        altitude: 0, 
        ligado: false
    )

proc subir(self: Aviao, altura: int): string =
    if self.ligado :
        self.altitude = altura
        return "Altitude de " & $altura & " atingida"
    
proc ligarDesligar(self: Aviao): string =
    if not self.ligado : 
        self.ligado = true
        return "Ligado"
    elif self.altitude > 0 :
        echo "Descendo"
        self.altitude = 0        

    self.ligado = false
    return "Desligado"

var car = newCarro("ABC123", 4)
echo car.ligarDesligar

var aviao = newAviao("XYZ987", 4)
echo aviao.ligarDesligar
echo aviao.subir(700)
echo aviao.ligarDesligar