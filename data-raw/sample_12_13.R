library(readr)


get_data <- function() {
    # Chokes on the Region column which is all integers and then a `?`
    tax <- read_csv('data-raw/2013_sample_file.txt',
                    col_types = list(Region = col_character()))
    tax
}


add_factor_labels <- function(tax) {
    # Adds factor labels from the variables file
    tax$Partner_status <- factor(tax$Partner_status, levels = c(0, 1),
                                 labels = c('Single', 'Married/De Facto'))

    tax$Ind <- factor(tax$Ind)

    tax$Gender <- factor(tax$Gender, levels = c(0,1),
                         labels = c('Male', 'Female'))

    tax$age_range <-
        factor(tax$age_range, levels = c(0:11),
               labels = c('70 and over', '65 to 69', '60 to 64',
                          '55 to 59', '50 to 54', '45 to 49',
                          '40 to 44', '35 to 39', '30 to 34',
                          '25 to 29', '20 to 24', 'under 20'))

    tax$Occ_code <-
        factor(tax$Occ_code,
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

    tax$Region <- factor(tax$Region,
                         # This is some weirdness in the data. According
                         # to the Table 3A of the item code definitions,
                         # there is *no* code 33 and then there's a `?`
                         # code that has about 955 entries.
                         levels = c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                                    11, 12, 13, 14, 15, 16, 17, 18, 19,
                                    20, 21, 22, 23, 24, 25, 26, 27, 28,
                                    29, 30, 31, 32, 34, 35, '?'),

                         labels = c('ACT major urban - capital city',
                                    'NSW major urban - capital city',
                                    'NSW other urban',
                                    'NSW regional - high urbanisation',
                                    'NSW regional - low urbanisation',
                                    'NSW rural',
                                    'NT major urban - capital city',
                                    'NT regional - high urbanisation',
                                    'NT regional - low urbanisation',
                                    'QLD major urban - capital city',
                                    'QLD other urban',
                                    'QLD regional - high urbanisation',
                                    'QLD regional - low urbanisation',
                                    'QLD rural',
                                    'SA major urban - capital city',
                                    'SA regional - high urbanisation',
                                    'SA regional - low urbanisation',
                                    'SA rural',
                                    'TAS major urban - capital city',
                                    'TAS other urban',
                                    'TAS regional - high urbanisation',
                                    'TAS regional - low urbanisation',
                                    'Tas rural',
                                    'VIC major urban - capital city',
                                    'VIC other urban',
                                    'VIC regional - high urbanisation',
                                    'VIC regional - low urbanisation',
                                    'VIC rural',
                                    'WA major urban - capital city',
                                    'WA other urban',
                                    'WA regional - high urbanisation',
                                    'WA regional - low urbanisation',
                                    'WA rural',
                                    'NSW other',
                                    'WA other',
                                    '?'))

    tax$Lodgment_method <- factor(tax$Lodgment_method,
                                  levels = c("A","S"),
                                  labels = "Tax Agent","Self Preparer")

    return(tax)
}


prep_data <- function() {
    tax <- get_data()
    tax <- add_factor_labels(tax)
    return(tax)
}

sample_12_13 <- prep_data()

#save(sample_12_13, file = 'data/sample_12_13.Rdata', compress = "xz")
devtools::use_data(sample_12_13, pkg = ".", compress = "xz")