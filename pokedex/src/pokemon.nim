import std/strutils
import std/random 

type status = seq[int]
proc newStatus(hp, atk, def, satk, sdef, spd: int): status =
    result = @[hp, atk, def, satk, sdef, spd]

type evs = seq[int]
type ivs = seq[int]
proc newIvs(): ivs =
    let x: seq[int] = @[rand(31), rand(31), rand(31), rand(31), rand(31), rand(31)]
    result = x

proc upStatHp(base, ev, iv, lv: int): int =
    let part1: int = (0.25 * ev.toFloat).toInt * lv
    let part2: int = (2 * base + iv + part1)
    let part3: int = (0.01 * part2.toFloat).toInt
    return part3 + lv + 10

proc upStat(base, ev, iv, lv: int): int =
    let part1: int = (0.25 * ev.toFloat).toInt * lv
    let part2: int = (2 * base + iv + part1)
    let part3: int = (0.01 * part2.toFloat + 5).toInt
    return part3 + 5

type Pokemon* = object
    sts: status
    ivs: ivs
    evs: evs
    lvl: int
    nome: string

method levelUp*(self: var Pokemon, total: int = 0): array[6, int] {.base.} =
    if total != 0 : self.lvl = total
    else : self.lvl += 1
    var diff = [0, 0, 0, 0, 0, 0]
    for i, v in self.sts :
        let ev = self.evs[i]
        let iv = self.ivs[i]
        let newStatu = (
            if i == 0 : upStatHp(v, ev, iv, self.lvl)
            else : upStat(v, ev, iv, self.lvl)
        )
        diff[i] = newStatu - self.sts[i]
        self.sts[i] += newStatu
    result = diff

method listAtributo(self: Pokemon, atributo: string = "sts"): string {.base.} =
    var lista: seq[int] 
    case atributo 
    of "sts" : lista = self.sts
    of "ivs" : lista = self.ivs
    of "evs" : lista = self.evs
    result.add($lista[0] & " | ")
    result.add($lista[1] & " | ")
    result.add($lista[2] & " | ")
    result.add($lista[3] & " | ")
    result.add($lista[4] & " | ")
    result.add($lista[5])

method listStatus(self: Pokemon): string {.base.} =
    result = listAtributo(self, "sts")

method listIvs(self: Pokemon): string {.base.} =
    result = listAtributo(self, "ivs")

method listEvs(self: Pokemon): string {.base.} =
    result = listAtributo(self, "evs")

method show*(self: Pokemon): string {.base.} =
    result.add self.nome & " Lvl: " & $self.lvl & "  -  "
    let espaco = " ".repeat(result.len - 5)
    result.add self.listStatus & "\n"
    result.add espaco & "IVs: " & self.listIvs & "\n"
    result.add espaco & "EVs: " & self.listEvs & "\n"

proc newPokemon*(hp, atk, def, satk, sdef, spd: int, nome: string): Pokemon = 
    result = Pokemon(
        sts: newStatus(hp, atk, def, satk, sdef, spd), 
        ivs: newIvs(), evs: @[0, 0, 0, 0, 0, 0], 
        lvl: 1, nome: nome)
