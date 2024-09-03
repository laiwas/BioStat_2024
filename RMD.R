#RMD
library("tidyverse")

df = read_tsv("data/raw/data_tsv_6.tsv")

data <- df

data %>% mutate(across(!contains("E1"), function(x) str_c(x, " + некая строка")))
data %>% mutate(across(!contains("E1") & !c(`Группа`, `Возраст`), function(x) x ^ 2))


data %>% mutate(across(function(x) any(near(x, 0.5, tol = 0.1)), function(x) x + 1000))

data %>% mutate(across(!contains("E1") & !c(`Группа`, `Возраст`, `Пол`, `Группа крови`) & !where(is.factor), function(x) x ^ 2), across(contains("E2"), function(x) x * 100))
