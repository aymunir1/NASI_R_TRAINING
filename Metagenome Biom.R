
# Installation of packages
install.packages("Bioconductor")


#loading packages
if(!require(Pacman))  install.packages("pacman")
pacman::p_load(phyloseq, tidyverse)


#loading dataset  
Combined_biom <- import_biom(file.choose())
#         or

Combined_biom <- import_biom("Combined SR[Kraken-biom output file].biom2")
Combined_biom


View(Combined_biom@otu_table)
view(Combined_biom@tax_table)
view(Combined_biom@sam_data)


#Remove unnecessary characters in .data matrix
Combined_biom@tax_table@.Data <- 
  substring(Combined_biom@tax_table@.Data, 4)
View(Combined_biom@tax_table@.Data)

#Rename tghe column names in the object
colnames(Combined_biom@tax_table@.Data) <- c("Kingdomn", "Phylum", "Class","Order", "Family", "Genus", "Species")

#Exploring the taxa present
unique(Combined_biom@tax_table@.Data[, "Phylum"])
sum(Combined_biom@tax_table@.Data[, "Phylum"] == "Proteobacteria")

Combined_biom@tax_table <- subset_taxa(Combined_biom@tax_table, "Kingdom" == "Bacteria")
summary(Combined_biom@tax_table@.Data == "")



#Diversity calculations
#alpha diversity calculations
diversity_Values <- 
  estimate_richness(Combined_biom,
                    measures = c("Shannon", "Observed", "Choal"))
diversity_Values

plot_richness(physeq = Combined_biom,
              measures = c("Shannon", "Observed", "Choal"))


#beta diversity calculation
Combined_biom_percentage <- 
  transform_sample_counts(Combined_biom,function(x) x*100/sum(x))
head(Combined_biom_percentage@otu_table@.Data)

#compare the abundance given by the percentage 
meta_ord <- ordinate(physeq = Combined_biom_percentage, method = "NMDS", distance = "bray")


