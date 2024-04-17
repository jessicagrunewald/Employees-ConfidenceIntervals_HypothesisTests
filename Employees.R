# Install tidyverse and ggplot2
install.packages("tidyverse")
install.packages("ggplot2")

library(tidyverse)
library(ggplot2)

# Importing the database
bd <- read.table("BD1.csv", header=TRUE, sep=";")

# Confidence interval of the variables:
# Idade, Valor do último salário, tempo de experiência profissional and Tempo de experiência na função
# With 95% confidence
ic_age <- t.test(bd$idade)
ic_last_salary <- t.test(bd$valor.do.último.salário)
ic_length_experience <- t.test(bd$tempo.de.experiência.profissional)
ic_experience_role <- t.test(bd$tempo.de.experiência.na.função)

