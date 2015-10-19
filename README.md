# Australian Tax Data

This R package contains the `sample_12_13` dataset. This is a cleaned version of
the 2012-13 two per cent sample of Australian tax return data.

See [the ATO website](https://www.ato.gov.au/About-ATO/Research-and-statistics/In-detail/Tax-statistics/Taxation-statistics-2012-13/?anchor=IndSampleFile#IndSampleFile) for further information.

## Installation and usage

Install it from github with:

```{r}
devtools::install_github("thmcmahon/ozTaxData")
```

Load the dataset with:

```{r}
data(sample_12_13) 
```

More information on the variables in the dataset is available in the help file.

```{r}
?sample_12_13
```