library(tidyverse)
library(rhdf5)

metadata <- read.csv('../../open-problems-multimodal/metadata.csv')

train <- h5read('../../open-problems-multimodal/train_cite_inputs.h5', '/train_cite_inputs')
train_data <- train[4][[1]] # not enough RAM as dataframe
train_col <- as.data.frame(train[2][[1]])
train_row <- as.data.frame(train[1][[1]])

