library(ggplot2)

library(dplyr)

data <- read.csv("~/DataScienceResearch/neural-network/Bekuo/Data - Sheet1.csv")
View(data)

# Save R object as a file
saveRDS(data, "~/DataScienceResearch/neural-network/Bekuo/data.RDS")

ggplot(data = data, aes(x = Epoch, y = Accuracy)) +
  geom_line(stat = "summary",
            fun = "mean")
