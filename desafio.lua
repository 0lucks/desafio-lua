--[[

Nome da criatura
Descrição
Som que faz
Atributos
    Ataque
    Desfesa
    Vida
    Velicidade
    Inteligencia
Habilidades
furtividade
agilidade

==================================
/
/ gato
/ um animal preguiçoso e agil
/
/ Som: Miauuu
/
/ Atributos:
/  Ataque: ##000
/  Defesa: ##000
/ ...
=================================

]]
--Criatura
local monsterName = "Gato"
local descricao = "Um animal preguiçoso e agil"

--Atributos
local attackPontos = 4
local defensePontos = 3
local lifePontos = 4
local speedPontos = 9
local inteligencePontos = 7

--function

local function getProgressBar(attribute)
    local fullChar = "⬜"
    local emptyChar = "⬛"

    local result = attribute
    for i = 1, 10, 1 do
        if i <= attribute then
         result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

--Cartão

print("======================================")
print("|".. monsterName)
print("|".. descricao)
print("|")
print("| Atributos")
print("|  Attack:       ".. getProgressBar(attackPontos))
print("|  Defesa:       ".. getProgressBar(defensePontos))
print("|  Vida:         ".. getProgressBar(lifePontos))
print("|  Velicidade:   ".. getProgressBar(speedPontos))
print("|  Inteligencia: ".. getProgressBar(inteligencePontos))
print("|")
print("==================================")