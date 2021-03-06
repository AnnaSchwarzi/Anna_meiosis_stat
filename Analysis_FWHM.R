################################################################################
# Module Analysis of FWHM for meiosis data
#
# (c) 2020 Schwarz/Kiewisz
# This code is licensed under GPL V3.0 license (see LICENSE.txt for details)
#
# Author: Anna Schwarz & Robert Kiewisz 
# Created: 2020-12-27
################################################################################

rm(list = ls())

# Import all necessary resources 
source("bin/Library.R") # Include all libraries
source("bin/Load_FWHM.R") # Include information which file to load
source("bin/FWHM.R") # Gaussian fit and FWHM
source("bin/Plot_Generator_line.R") # Include plot generation function

# Usage example: FWHM(x, y, Output_ID)
#
# Where x - X axis data
# Where y - Y axis data
# Where Output_ID: 1 for peak distribution coordinates
#                  2 for FWHM coordinates
#                  3 for length of of FWHM
#                  4 for Gaussian fit

## Peak distribution for each data
Peaks <- tibble()
for(i in 2:ncol(Data)){
  j = i - 1
  Peaks[j,1:2] <- FWHM(Data[1], Data[i], 1)
}

## FWHM coordinates for each data
FWHM_Coord <- tibble()
for (i in 2:ncol(Data)) {
  j = i - 1
  FWHM_Coord[j,1:3] <- FWHM(Data[1], Data[i], 2)
}

## FWHM length for each data
FWHM_Length <- tibble()
for (i in 2:ncol(Data)) {
  j = i - 1
  FWHM_Length[j,1] <- FWHM(Data[1], Data[i], 3)
}
names(FWHM_Length)[1] <- "Lenght_nm"

## FWHM length for each data
Gaussian_fit <- tibble("Slice" = Data$`nm/slice`)
for (i in 2:ncol(Data)) {
  Gaussian_fit[1:nrow(Data),i] <- FWHM(Data[1], Data[i], 4)
  names(Gaussian_fit)[i] <- paste(colnames(Data)[i])
}

## Plot Gaussian fitted data
P1 <- ggplot(Gaussian_fit, aes(Slice, A1)) + geom_line(color = "cadetblue3", size = 0.5) + theme_classic()
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$A2, "deepskyblue4")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$A3, "royalblue1")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$A4, "dodgerblue")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$A5, "seagreen")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$A6, "aquamarine1")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$A7, "lightblue3")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B1, "cadetblue3")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B2, "deepskyblue4")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B3, "royalblue1")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B4, "dodgerblue")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B5, "seagreen")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B6, "aquamarine1")
P1 <- Plot_generate_line(P1, Gaussian_fit, Gaussian_fit$Slice, Gaussian_fit$B7, "lightblue3")
print(P1)

#Save output as .csv files
write.csv(Peaks, file = "Gaussian_fit_Peaks.csv")
write.csv(FWHM_Coord, file = "Gaussian_fit_FWHM_Coord.csv")
write.csv(FWHM_Length, file = "Gaussian_fit_FWHM_Length.csv")
write.csv(Gaussian_fit, file = "Gaussian_fit.csv")
