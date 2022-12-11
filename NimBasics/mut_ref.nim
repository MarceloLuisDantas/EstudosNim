# Parametros mutaveis

proc soma(num: var int, valor: int) =
    num += valor
    echo num

var num = 10
num.soma(30) # 40
    
proc somaSink(num: sink int, valor: int) =
    num += valor
    echo num

var num2 = 10
num2.somaSink(30) # 40

# Referencia 

# type Pokemon = object    # Cria e retorna o objeto. 
type Pokemon = ref object  # Cria o objeto e retorna um ponteiro.
    nome: string           # As funções que receberem um objeto definido como ref
    level: int             # recebem na verdade um ponteiro, e podem alterar o valor
                           # Enquanto objetos definidos sem ref não pode mser alterados
                           # e precisam ser definidos como var object na definição da 
                           # função para poderem ser alterados.
                            
# Proc sem indicar var so podera ser mutavel se o Pokemon for
# um ref object, caso contrario sera imutavel.                       
proc mudaNome(p: Pokemon, nome: string) =  
    echo p.nome             
    p.nome = nome    

var leavanny = Pokemon(nome: "Leavanny", level: 21)                          

leavanny.mudaNome("Lilligant")            
echo leavanny.nome # Lilligant          

# Proc indicado var sera mutavel caso o valor passado sejá 
# declarado como var, idependete de ser uma ref ou não                        
proc mudaNomeVar(p: var Pokemon, nome: string) =  
    echo p.nome             
    p.nome = nome       

var leafeon = Pokemon(nome: "leafeon", level: 21)                          

leafeon.mudaNomeVar("Lilligant")            
echo leafeon.nome          

# Aparentemente não serve declarar ref [TYPE]
# # Proc indicando ref
# proc mudaNomeRef(p: ref Pokemon, nome: string) =  
#     echo p.nome             
#     p.nome = nome                                   

# var tsarenna = Pokemon(nome: "tsarenna", level: 21)                          

# tsarenna.mudaNomeRef("Lilligant")            
# echo tsarenna.nome          
