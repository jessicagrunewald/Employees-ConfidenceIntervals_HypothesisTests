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

# Filter and save in the data_education variable
# Only employees with a Higher Education or Postgraduate degree.
data_education <- bd %>%
  filter(escolaridade %in% c("superior completo","pós-graduação"))

# Confidence interval for the proportion of employees with higher education
prop.test(length(data_education$escolaridade),length(bd$escolaridade))
