# Load data
library(readxl)
library(tidyverse)
kMT_classification <- read_excel("Data/aMT_classification_MII.xls",
                                sheet = "aMTs_length",
                                col_names = FALSE
)

#Load data end-on
assign(
  paste(kMT_classification[1, 1]),
  kMT_classification[2:nrow(kMT_classification), 1]
)
assign(
  paste(kMT_classification[1, 1]),
  na.omit(get(paste(kMT_classification[1, 1])))
)
metaII1a_E <- data.frame(as.numeric(as.matrix(`metaII1`[2:nrow(`metaII1`),1])))
names(metaII1a_E)[1] <- "Data"
rm(`metaII1`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 4]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaII2a_E <- data.frame(as.numeric(as.matrix(`metaII2`[2:nrow(`metaII2`),1])))
names(metaII2a_E)[1] <- "Data"
rm(`metaII2`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 7]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
lagX6a_E <- data.frame(as.numeric(as.matrix(`lagX6`[2:nrow(`lagX6`),1])))
names(lagX6a_E)[1] <- "Data"
rm(`lagX6`)

assign(
  paste(kMT_classification[1, 10]),
  kMT_classification[2:nrow(kMT_classification), 10]
)
assign(
  paste(kMT_classification[1, 10]),
  na.omit(get(paste(kMT_classification[1, 10])))
)
lagXa_E <- data.frame(as.numeric(as.matrix(`lagX`[2:nrow(`lagX`),1])))
names(lagXa_E)[1] <- "Data"
rm(`lagX`)

assign(
  paste(kMT_classification[1, 13]),
  kMT_classification[2:nrow(kMT_classification), 13]
)
assign(
  paste(kMT_classification[1, 13]),
  na.omit(get(paste(kMT_classification[1, 13])))
)
lagX5a_E <- data.frame(as.numeric(as.matrix(`lagX5`[2:nrow(`lagX5`),1])))
names(lagX5a_E)[1] <- "Data"
rm(`lagX5`)

assign(
  paste(kMT_classification[1, 16]),
  kMT_classification[2:nrow(kMT_classification), 16]
)
assign(
  paste(kMT_classification[1, 16]),
  na.omit(get(paste(kMT_classification[1, 16])))
)
anaII15a_E <- data.frame(as.numeric(as.matrix(`anaII15`[2:nrow(`anaII15`),1])))
names(anaII15a_E)[1] <- "Data"
rm(`anaII15`)

assign(
  paste(kMT_classification[1, 19]),
  kMT_classification[2:nrow(kMT_classification), 19]
)
assign(
  paste(kMT_classification[1, 19]),
  na.omit(get(paste(kMT_classification[1, 19])))
)
lateanaII2a_E <- data.frame(as.numeric(as.matrix(`lateanaII2`[2:nrow(`lateanaII2`),1])))
names(lateanaII2a_E)[1] <- "Data"
rm(`lateanaII2`)

assign(
  paste(kMT_classification[1, 22]),
  kMT_classification[2:nrow(kMT_classification), 22]
)
assign(
  paste(kMT_classification[1, 22]),
  na.omit(get(paste(kMT_classification[1, 22])))
)
lateanaII3a_E <- data.frame(as.numeric(as.matrix(`lateanaII3`[2:nrow(`lateanaII3`),1])))
names(lateanaII3a_E)[1] <- "Data"
rm(`lateanaII3`)

assign(
  paste(kMT_classification[1, 25]),
  kMT_classification[2:nrow(kMT_classification), 25]
)
assign(
  paste(kMT_classification[1, 25]),
  na.omit(get(paste(kMT_classification[1, 25])))
)
lateanaII1a_E <- data.frame(as.numeric(as.matrix(`lateanaII1`[2:nrow(`lateanaII1`),1])))
names(lateanaII1a_E)[1] <- "Data"
rm(`lateanaII1`)

assign(
  paste(kMT_classification[1, 28]),
  kMT_classification[2:nrow(kMT_classification), 28]
)
assign(
  paste(kMT_classification[1, 28]),
  na.omit(get(paste(kMT_classification[1, 28])))
)
anaII1a_E <- data.frame(as.numeric(as.matrix(`anaII1`[2:nrow(`anaII1`),1])))
names(anaII1a_E)[1] <- "Data"
rm(`anaII1`)

#Load data lateral
assign(
  paste(kMT_classification[1, 1]),
  kMT_classification[2:nrow(kMT_classification), 2]
)
assign(
  paste(kMT_classification[1, 1]),
  na.omit(get(paste(kMT_classification[1, 1])))
)
metaII1a_L <- data.frame(as.numeric(as.matrix(`metaII1`[2:nrow(`metaII1`),1])))
names(metaII1a_L)[1] <- "Data"
rm(`metaII1`)

assign(
  paste(kMT_classification[1, 4]),
  kMT_classification[2:nrow(kMT_classification), 5]
)
assign(
  paste(kMT_classification[1, 4]),
  na.omit(get(paste(kMT_classification[1, 4])))
)
metaII2a_L <- data.frame(as.numeric(as.matrix(`metaII2`[2:nrow(`metaII2`),1])))
names(metaII2a_L)[1] <- "Data"
rm(`metaII2`)

assign(
  paste(kMT_classification[1, 7]),
  kMT_classification[2:nrow(kMT_classification), 8]
)
assign(
  paste(kMT_classification[1, 7]),
  na.omit(get(paste(kMT_classification[1, 7])))
)
lagX6a_L <- data.frame(as.numeric(as.matrix(`lagX6`[2:nrow(`lagX6`),1])))
names(lagX6a_L)[1] <- "Data"
rm(`lagX6`)

assign(
  paste(kMT_classification[1, 10]),
  kMT_classification[2:nrow(kMT_classification), 11]
)
assign(
  paste(kMT_classification[1, 10]),
  na.omit(get(paste(kMT_classification[1, 10])))
)
lagXa_L <- data.frame(as.numeric(as.matrix(`lagX`[2:nrow(`lagX`),1])))
names(lagXa_L)[1] <- "Data"
rm(`lagX`)

assign(
  paste(kMT_classification[1, 13]),
  kMT_classification[2:nrow(kMT_classification), 14]
)
assign(
  paste(kMT_classification[1, 13]),
  na.omit(get(paste(kMT_classification[1, 13])))
)
lagX5a_L <- data.frame(as.numeric(as.matrix(`lagX5`[2:nrow(`lagX5`),1])))
names(lagX5a_L)[1] <- "Data"
rm(`lagX5`)

assign(
  paste(kMT_classification[1, 16]),
  kMT_classification[2:nrow(kMT_classification), 17]
)
assign(
  paste(kMT_classification[1, 16]),
  na.omit(get(paste(kMT_classification[1, 16])))
)
anaII15a_L <- data.frame(as.numeric(as.matrix(`anaII15`[2:nrow(`anaII15`),1])))
names(anaII15a_L)[1] <- "Data"
rm(`anaII15`)

assign(
  paste(kMT_classification[1, 19]),
  kMT_classification[2:nrow(kMT_classification), 20]
)
assign(
  paste(kMT_classification[1, 19]),
  na.omit(get(paste(kMT_classification[1, 19])))
)
lateanaII2a_L <- data.frame(as.numeric(as.matrix(`lateanaII2`[2:nrow(`lateanaII2`),1])))
names(lateanaII2a_L)[1] <- "Data"
rm(`lateanaII2`)

assign(
  paste(kMT_classification[1, 22]),
  kMT_classification[2:nrow(kMT_classification), 23]
)
assign(
  paste(kMT_classification[1, 22]),
  na.omit(get(paste(kMT_classification[1, 22])))
)
lateanaII3a_L <- data.frame(as.numeric(as.matrix(`lateanaII3`[2:nrow(`lateanaII3`),1])))
names(lateanaII3a_L)[1] <- "Data"
rm(`lateanaII3`)

assign(
  paste(kMT_classification[1, 25]),
  kMT_classification[2:nrow(kMT_classification), 26]
)
assign(
  paste(kMT_classification[1, 25]),
  na.omit(get(paste(kMT_classification[1, 25])))
)
lateanaII1a_L <- data.frame(as.numeric(as.matrix(`lateanaII1`[2:nrow(`lateanaII1`),1])))
names(lateanaII1a_L)[1] <- "Data"
rm(`lateanaII1`)

assign(
  paste(kMT_classification[1, 28]),
  kMT_classification[2:nrow(kMT_classification), 29]
)
assign(
  paste(kMT_classification[1, 28]),
  na.omit(get(paste(kMT_classification[1, 28])))
)
anaII1a_L <- data.frame(as.numeric(as.matrix(`anaII1`[2:nrow(`anaII1`),1])))
names(anaII1a_L)[1] <- "Data"
rm(`anaII1`)
