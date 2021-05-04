---
title: "BIOL792 Project- Amphibian Mitochondria"
author: "Ellen Wilson"
date: 'DUE: Tuesday, May, 4'
output:
  html_document: default
---
  
library(tidyverse) 
library(ggforce) 
library(ggsci)
library(patchwork)
library(Hmisc)
install.packages("scatterpie")

a_df <- read.csv('amphibianmitochondrialDNA.csv')

#Looking at the structure
a_df[1:5,]
str(a_df)




#Finding similarities for Bufo
ggplot(data=a_df,aes(x=matching_Bufo_gargarizans,y=taxa, colour=nucleotides)) + 
  geom_point(size=5, shape=15, color= "red") + theme_light() +
  stat_smooth() 


#Finding similarities for Ambystoma
ggplot(data=a_df,aes(x=matching_Ambystoma_mexicanum,y=taxa, colour=nucleotides)) + 
  geom_point(size=5, shape=15, color= "blue") + theme_light() +
  stat_smooth()

#Finding similarities for Rana
ggplot(data=a_df,aes(x=matching_Rana_temporaria,y=taxa, colour=nucleotides)) + 
  geom_point(size=5, shape=15, color= "purple") + theme_light() +
  stat_smooth() 

#basic plot
ggplot(data=a_df,aes(matching_Rana_temporaria,y=taxa)) + 
  geom_point()

#plot organized by location matching Rana temporaria
ggplot(data=a_df,aes(x=matching_Rana_temporaria,y=taxa)) + 
  geom_point(aes(colour=location), size=4)

#plot to see the number of nucleotides in species around the world.
ggplot(data=a_df,aes(x=nucleotides,y=taxa)) + 
  geom_point(aes(colour=location), size=4)


ggplot(data=a_df,aes(x=nucleotides,y=taxa)) + 
  geom_point(aes(colour=location, shape=concern), size=4)



#Rana bar plot
Rana_plot <- ggplot(data=a_df,aes(x=matching_Rana_temporaria,y=taxa, fill=location)) +
  geom_bar(stat='identity',position='dodge', col="black") + 
  ggtitle('Which species mtDNA matches closest to Rana temporaria?') + 
  scale_fill_rickandmorty()+
  theme(plot.title = element_text(size = 10, colour="black",face = "bold"))
Rana_plot


#Bufo bar plot
Bufo_plot <- ggplot(data=a_df,aes(x=matching_Bufo_gargarizans,y=taxa, fill=location)) +
  geom_bar(stat='identity',position='dodge', col="black") + 
  ggtitle('Which species mtDNA matches closest to Bufo gargarizans?') + 
  scale_fill_simpsons()+
  theme(plot.title = element_text(size = 10, colour="black",face = "bold"))
Bufo_plot


#Ambystoma mexicanum bar plot
Amb_plot <- ggplot(data=a_df,aes(x=matching_Ambystoma_mexicanum,y=taxa, fill=location)) +
  geom_bar(stat='identity',position='dodge', col="black") + 
  ggtitle('Which species mtDNA matches closest to Ambystoma mexicanum?') + 
  scale_fill_startrek()+
  theme(plot.title = element_text(size = 10, colour="black",face = "bold"))
Amb_plot




