#' The 2012–13 individuals tax returns sample file
#'
#' The ATO has a series of sample files of individual tax return information
#' available for more advanced users. These files are confidentialised in order
#' to protect the identities of taxpayers. For income years 2003–04 to 2010–11,
#' files containing a 1\% sample of records are available. From the 2011–12 income
#' year, these files contain a 2\% sample of records.
#'
#' This is the 2012-13 2\% sample.
#'
#'
#' @usage
#'  data(sample_12_13)
#'
#' @format A data frame with XX variables:
#' \describe{
#' \item{Ind}{unique identifier}
#'  \item{Gender}{Gender}
#'  \item{Age_range}{Age in five year ranges. Based on Date of Birth label, this is their age as on 30 June 2012.}
#'  \item{Occ_code}{Salary/wage occupation code. Income item 1, label X, first digit.}
#'  \item{Partner_status}{Has reported a spouse date of birth or hasn't. Derived from Spouse details - married or de facto, Spouse date of birth, label K.}
#'  \item{Region}{Geographic region as used in Tax Stats (based on residential postcode). Derived from residential postcode.}
#'  \item{Lodgment_method}{Lodgment method. Via tax agent,  or self prepared return.}
#'  \item{PHI_Ind}{Private Health Insurance indicator. Derived indicator - if an individual completed some private health insurance details at labels B or C in the middle of page 4.}
#'  \item{\strong{INCOME}}
#'  \item{Sw_amt}{Salary or wage amount. Income item 1, sum of labels C, D, E, F, G.}
#'  \item{Alow_ben_amt}{Allowances amount. Income item 2, label K.}
#'  \item{ETP_txbl_amt}{Employment termination payments taxable component. Income item 4, label I.}
#'  \item{Grs_int_amt}{Gross interest amount. Income item 10, label L.}
#'  \item{Aust_govt_pnsn_allw_amt}{Government pensions or allowances amount. Income items 5, label A and item 6, label B.}
#'  \item{Unfranked_Div_amt}{Unfranked dividends. Income item 11, label S.}
#'  \item{Frk_Div_amt}{Franked dividends (not including the credit). Income item 11, label T.}
#'  \item{Dividends_franking_cr_amt}{Dividends franking credit. Income item 11, label U.}
#'  \item{Net_rent_amt}{Net rental income. Income item 21, net rent box.}
#'  \item{Gross_rent_amt}{Gross rental income. Income item 21, label P.}
#'  \item{Other_rent_ded_amt}{Other rental deductions. Income item 21, label U.}
#'  \item{Rent_int_ded_amt}{Rental interest deductions. Income item 21, label Q.}
#'  \item{Rent_cap_wks_amt}{Capital works deductions. Income item 21, label F.}
#'  \item{Net_farm_management_amt}{Net farm management deposits. Income item 17, Label E.}
#'  \item{Net_PP_BI_amt}{Net primary production business income. Income item 15, label B}
#'  \item{Net_NPP_BI_amt}{Net non-primary production business income. Income item 15, label C.}
#'  \item{Total_PP_BI_amt}{Total primary production business income. Item P8, sum of labels C, A, E, N, G and I.}
#'  \item{Total_NPP_BI_amt}{Total non-primary production business income. Item P8, sum of labels D, B, F, O, H and J.}
#'  \item{Total_PP_BE_amt}{Total primary production business expenses. Item P8, label S.}
#'  \item{Total_NPP_BE_amt}{Total non-primary production business expenses. Item P8, label T.}
#'  \item{Net_CG_amt}{Net capital gains. Income item 18, label A.}
#'  \item{Tot_CY_CG_amt}{Total capital gains. Income item 18, label H.}
#'  \item{Net_PT_PP_dsn}{Net partnership and trusts primary production distributions. Income item 13, net primary production distribution box below and to the right of label X.}
#'  \item{Net_PT_NPP_dsn}{Net partnership and trusts non-primary production distributions. Income item 13, net non-primary production distribution box below and to the right of label Y.}
#'  \item{Taxed_othr_pnsn_amt}{Australian annuity or superannuation income stream - taxed. Income item 7, labels J and Y.}
#'  \item{Untaxed_othr_pnsn_amt}{Australian annuity or superannuation income stream - untaxed. Income item 7, labels N and Z.}
#'  \item{Other_foreign_inc_amt}{Other net foreign source income. Income item 20, label M.}
#'  \item{Other_inc_amt}{Other income not separately listed. Eg total income less listed income. Total income or loss (from page 4) less all income listed above.}
#'  \item{Tot_inc_amt}{Total income. Total income or loss (from page 4).}
#'  \item{\strong{DEDUCTIONS}}
#'  \item{WRE_car_amt}{Work related car expenses. Deduction item D1, label A.}
#'  \item{WRE_trvl_amt}{Work related expenses. Deduction item D2, label B.}
#'  \item{WRE_uniform_amt}{Work related uniform expenses. Deduction item D3, label C.}
#'  \item{WRE_self_amt}{Work related self education expenses. Deduction item D4, label D.}
#'  \item{WRE_other_amt}{Work related Other expenses. Deduction item D5, label E.}
#'  \item{Div_Ded_amt}{Dividend Deductions. Deduction item D8, label H.}
#'  \item{Intrst_Ded_amt}{Interest Deductions. Deduction item D7, label I.}
#'  \item{Gift_amt}{Gifts or donation deductions. Deduction item D9, label J.}
#'  \item{Non_emp_spr_amt}{Non-employer sponsored superannuation contribution deductions. Deduction item D13, label H.}
#'  \item{Cost_tax_affairs_amt}{Cost of managing tax affairs. Deduction item D10, label M.}
#'  \item{Other_Ded_amt}{Other deductions not separately listed. Eg total deductions less listed deductions. Total deductions - second box below D10 label M on page 4 less deductions listed above.}
#'  \item{Tot_ded_amt}{Total deductions. Total deductions - second box below D10 label M on page 4.}
#'  \item{\strong{LOSSES}}
#'  \item{PP_loss_claimed}{Primary production prior year losses claimed this year. Losses item L1, label F.}
#'  \item{NPP_loss_claimed}{Non-primary production prior year losses claimed this year. Losses item L1, label Z.}
#'  \item{\strong{OTHER}}
#'  \item{Rep_frng_ben_amt}{Reportable fringe benefits. Income test item IT1, label W.}
#'  \item{Med_Exp_TO_amt}{Medical expenses tax offset. Tax offset item T9, label X.}
#'  \item{Asbl_forgn_source_incm_amt}{Assessable foreign source income. Income item 20 Label E.}
#'  \item{Spouse_adjusted_taxable_inc}{Spouse adjusted taxable income. Calculated from Page 7 Spouse details section.}
#'  \item{Net_fincl_invstmt_lss_amt}{Net financial investment loss. Income test item IT5, label X.}
#'  \item{Rptbl_Empr_spr_cont_amt}{Reportable employer superannuation contributions. Income test item IT2, label T.}
#'  \item{Cr_PAYG_ITI_amt}{Credit for PAYGI installments. Tax credit for pay-as-you-go  installments.}
#'  \item{TFN_amts_wheld_gr_intst_amt}{Tax file number amounts withheld from gross interest. Income item 10, label M.}
#'  \item{TFN_amts_wheld_divs_amt}{Tax file number amounts withheld from dividends. Income item 11, Label V.}
#'  \item{Hrs_to_prepare_BPI_cnt}{Hours taken to prepare and complete the Business and professional items section. End of Business and professional items section section, label S.}
#'  \item{Taxable_Income}{Taxable income (total income less total deductions and allowable prior year losses). Taxable income or loss, label $ (below label Z on page 4)}
#'  \item{Help_debt}{Higher Education Loan Program HELP) debt. HELP debt as at 30-06-2012}
#' }
"sample_12_13"