#atribiuir valor no objeto
a<-2

# onde os arquivos estao sendo salvos (pasta de rede)
getwd()

#o que esta disponivel no diretorio
dir()

# mudar diretorio que os arquivos estao sendo salvos (pasta de rede)
setwd("C:/Users/10733811/Documents/analise_dados_R")

#para ajudas no R, utilizar ? funcao ou example(funcao)
? sum
example(sum)

#instalar e carregar pacotes/bibliotecas
install.packages("dplyr", repos = "https://cran.rstudio.com/")
library(dplyr)

# listar objetos no script
ls()

#utilizar para remover objetos
rm(a)

# NUMERIC (float ou inteiro) - vetores um unico tipo de dado
# O L representa os inteiro
# se nao, ele sera uma lista ou df
# c() serve para concatenar
notas <- c(1,2.5,3)
notas

# Vetor de string
# tipo de dado: chr
frutas <- c("maca", "banana", "melancia", "pera")
frutas

#saber o comprimento do vetor
length(notas)
length(frutas)

#operacoes basicas
alturas <- c(160,172,168,181,170,165)
max(alturas) #maximo
min(alturas) #minimo
sum(alturas) #soma
alturas ^ 2 #elevado ao quadrado (cada valor)
alturas/100 #converter para metros (cada valor)

#calcular a media
qtd_alturas <- length(alturas)
media_alturas <- sum(alturas)/qtd_alturas
media_alturas
mean(alturas) #media

#retorna um elemento do vetor
alturas[2]
#retorna multiplos elemntos do vetor
alturas[c(2,5,6)]
#excluir elementos no retorno, adicionando o negativo
alturas[-1]
#alterando valores no vetor, mudar do 160 para 120
alturas
alturas[1] <- 120
alturas

#criar sequencias
1:10
16:12
-3:3
#acessar conjuntos de valores na sequencia
alturas[3:6]
