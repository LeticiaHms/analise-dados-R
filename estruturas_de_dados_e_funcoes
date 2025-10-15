#variaveis: intenger (L), numeric (float/double), string, boolean, null
#seq(from, to, by, lengh.out - divide igualmente ate o valor dado)
seq(1,10,length.out=12)
seq(1,10,by=0.5)

#distribuicao uniforme
#runif(qtd de valores, valor minimo, valor maximo)
runif(5, 1, 2)

#distribuicao normal
#rnorm(qtd de valores, media, desvio padrao)
rnorm(5, mean=10, sd=5)

#gerar amostra aleatoria, indiferente a distribuicao
#sample(vetor ou conjunto, size, replance = true or false-padrao)
a<- sample(1:30,10)
sort(a, decreasing = TRUE)
sort(a)

#conjuntos de dados prontos, utilizar a funcao data()
#raiz quadrada= sqrt(), log(), log10(), +, -, *, /, ^
a<-10
b<- 3

soma<- a+b
sub<- a-b
div <- a/b
exp<- a^b
mult<- a*b

print(soma)
print(sub)
print(mult)
print(div)
print(exp)

#armazena elementos do mesmo tipo (vetores)
idades<- c(20,42,29)
nomes<- c("Ana","Pedro","Thomas")
flag_paulista<- c(TRUE, FALSE, TRUE)
estado<- c("SP", "ES", "SP")

#dataframes composto por vetores de tipos diferentes
df<- data.frame(nome = nomes, idade = idades, mora_sp = flag_paulista, 
estados = estado, asfactor = FALSE)

print(df)

#"describe" em que tras tipo das variaveis e das colunas nela
str(df)
#converter a coluna do tipo Factor para chr
#Factor é uma categorizacao em que classifica o vetor com pesos
df$nome <- as.character(df$nome)
df$estados <- as.character(df$estados)
str(df)

#selecionar uma coluna
df$nome
#acessar por indice
#primeira linha e todas colunas
df[1,]
#todas linhas e segunda coluna
df[,2]
#intervalo, primeira e segunda linha/coluna
df[1:2, 1:2]
#selecionar coluna
df[["estados"]]

#lista para armazenar diferentes tipos de dados
minha_lista<- list(numero=23L, nome="Leticia", notas=c(9.5,8.4,10))
print(minha_lista)
#acessar lista por nome ou indice
minha_lista$numero
minha_lista[[2]]

#matriz é bidimensional e elementos do mesmo tipo
#matriz(valor/variavel, num de linha, num de coluna)
mat<- matrix(1:12, nrow=4, ncol=3)
print(mat)

#funcao para tarefas especificas e repetitivas
imc <- function(altura,peso){
  multi<- altura*peso
  return(multi)
}

imc(1.60,80)
