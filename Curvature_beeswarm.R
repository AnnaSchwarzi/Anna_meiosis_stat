################################################################################
# Module Statistic analysis for Meiosis data
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz 
# Created: 2020-12-23
################################################################################

rm(list = ls())

# Import all necessary resources 
source("bin/Library.R") # Include all libraries
source("bin/Load_curvature.R") # Include information which file to load
source("bin/Load_curvature_average.R") # Include information which file to load
source("bin/Plot_Generator_Quasirandom.R") # Include plot generation function
source("bin/Stat_Test.R") # Include Anova test function

# Generate Violin plot of all data 
P1 <- ggplot(metaI5_C, aes("metaI5_c", `Data`)) +
  geom_quasirandom(size = 1.5, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0.5, 2.5) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()

P1 <- Plot_generate(P1, metaI7_C, "metaI7_c", "orange2")

P1 <- Plot_generate(P1, metaI_C, "metaI_c", "gold1")

P1 <- Plot_generate(P1, anaI4_C, "anaI4_c", "darkgreen")

P1 <- Plot_generate(P1, anaI3_C, "anaI3_c", "dodgerblue1")

P1 <- Plot_generate(P1, anaI7_C, "anaI7_c", "magenta2")

P1 <- Plot_generate(P1, anaI1_C, "anaI1_c", "purple3")
print(P1)


P1 <- ggplot(metaII2_C, aes("metaII2_c", `Data`)) +
  geom_quasirandom(size = 1.5, color = "salmon") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0.5, 2.5) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()
P1 <- Plot_generate(P1, metaII1_C, "metaII1_c", "red3")
P1 <- Plot_generate(P1, lateanaII1_C, "lateanaII1_C", "magenta2")
P1 <- Plot_generate(P1, lateanaII2_C, "lateanaII2_C", "dodgerblue1")
P1 <- Plot_generate(P1, lateanaII3_C, "lateanaII3_C", "royalblue4")
P1 <- Plot_generate(P1, ana_meta_1_C, "ana_meta_1_C", "gray45")
P1 <- Plot_generate(P1, ana_meta_2_C, "ana_meta_2_C", "black")
P1 <- Plot_generate(P1, anaII1_C, "anaII1_C", "purple3")
P1 <- Plot_generate(P1, anaII15_C, "anaII15_C", "darkgreen")
P1 <- Plot_generate(P1, lagX_C, "lagX_C", "lightgoldenrod")
P1 <- Plot_generate(P1, lagX5_C, "lagX5_C", "chartreuse2")
P1 <- Plot_generate(P1, lagX6_C, "lagX6_C", "orange2")
P1 <- Plot_generate(P1, lagX9_C, "lagX9_C", "gold1")
print(P1)

# Generate Violin plot of average data 
P1 <- ggplot(metaIall_C, aes("metaIall_c", `Data`)) +
  geom_quasirandom(size = 1.5, color = "red3") +
  stat_summary(fun = mean, fun.min = mean, fun.max = mean, geom = "crossbar", width = 0.5) + ylim (0.7, 2.5) +
  stat_summary(fun.data = "mean_sdl", fun.args = list(mult = 1), geom = "errorbar", color = "black", width = 0.2) +
  theme_classic()

P1 <- Plot_generate(P1, anaIall_C, "anaIall_c", "salmon")

P1 <- Plot_generate(P1, metaIIall_C, "metaIIall_c", "darkgreen")

P1 <- Plot_generate(P1, anaIIall_C, "anaIIall_c", "darkolivegreen2")

P1 <- Plot_generate(P1, lateanaIIall_C, "lateanaIIall_c", "lightgoldenrod3")

print(P1)



# Statistic analysis: data pre-processing
ANOVA_Test <- rbind(
  data.frame(metaI_C[1], Name = "metaI_c"),
  data.frame(metaI5_C[1], Name = "metaI5_c"),
  data.frame(metaI7_C[1], Name = "metaI7_c"),
  data.frame(metaII2_C[1], Name = "metaII2_c"),
  data.frame(metaII1_C[1], Name = "metaII1_c"),
  data.frame(lateanaII1_C[1], Name = "lateanaII1_c"),
  data.frame(lateanaII2_C[1], Name = "lateanaII2_c"),
  data.frame(lateanaII3_C[1], Name = "lateanaII3_c"),
  data.frame(ana_meta_1_C[1], Name = "ana_meta_1_c"),
  data.frame(ana_meta_2_C[1], Name = "ana_meta_2_c"),
  data.frame(anaI1_C[1], Name = "anaI1_c"),
  data.frame(anaI3_C[1], Name = "anaI3_c"),
  data.frame(anaI4_C[1], Name = "anaI4_c"),
  data.frame(anaI7_C[1], Name = "anaI7_c"),
  data.frame(anaII1_C[1], Name = "anaII1_c"),
  data.frame(anaII15_C[1], Name = "anaII15_c"),
  data.frame(lagX_C[1], Name = "lagX_c"),
  data.frame(lagX5_C[1], Name = "lagX5_c"),
  data.frame(lagX6_C[1], Name = "lagX6_c"),
  data.frame(lagX9_C[1], Name = "lagX9_c"),
  data.frame(metaIall_C[1], Name = "metaIall_c"),
  data.frame(anaIall_C[1], Name = "anaIall_c"),
  data.frame(metaIIall_C[1], Name = "metaIIall_c"),
  data.frame(anaIIall_C[1], Name = "anaIIall_c"),
  data.frame(lateanaIIall_C[1], Name = "lateanaIIall_c")
   )

# Statistic analysis: collecting information for Anova test
Anova_Results <- tibble()
Names_List <- list("metaI_c", "metaI5_c", "metaI7_c", "metaII2_c", "metaII1_c", 
                   "lateanaII1_c", "lateanaII2_c", "lateanaII3_c", "ana_meta_1_c", "ana_meta_2_c",
                   "anaI1_c", "anaI3_c", "anaI4_c", "anaI7_c", "anaII1_c", "anaII15_c",
                   "lagX_c",  "lagX5_c",  "lagX6_c",  "lagX9_c",
                   "metaIall_c", "anaIall_c", "metaIIall_c", "anaIIall_c", "lateanaIIall_c"
                   )
Repetition <- as.numeric(length(Names_List) - 1)
Counter <- 1

# Statistic analysis: Anova test for all data set
for(i in 1:Repetition){
  k = 1
  j = 2

 while (j <= length(Names_List)) {
   Anova_Results[Counter, 1] <- Anova_test(ANOVA_Test, Names_List[[k]], Names_List[[j]])
   Anova_Results[Counter, 2] <- paste(Names_List[[k]], "~", Names_List[[j]], sep = "")
   
   Counter <- Counter + 1
   j <- j + 1
 }
    Names_List <- Names_List[-1]  
}

i <- 1
while (i <= nrow(Anova_Results)) {
  if (Anova_Results[i, 1] > 0.05) {
    Anova_Results[i, 3] <- "ns"
  } else if (Anova_Results[i, 1] >= 0.01 & Anova_Results[i, 1] < 0.05) {
    Anova_Results[i, 3] <- "* P >= 0.05"
  } else if (Anova_Results[i, 1] >= 0.001 & Anova_Results[i, 1] < 0.01) {
    Anova_Results[i, 3] <- "** P >= 0. 01"
  } else if (Anova_Results[i, 1] < 0.001) {
    Anova_Results[i, 3] <- "*** P >= 0.001"
  } else {
    Anova_Results[i, 3] <- "error"
  }

  if (i == nrow(Anova_Results)) {
    names(Anova_Results)[1] <- "P value"
    names(Anova_Results)[2] <- "test"
    names(Anova_Results)[3] <- "signif."
  }
  i <- i + 1
}

# Save file as csv
write.csv(Anova_Results, file = "Anova_Results_curvature_beeswarm.csv")
