library(readr)
AfroRoundVII <- read_csv(url("https://media.githubusercontent.com/media/ecstory/mai_hassan_barometer_proj/main/AfroRoundVII.csv"))

AfroRoundVII_RelevantTest <- AfroRoundVII[! (AfroRoundVII$COUNTRY==1 | AfroRoundVII$COUNTRY==2 | AfroRoundVII$COUNTRY==3 | AfroRoundVII$COUNTRY==4 | AfroRoundVII$COUNTRY==5 | AfroRoundVII$COUNTRY==6 | AfroRoundVII$COUNTRY==7 | AfroRoundVII$COUNTRY==8 | AfroRoundVII$COUNTRY==9 | AfroRoundVII$COUNTRY==10 | AfroRoundVII$COUNTRY==11 | AfroRoundVII$COUNTRY==12 | AfroRoundVII$COUNTRY==13 | AfroRoundVII$COUNTRY==14 | AfroRoundVII$COUNTRY==15 | AfroRoundVII$COUNTRY==16 | AfroRoundVII$COUNTRY==17 | AfroRoundVII$COUNTRY==18 | AfroRoundVII$COUNTRY==20 | AfroRoundVII$COUNTRY==21 | AfroRoundVII$COUNTRY==22 | AfroRoundVII$COUNTRY==23 | AfroRoundVII$COUNTRY==24 | AfroRoundVII$COUNTRY==25 | AfroRoundVII$COUNTRY==26 | AfroRoundVII$COUNTRY==27 | AfroRoundVII$COUNTRY==29 | AfroRoundVII$COUNTRY==30 | AfroRoundVII$COUNTRY==32 | AfroRoundVII$COUNTRY==33 | AfroRoundVII$COUNTRY==34),]

AfroRoundVII_RemoveColumnTest <- AfroRoundVII_RelevantTest [c("X1", "RESPNO", "COUNTRY", "COUNTRY_Old.order", "COUNTRY_R5List", "COUNTRY_R6List", "COUNTRY.BY.REGION", "URBRUR", "REGION", "Q4A", "Q6", "Q10A", "Q10B", "Q43A", "Q43B", "Q43C", "Q43D", "Q43E", "Q43F", "Q43G", "Q43H", "Q43I", "Q43J", "Q43K", "Q56A", "Q56B", "Q56C", "Q56D", "Q56E", "Q56F", "Q56G", "Q56H", "Q56I", "Q56J", "Q56K", "Q56L", "Q56M", "Q56N", "Q56O", "Q49P", "Q49I", "Q45", "Q44A", "Q44B", "Q44C", "Q44D", "Q44E", "Q44F", "Q44G", "Q44H", "Q44I", "Q44J", "Q20A", "Q20B", "Q21A", "Q21B", "Q22", "Q23", "Q24A", "Q24B", "Q88A", "Q88B", "Q16", "Q28", "Q35", "Q36", "Q12A", "Q12B", "Q12C", "Q12D", "Q12E", "Q91A", "Q91B", "Q14", "Q19A", "Q19B", "Q19C", "Q19D", "Q19E", "Q9")]
summary(AfroRoundVII_RemoveColumnTest)

# Flip the Afrobarometer scale to match Arab Barometer. Responses coded as a 9 ("Don't know") are left constant.
AfroRoundVII_flipTest1 <- AfroRoundVII_RemoveColumnTest %>%
  mutate(Q4A_flipped = case_when(Q4A == 1 ~ 5, Q4A == 2 ~ 4, Q4A == 3 ~ 3, Q4A == 4 ~ 2, Q4A == 5 ~ 1, TRUE ~ 98),
         Q6_flipped = case_when(Q6 == 1 ~ 5, Q6 == 2 ~ 4, Q6 == 3 ~ 3, Q6 == 4 ~ 2, Q6 == 5 ~ 1, TRUE ~ 9),
         Q43A_flipped = case_when(Q43A == 0 ~ 4, Q43A == 1 ~ 3, Q43A == 2 ~ 2, Q43A == 3 ~ 1, TRUE ~ 9),
         Q43B_flipped = case_when(Q43B == 0 ~ 4, Q43B == 1 ~ 3, Q43B == 2 ~ 2, Q43B == 3 ~ 1, TRUE ~ 98),
         Q43C_flipped = case_when(Q43C == 0 ~ 4, Q43C == 1 ~ 3, Q43C == 2 ~ 2, Q43C == 3 ~ 1, TRUE ~ 9),
         Q43D_flipped = case_when(Q43D == 0 ~ 4, Q43D == 1 ~ 3, Q43D == 2 ~ 2, Q43D == 3 ~ 1, TRUE ~ 9),
         Q43E_flipped = case_when(Q43E == 0 ~ 4, Q43E == 1 ~ 3, Q43E == 2 ~ 2, Q43E == 3 ~ 1, TRUE ~ 9),
         Q43F_flipped = case_when(Q43F == 0 ~ 4, Q43F == 1 ~ 3, Q43F == 2 ~ 2, Q43F == 3 ~ 1, TRUE ~ 9),
         Q43G_flipped = case_when(Q43G == 0 ~ 4, Q43G == 1 ~ 3, Q43G == 2 ~ 2, Q43G == 3 ~ 1, TRUE ~ 9),
         Q43H_flipped = case_when(Q43H == 0 ~ 4, Q43H == 1 ~ 3, Q43H == 2 ~ 2, Q43H == 3 ~ 1, TRUE ~ 9),
         Q43I_flipped = case_when(Q43I == 0 ~ 4, Q43I == 1 ~ 3, Q43I == 2 ~ 2, Q43I == 3 ~ 1, TRUE ~ 9),
         Q43J_flipped = case_when(Q43J == 0 ~ 4, Q43J == 1 ~ 3, Q43J == 2 ~ 2, Q43J == 3 ~ 1, TRUE ~ 9),
         Q43K_flipped = case_when(Q43K == 0 ~ 4, Q43K == 1 ~ 3, Q43K == 2 ~ 2, Q43K == 3 ~ 1, TRUE ~ 9),
         Q56A_flipped = case_when(Q56A == 1 ~ 4, Q56A == 2 ~ 3, Q56A == 3 ~ 2, Q56A == 4 ~ 1, TRUE ~ 9),
         Q56B_flipped = case_when(Q56B == 1 ~ 4, Q56B == 2 ~ 3, Q56B == 3 ~ 2, Q56B == 4 ~ 1, TRUE ~ 9),
         Q56C_flipped = case_when(Q56C == 1 ~ 4, Q56C == 2 ~ 3, Q56C == 3 ~ 2, Q56C == 4 ~ 1, TRUE ~ 9),
         Q56D_flipped = case_when(Q56D == 1 ~ 4, Q56D == 2 ~ 3, Q56D == 3 ~ 2, Q56D == 4 ~ 1, TRUE ~ 9),
         Q56E_flipped = case_when(Q56E == 1 ~ 4, Q56E == 2 ~ 3, Q56E == 3 ~ 2, Q56E == 4 ~ 1, TRUE ~ 9),
         Q56F_flipped = case_when(Q56F == 1 ~ 4, Q56F == 2 ~ 3, Q56F == 3 ~ 2, Q56F == 4 ~ 1, TRUE ~ 9),
         Q56G_flipped = case_when(Q56G == 1 ~ 4, Q56G == 2 ~ 3, Q56G == 3 ~ 2, Q56G == 4 ~ 1, TRUE ~ 9),
         Q56H_flipped = case_when(Q56H == 1 ~ 4, Q56H == 2 ~ 3, Q56H == 3 ~ 2, Q56H == 4 ~ 1, TRUE ~ 9),
         Q56I_flipped = case_when(Q56I == 1 ~ 4, Q56I == 2 ~ 3, Q56I == 3 ~ 2, Q56I == 4 ~ 1, TRUE ~ 9),
         Q56J_flipped = case_when(Q56J == 1 ~ 4, Q56J == 2 ~ 3, Q56J == 3 ~ 2, Q56J == 4 ~ 1, TRUE ~ 9),
         Q56K_flipped = case_when(Q56K == 1 ~ 4, Q56K == 2 ~ 3, Q56K == 3 ~ 2, Q56K == 4 ~ 1, TRUE ~ 9),
         Q56L_flipped = case_when(Q56L == 1 ~ 4, Q56L == 2 ~ 3, Q56L == 3 ~ 2, Q56L == 4 ~ 1, TRUE ~ 9),
         Q56M_flipped = case_when(Q56M == 1 ~ 4, Q56M == 2 ~ 3, Q56M == 3 ~ 2, Q56M == 4 ~ 1, TRUE ~ 9),
         Q56N_flipped = case_when(Q56N == 1 ~ 4, Q56N == 2 ~ 3, Q56N == 3 ~ 2, Q56N == 4 ~ 1, TRUE ~ 9),
         Q56O_flipped = case_when(Q56O == 1 ~ 4, Q56O == 2 ~ 3, Q56O == 3 ~ 2, Q56O == 4 ~ 1, TRUE ~ 9),
         Q44A_shifted = case_when(Q44A == 0 ~ 1, Q44A == 1 ~ 2, Q44A == 2 ~ 3, Q44A == 3 ~ 4, TRUE ~ 9),
         Q44B_shifted = case_when(Q44B == 0 ~ 1, Q44B == 1 ~ 2, Q44B == 2 ~ 3, Q44B == 3 ~ 4, TRUE ~ 9),
         Q44C_shifted = case_when(Q44C == 0 ~ 1, Q44C == 1 ~ 2, Q44C == 2 ~ 3, Q44C == 3 ~ 4, TRUE ~ 9),
         Q44D_shifted = case_when(Q44D == 0 ~ 1, Q44D == 1 ~ 2, Q44D == 2 ~ 3, Q44D == 3 ~ 4, TRUE ~ 9),
         Q44E_shifted = case_when(Q44E == 0 ~ 1, Q44E == 1 ~ 2, Q44E == 2 ~ 3, Q44E == 3 ~ 4, TRUE ~ 9),
         Q44F_shifted = case_when(Q44F == 0 ~ 1, Q44F == 1 ~ 2, Q44F == 2 ~ 3, Q44F == 3 ~ 4, TRUE ~ 9),
         Q44G_shifted = case_when(Q44G == 0 ~ 1, Q44G == 1 ~ 2, Q44G == 2 ~ 3, Q44G == 3 ~ 4, TRUE ~ 9),
         Q44H_shifted = case_when(Q44H == 0 ~ 1, Q44H == 1 ~ 2, Q44H == 2 ~ 3, Q44H == 3 ~ 4, TRUE ~ 9),
         Q44I_shifted = case_when(Q44I == 0 ~ 1, Q44I == 1 ~ 2, Q44I == 2 ~ 3, Q44I == 3 ~ 4, TRUE ~ 9),
         Q44J_shifted = case_when(Q44J == 0 ~ 1, Q44J == 1 ~ 2, Q44J == 2 ~ 3, Q44J == 3 ~ 4, TRUE ~ 9),
         Q21A_flipped = case_when(Q21A == 2 ~ 1, Q21A == 9 ~ 9, Q21A == 0 ~ 3, TRUE ~ 2),
         Q21B_flipped = case_when(Q21B == 2 ~ 1, Q21B == 9 ~ 9, Q21B == 0 ~ 3, TRUE ~ 2),
         Q22_condensed = case_when(Q22 == 1 ~ 1, Q22 == 9 ~ 9, TRUE ~ 2),
         Q23_flipped = case_when(Q23 == 1 ~ 4, Q23 == 2 ~ 3, Q23 == 3 ~ 2, Q23 == 4 ~ 1, Q23 == 8 ~ 98, TRUE ~ 99),
         Q24A_flipped = case_when(Q24A == 0 ~ 2, Q24A == 1 ~ 1, TRUE ~ 9),
         Q24B_flipped = case_when(Q24B == 0 ~ 2, Q24B == 1 ~ 1, TRUE ~ 9),
         Q16_flipped = case_when(Q16 == 1 ~ 4, Q16 == 2 ~ 3, Q16 == 3 ~ 2, Q16 == 4 ~ 1, Q16 == 5 ~ 97, TRUE ~ 98),
         Q91A_flipped = case_when(Q91A == 0 ~ 6, Q91A == 1 ~ 5, Q91A == 2 ~ 4, Q91A == 3 ~ 3, Q91A == 4 ~ 2, TRUE ~ 9),
         Q91B_flipped = case_when(Q91B == 0 ~ 6, Q91B == 1 ~ 5, Q91B == 2 ~ 4, Q91B == 3 ~ 3, Q91B == 4 ~ 2, TRUE ~ 9),
         Q14_flipped = case_when(Q14 == 1 ~ 4, Q14 == 2 ~ 3, Q14 == 3 ~ 2, Q14 == 4 ~ 1, TRUE ~ 9),
         Q19A_flipped = case_when(Q19A == 1 ~ 5, Q19A == 2 ~ 4, Q19A == 3 ~ 3, Q19A == 4 ~ 2, Q19A == 5 ~ 1, TRUE ~ 9),
         Q19B_flipped = case_when(Q19B == 1 ~ 5, Q19B == 2 ~ 4, Q19B == 3 ~ 3, Q19B == 4 ~ 2, Q19B == 5 ~ 1, TRUE ~ 9),
         Q19C_flipped = case_when(Q19C == 1 ~ 5, Q19C == 2 ~ 4, Q19C == 3 ~ 3, Q19C == 4 ~ 2, Q19C == 5 ~ 1, TRUE ~ 9),
         Q19D_flipped = case_when(Q19D == 1 ~ 5, Q19D == 2 ~ 4, Q19D == 3 ~ 3, Q19D == 4 ~ 2, Q19D == 5 ~ 1, TRUE ~ 9),
         Q19E_flipped = case_when(Q19E == 1 ~ 5, Q19E == 2 ~ 4, Q19E == 3 ~ 3, Q19E == 4 ~ 2, Q19E == 5 ~ 1, TRUE ~ 9),
         Q9_flipped = case_when(Q9 == 0 ~ 4, Q9 == 1 ~ 3, Q9 == 2 ~ 2, Q9 == 3 ~ 1, TRUE ~ 9))

# Mark all responses coded as a 9 ("DNR") as NA in order equalize with Arab Barometer.
AfroRoundVII_flipTestNA <- AfroRoundVII_flipTest1 %>% replace_with_na_all(condition = ~.x == 9)
summary(AfroRoundVII_flipTestNA)
# Mark all responses coded as a 98 ("DNR") as NA in order equalize with Arab Barometer.
AfroRoundVII_flipTestNA2 <- AfroRoundVII_flipTestNA %>% replace_with_na_all(condition = ~.x == 98)
summary(AfroRoundVII_flipTestNA2)
# Mark all responses coded as a 99 ("DNR") as NA in order equalize with Arab Barometer.
AfroRoundVII_flipTestNA3 <- AfroRoundVII_flipTestNA2 %>% replace_with_na_all(condition = ~.x == 99)
summary(AfroRoundVII_flipTestNA3)