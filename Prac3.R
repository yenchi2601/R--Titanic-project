library(readxl)

titanic <- read_excel("titanic.xlsx")
titanic

titanic_tab <- table(titanic$survived, titanic$pclass)
titanic_tab

addmargins(titanic_tab)
titanic_prop <- prop.table(titanic_tab, margin = 2)
titanic_prop


barplot(titanic_tab, legend.text = TRUE, args.legend = list(x="topleft"))
barplot(titanic_tab, beside = TRUE,
        legend.text = TRUE, 
        args.legend = list(x="topleft"),
        xlab = "Passenger Class",
        ylab = "Survived")
barplot(titanic_prop, legend.text = TRUE)

osteo <- read_excel("bone.xlsx")
osteo

plot(NonDom ~ Dom, data = osteo)
