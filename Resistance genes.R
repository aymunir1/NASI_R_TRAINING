pacman::p_load(tidyverse)
abricate_results <- read_tsv("abricate.tabular")
View(abricate_results)


abricate_results %>%
  count(GENE) %>%
  ggplot(aes(x = reorder (GENE, n), y = n)) + 
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  theme_minimal() +
  labs(title = "Detected resistance genes", x = "Gene", y = "Gene count")
  
