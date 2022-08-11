data <- read.csv("/home/alle/Bureau/GMC/Data Analytics/HR_comma_sep.csv")
data
data_standardize <- as.data.frame(scale(data[1:4]))
data_standardize
data.mat <- as.matrix(data_standardize)
cov.mat <- cor(data_standardize)
pca <- prcomp(data_standardize,center = T,scale. = T)
summary(pca)

library(ggfortify)
autoplot(pca, data = iris, colour = 'Species')
