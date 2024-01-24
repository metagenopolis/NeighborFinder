## Creation of metadata
download.file(url = "https://entrepot.recherche.data.gouv.fr/api/access/datafile/:persistentId?persistentId=doi:10.57745/U0UGEL", 
              destfile = "metadata.tar.gz")
untar("metadata.tar.gz")
meta <- readxl::read_excel("metadata_2250_CRC_cohort_20231114.xlsx", sheet = 3)

# Metadata files for each subgroup
meta_CRC <- meta %>% filter(class=="CRC")
meta_CRC_JPN <- meta_CRC %>% filter(study_accession=="PRJDB4176") %>% as.data.frame()
meta_CRC_CHN <- meta_CRC %>% filter(country=="CHN") %>% as.data.frame()
meta_CRC_EUR <- meta_CRC %>% filter(country %in% c("DEU","ITA","FRA","AUT")) %>% as.data.frame()
meta_CRC_JPN_CHN_EUR <- rbind.data.frame(meta_CRC_JPN,meta_CRC_CHN,meta_CRC_EUR) %>% as.data.frame()


metadata <- list(CRC_JPN=meta_CRC_JPN, CRC_CHN=meta_CRC_CHN, CRC_EUR=meta_CRC_EUR, CRC_JPN_CHN_EUR=meta_CRC_JPN_CHN_EUR)

usethis::use_data(metadata, overwrite = TRUE)


## Creation of taxo 
taxo_file <- read.table(file=url("https://entrepot.recherche.data.gouv.fr/api/access/datafile/:persistentId?persistentId=doi:10.57745/OHAZJO"),
                        header=TRUE, sep="\t", dec=".", stringsAsFactors = FALSE)
data <- read.table(file=url("https://entrepot.recherche.data.gouv.fr/api/access/datafile/:persistentId?persistentId=doi:10.57745/S1T7TJ"),
                   header=TRUE, sep="\t", dec=".", stringsAsFactors = FALSE)
library(dplyr)
taxo <- left_join(data.frame(msp_id=data$msp_id),taxo_file, by="msp_id") %>% select(msp_id, species, genus, catalogue)

usethis::use_data(taxo)


## Creation of data
data <- read.table(file=url("https://entrepot.recherche.data.gouv.fr/api/access/datafile/:persistentId?persistentId=doi:10.57745/S1T7TJ"),
                   header=TRUE, sep="\t", dec=".", stringsAsFactors = FALSE)
#Data files for each subgroup
data_CRC <- data[,c(1,which(colnames(data) %in% meta_CRC$secondary_sample_accession))]
data_CRC_JPN <- data[,c(1,which(colnames(data) %in% meta_CRC_JPN$secondary_sample_accession))]
data_CRC_CHN <- data[,c(1,which(colnames(data) %in% meta_CRC_CHN$secondary_sample_accession))]
data_CRC_EUR <- data[,c(1,which(colnames(data) %in% meta_CRC_EUR$secondary_sample_accession))]

data_CRC_JPN_CHN_EUR<-cbind.data.frame(species=taxo$species,cbind(data_CRC_JPN, data_CRC_CHN[,-1], data_CRC_EUR[,-1]))
data_CRC_JPN<-cbind.data.frame(species=taxo$species,data_CRC_JPN)
data_CRC_CHN<-cbind.data.frame(species=taxo$species,data_CRC_CHN)
data_CRC_EUR<-cbind.data.frame(species=taxo$species,data_CRC_EUR)

data <- list(CRC_JPN=data_CRC_JPN, CRC_CHN=data_CRC_CHN, CRC_EUR=data_CRC_EUR, CRC_JPN_CHN_EUR=data_CRC_JPN_CHN_EUR)

usethis::use_data(data, overwrite = TRUE)


## Creation of graphs
G_CRC<-graph_step(data$CRC_JPN_CHN_EUR, col_msp_id="msp_id")
G_JPN<-graph_step(data$CRC_JPN, col_msp_id="msp_id")

graphs<-list(CRC_JPN=G_JPN, CRC_JPN_CHN_EUR=G_CRC)

usethis::use_data(graphs, overwrite = TRUE)



