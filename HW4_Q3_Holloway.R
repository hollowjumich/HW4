#used prompt in chatgpt to figure out why my labels were not displaying 
#"how do I fix this R code so my titles show up?"
# My original code is below that I pasted into CHATGPT; turns out I needed the + signs at the end of my lines of code for each plot. 

#library(ggplot2) 
#library(gridExtra)

#cars93 <- MASS::Cars93
#ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
#  geom_point(color = "grey60") +
#  geom_smooth(se = TRUE, method = "loess", formula = y ~ x, color = "#0072B2") +
#  scale_x_continuous(
#    name = "price (USD)",
#    breaks = c(20, 40, 60),
#    labels = c("$20,000", "$40,000", "$60,000")
#  ) +
#  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

#cars_plot <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) 

#lm_plot <- cars_plot +
#  geom_point(color = "grey60") +
#  geom_smooth(method = "lm", se = TRUE, color = "#8FE388")
#ggtitle("LM - Figure1")
#theme(plot.title = element_text(size = 14, color = "#8FE388"))
#print(lm_plot)
#glm_plot <- cars_plot +
#  geom_point(color = "grey60") +
#  geom_smooth(method = "glm", se = TRUE, color = "#FE8D6D")
#ggtitle("GLM - Figure2")
#theme(plot.title = element_text(size = 14, color = "#FE8D6D"))
#print(glm_plot)
#gam_plot <- cars_plot +
#  geom_point(color = "grey60") +
#  geom_smooth(method = "gam", se = TRUE, color = "#7C6BEA")
#ggtitle("GAM - Figure3")
#theme(plot.title = element_text(size = 14, color = "#7c6bea"))
#print(gam_plot)
#grid.arrange(lm_plot, glm_plot, gam_plot, ncol=3)


#HW Q3 Answer: 

library(ggplot2) 
library(gridExtra)

cars93 <- MASS::Cars93
ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) +
  geom_point(color = "grey60") +
  geom_smooth(se = TRUE, method = "loess", formula = y ~ x, color = "#0072B2") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)")

cars_plot <- ggplot(cars93, aes(x = Price, y = Fuel.tank.capacity)) 

lm_plot <- cars_plot +
  geom_point(color = "grey60") +
  geom_smooth(method = "lm", se = TRUE, color = "#8FE388") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("LM - Figure1") +
  theme(plot.title = element_text(size = 14, color = "#8FE388"))

glm_plot <- cars_plot +
  geom_point(color = "grey60") +
  geom_smooth(method = "glm", se = TRUE, color = "#FE8D6D") +
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  ggtitle("GLM - Figure2") +
  theme(plot.title = element_text(size = 14, color = "#FE8D6D"))
  
gam_plot <- cars_plot +
  geom_point(color = "grey60") +
  geom_smooth(method = "gam", se = TRUE, color = "#7C6BEA")+ 
  ggtitle("GAM - Figure3")+
  scale_x_continuous(
    name = "price (USD)",
    breaks = c(20, 40, 60),
    labels = c("$20,000", "$40,000", "$60,000")
  ) +
  scale_y_continuous(name = "fuel-tank capacity\n(US gallons)") +
  theme(plot.title = element_text(size = 14, color = "#7c6bea"))

grid.arrange(lm_plot,glm_plot,gam_plot, ncol=3)

