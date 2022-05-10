
# Regressão Linear Simples -------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco -----------------------------------------------------------------------------------------------
# Data do script: 09/05/22 -------------------------------------------------------------------------------------------------------
# Referência: Curso Udemy --------------------------------------------------------------------------------------------------------

# Carregar pacote --------------------------------------------------------------------------------------------------------------------------

library(tidyverse)

# Regressão Linear -------------------------------------------------------------------------------------------------------------------------

### Regressão linear é uma equação para se estimar a condicional (valor esperado) de
### uma variável y dado os valores de uma ou mais variável x.

### y = a + bx

# Carregar dados e visualizar gráfico ------------------------------------------------------------------------------------------------------

view(Orange)

qplot(x = age, y = circumference, data = Orange)
cor.test(Orange$age, Orange$circumference)

# Função da regressão linear ---------------------------------------------------------------------------------------------------------------

rl <- lm(circumference ~ age, data = Orange)

plot(rl) # Gráficos do diagnóstico

summary(rl) # Resultados da regressão linear

# Interpretações da regressão linear -------------------------------------------------------------------------------------------------------

### O resultado indica rejeição da hipótese nula (variáveis não relacionadas)
### p < 0.05
### R-square responde o quanto o modelo explica a variação e relação entre variáveis
### Intercepção e inclinação

# Gráfico ----------------------------------------------------------------------------------------------------------------------------------

ggplot(Orange, aes(x = age, y = circumference)) +
  geom_point(colour = "steelblue", size = 4) +
  geom_smooth(method = "lm", colour = "black") +
  labs(title = "Regressão Linear - Dados Orange",
       x = "Idade das árvores", 
       y = "Circunferência (mm)") +
  theme_minimal()
