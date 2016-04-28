library(readr)

sample_13_14 <- read_csv('data-raw/2014_sample_file.csv')

sample_13_14$Lodgment_method[sample_13_14$Lodgment_method == 'A'] <- 'Tax Agent'
sample_13_14$Lodgment_method[sample_13_14$Lodgment_method == 'S'] <- 'Self Preparer'

sample_13_14$PHI_Ind[sample_13_14$PHI_Ind == 0] <- "No"
sample_13_14$PHI_Ind[sample_13_14$PHI_Ind == 1] <- "Yes"

sample_13_14$Gender[sample_13_14$Gender == 0] <- "Male"
sample_13_14$Gender[sample_13_14$Gender == 1] <- "Female"


add_factor_labels <- function(sample_13_14) {
    # Adds factor labels from the variables file
    sample_13_14$Partner_status <- factor(sample_13_14$Partner_status, levels = c(0, 1),
                                 labels = c('Single', 'Married/De Facto'))

    sample_13_14$age_range <-
        factor(sample_13_14$age_range, levels = c(0:11),
               labels = c('70 and over', '65 to 69', '60 to 64',
                          '55 to 59', '50 to 54', '45 to 49',
                          '40 to 44', '35 to 39', '30 to 34',
                          '25 to 29', '20 to 24', 'under 20'))

    sample_13_14$Occ_code <-
        factor(sample_13_14$Occ_code,
               levels = c(0:9),
               labels = c('Occupation not listed/ Occupation not specified',
                          'Managers',
                          'Professionals',
                          'Technicians and Trades Workers',
                          'Community and Personal Service Workers',
                          'Clerical and Administrative Workers',
                          'Sales workers',
                          'Machinery operators and drivers',
                          'Labourers',
                          'Consultants, apprentices and type not specified or not listed'))

    return(sample_13_14)
}

sample_13_14 <- add_factor_labels(sample_13_14)

devtools::use_data(sample_13_14, pkg = ".", compress = "xz")
