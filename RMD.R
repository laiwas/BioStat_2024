#RMD
library("tidyverse")

df = read_tsv("data/raw/data_tsv.tsv")
df


data_2 <- tibble(var_1 = "var 1", var_2 = "var 2")
data_3 <- tibble(var_1 = "var 1", var_2 = "var 2")

data_1 <- tibble(var_1 = 1:8) %>% mutate(id = row_number())
data_2 <- tibble(var_2 = rnorm(10)) %>% mutate(`Subject ID` = row_number())

data_1
