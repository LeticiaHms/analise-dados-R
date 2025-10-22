#instalar pacotes
install.packages("tidyverse")

#library chamar o pacote, como se fosse o import
library("tidyverse")

#ler o csv
german <- read.csv(file="german_credit_data.csv", sep=";")

#ler linhas (,qtd)
head(german)
#estrutura do df
str(german)
#ultimas linhas
tail(german)
#total de linhas e colunas
dim(german)
#nome das colunas
names(german)

head(select(german, Age, Duration), 5)
#Age: Duration (selecionar um pedaco)
# -Age, -Duration (tudo menos isso)

#ends_with
head(select(german, starts_with("c")), 5)

#ordena e desc(Age)
head(arrange(german, desc(Age), Duration, desc(Purpose)), 5)

emprestimos_age_duration <- select(german, Age, Duration)

head(german %>% 
     select(Age, Duration) %>% 
     arrange(Age), 5)

head(german %>% filter(Age > 33, Duration > 12), 5)

head(german %>% 
       filter(Purpose %in% c("radio/TV", "education")), 5)

head(str_detect(
  string = german$Purpose[1:10],
  pattern = "car"),5)     
 
head(german %>% filter(str_detect(Purpose,"car")),5)

#criar coluna nova
head(german %>% mutate(Credit.amount_trat = Credit.amount/1000), 5)     

head(german %>% 
       mutate(Credit.amount_trat = Credit.amount/1000, grupo = "clientes_A") %>% 
       filter(Credit.amount_trat >= 1) %>% 
       select(Age, Credit.amount_trat, Duration, Purpose, grupo), 5)

german %>% summarize(media_age = mean(Age, na.rm = TRUE))

german %>% summarize(media_age = median(Age, na.rm = TRUE))

summary(german)

head(german, 5) %>% 
       group_by(Purpose) %>% 
       summarise(
         media_credit_amount = mean(Credit.amount, na.rm = TRUE),
         median_credit_amount = median(Credit.amount, na.rm = TRUE),
         min_credit_amount = min(Credit.amount, na.rm = TRUE),
         max_credit_amount = max(Credit.amount, na.rm = TRUE))

head(german, 5) %>% 
    rename(idade_cliente = Age)     

german %>% distinct(Purpose)         

#selecionar linhas
german %>% slice(1:2)

tab_valor_medio_purpose <- german %>% 
  group_by(Purpose) %>% 
  summarise(media_credit_amount = mean(Credit.amount, na.rm = TRUE))

tabela_join <- left_join(german, tab_valor_medio_purpose, by="Purpose")
head(tabela_join, 5)

head(german, 5) %>% 
  separate(
    col= Data_Completa,
    into = c("ano","mes"),
    sep = "-") %>% 
unite(col = "Data_Completa", ano, mes, sep = "-")
