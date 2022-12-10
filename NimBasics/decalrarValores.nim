# Declaração de variais
var 
    letr: char = 'n'
    lang: "N" & "im"
    nLength = len(lang)
    boat: float 
    verdade: bool = false
    semSinal: uint = 23

# Declaração de constantes em execução
let 
    legs: int = 400
    arms = 2_000
    pi: float = 3.15

# Declaração de constanes com compilação
const 
    debug = true
    badCode = false


# Testando declara const em execução
from std/strutils import parseInt

proc soma(x, y: int): int = 
  return (x + y)

let teste = parseInt(readLine(stdin))
# const c_result = soma(10, teste)
let t_result = soma(10, teste)

var 
    inteiro1: int
    inteiro2: int8 = cast[int8](255)      # conversão
    inteiro3: int16 = cast[int16](65535)  # não é bom tentar operar diferentes tipos de int
    inteiro4: int32 = cast[int32](123423) # melhor converter tudo para int padrão
    inteiro5: int64

var
    semSinal1: uint
    semSinal2: uint8
    semSinal3: uint16
    semSinal4: uint32
    semSinal5: uint64

var
    float1: float
    float2: float32
    float3: float64

# Valores podem ser convertiso facilmente
let int_float: float = float(10)
let float_int: int = int(int_float)

# Diferentes tipos n pode mser operados
let somaInt: int = float_int + int16(int_float)   
let somaFloat: float = int_float + float(float_int)

    
let nome: string = "Dromedario "
let raça: string = "De Chapeu"

echo nome & raça # Concatenação de Strings

let letra: char = 'a'
let numero: char = '1'

echo letra & numero # Tbm funciona com char

var bestGame: string = "TouHou"
bestGame.add(" Perfect Cherry Blossom") # Concatenação com add
echo bestGame

var secondBestGame: string = "TouHou"
# Tbm funciona, so não sei pq usar isso ao metodo anterior
secondBestGame = secondBestGame & " Hidden Star in Four Seasons"
echo secondBestGame

var hasStr: string = $123 # Conversão para String
hasStr.add(" Agora é string")
echo hasStr
