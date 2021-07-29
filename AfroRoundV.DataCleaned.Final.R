library(readr)
AfroRoundV <- read_csv (url("https://media.githubusercontent.com/media/ecstory/mai_hassan_barometer_proj/main/AfroRoundV.csv"))

AfroRoundV_RelevantTest2 <- AfroRoundV[! (AfroRoundV$COUNTRY_ALPHA==2 | AfroRoundV$COUNTRY_ALPHA==3 | AfroRoundV$COUNTRY_ALPHA==4 | AfroRoundV$COUNTRY_ALPHA==5 | AfroRoundV$COUNTRY_ALPHA==6 | AfroRoundV$COUNTRY_ALPHA==7 | AfroRoundV$COUNTRY_ALPHA==8 | AfroRoundV$COUNTRY_ALPHA==11 | AfroRoundV$COUNTRY_ALPHA==12 | AfroRoundV$COUNTRY_ALPHA==13 | AfroRoundV$COUNTRY_ALPHA==14 | AfroRoundV$COUNTRY_ALPHA==15 | AfroRoundV$COUNTRY_ALPHA==16 | AfroRoundV$COUNTRY_ALPHA==17 | AfroRoundV$COUNTRY_ALPHA==18 | AfroRoundV$COUNTRY_ALPHA==19 | AfroRoundV$COUNTRY_ALPHA==21 | AfroRoundV$COUNTRY_ALPHA==22 | AfroRoundV$COUNTRY_ALPHA==23 | AfroRoundV$COUNTRY_ALPHA==24 | AfroRoundV$COUNTRY_ALPHA==25 | AfroRoundV$COUNTRY_ALPHA==26 | AfroRoundV$COUNTRY_ALPHA==27 | AfroRoundV$COUNTRY_ALPHA==29 | AfroRoundV$COUNTRY_ALPHA==30 | AfroRoundV$COUNTRY_ALPHA==31 | AfroRoundV$COUNTRY_ALPHA==33 | AfroRoundV$COUNTRY_ALPHA==34 | AfroRoundV$COUNTRY_ALPHA==35),]

AfroRoundV_RemoveColumnTest <- AfroRoundV_RelevantTest2 [c("X1", "COUNTRY", "COUNTRY_ALPHA", "COUNTRY.BY.REGION.NO", "COUNTRY.BY.REGION", "RESPNO", "URBRUR", "REGION", "Q3A", "Q3B", "Q4", "Q6A", "Q6B", "Q87", "Q9A", "Q9B", "Q56B", "Q59A", "Q59B", "Q59C", "Q59D", "Q59E", "Q59F", "Q59G", "Q59H", "Q59I", "Q59J", "Q65A", "Q65B", "Q65C", "Q65D", "Q65E", "Q65F", "Q65G", "Q65H", "Q65I", "Q65J", "Q65K", "Q65L", "Q65M", "Q65N", "Q65P", "Q60A", "Q60B", "Q60C", "Q60D", "Q60E", "Q60F", "Q60G", "Q49", "Q16", "Q27", "Q29A", "Q29B", "Q29C", "Q28", "Q14", "Q13A", "Q13B", "Q13C", "Q13D", "Q91A", "Q91B", "Q94A_ARB", "Q94B_ARB", "Q94C_ARB", "Q25A", "Q25B", "Q89A", "Q26A", "Q26B", "Q26C", "Q26D", "Q26E", "Q89B", "Q43", "Q42", "Q44", "Q45", "Q43A_ARB", "Q43B_ARB", "Q43C_ARB", "Q43D_ARB", "Q43E_ARB", "Q41A_ARB", "Q41B_ARB", "Q41C_ARB", "Q41D_ARB")]
summary(AfroRoundV_RemoveColumnTest)

# Remove non-numeric columns
AfroRoundV_colsNumeric <- AfroRoundV_RemoveColumnTest [c("Q3A", "Q3B", "Q4", "Q6A", "Q6B", "Q87", "Q9A", "Q9B", "Q56B", "Q59A", "Q59B", "Q59C", "Q59D", "Q59E", "Q59F", "Q59G", "Q59H", "Q59I", "Q59J", "Q65A", "Q65B", "Q65C", "Q65D", "Q65E", "Q65F", "Q65G", "Q65H", "Q65I", "Q65J", "Q65K", "Q65L", "Q65M", "Q65N", "Q65P", "Q60A", "Q60B", "Q60C", "Q60D", "Q60E", "Q60F", "Q60G", "Q49", "Q16", "Q27", "Q29A", "Q29B", "Q29C", "Q28", "Q14", "Q13A", "Q13B", "Q13C", "Q13D", "Q91A", "Q91B", "Q94A_ARB", "Q94B_ARB", "Q94C_ARB", "Q25A", "Q25B", "Q89A", "Q26A", "Q26B", "Q26C", "Q26D", "Q26E", "Q89B", "Q43", "Q42", "Q44", "Q45", "Q43A_ARB", "Q43B_ARB", "Q43C_ARB", "Q43D_ARB", "Q43E_ARB", "Q41A_ARB", "Q41B_ARB", "Q41C_ARB", "Q41D_ARB")]

# Flip the Afrobarometer scale to match Arab Barometer. Responses coded as a 9 ("Don't know") are left constant.
AfroRoundV_flipTest1 <- AfroRoundV_colsNumeric %>% 
  mutate(Q3A_flipped = case_when(Q3A == 1 ~ 5, Q3A == 2 ~ 4, Q3A == 3 ~ 3, Q3A == 4 ~ 2, Q3A == 5 ~ 1, TRUE ~ 9),
         Q6A_flipped = case_when(Q6A == 1 ~ 5, Q6A == 2 ~ 4, Q6A == 3 ~ 3, Q6A == 4 ~ 2, Q6A == 5 ~ 1, TRUE ~ 9),
         Q6B_flipped = case_when(Q6B == 1 ~ 5, Q6B == 2 ~ 4, Q6B == 3 ~ 3, Q6B == 4 ~ 2, Q6B == 5 ~ 1, TRUE ~ 9),
         Q87_flipped = case_when(Q87 == 0 ~ 2, Q87 == 1 ~ 1, TRUE ~ 9),
         Q56B_shifted = case_when(Q56B == 0 ~ 1, Q56B == 1 ~ 2, Q56B == 2 ~ 3, Q56B == 3 ~ 4, TRUE ~ 9),
         Q65A_flipped = case_when(Q65A == 1 ~ 4, Q65A == 2 ~ 3, Q65A == 3 ~ 2, Q65A == 4 ~ 1, TRUE ~ 9),
         Q65B_flipped = case_when(Q65B == 1 ~ 4, Q65B == 2 ~ 3, Q65B == 3 ~ 2, Q65B == 4 ~ 1, TRUE ~ 9),
         Q65C_flipped = case_when(Q65C == 1 ~ 4, Q65C == 2 ~ 3, Q65C == 3 ~ 2, Q65C == 4 ~ 1, TRUE ~ 9),
         Q65D_flipped = case_when(Q65D == 1 ~ 4, Q65D == 2 ~ 3, Q65D == 3 ~ 2, Q65D == 4 ~ 1, TRUE ~ 9),
         Q65E_flipped = case_when(Q65E == 1 ~ 4, Q65E == 2 ~ 3, Q65E == 3 ~ 2, Q65E == 4 ~ 1, TRUE ~ 9),
         Q65F_flipped = case_when(Q65F == 1 ~ 4, Q65F == 2 ~ 3, Q65F == 3 ~ 2, Q65F == 4 ~ 1, TRUE ~ 9),
         Q65G_flipped = case_when(Q65G == 1 ~ 4, Q65G == 2 ~ 3, Q65G == 3 ~ 2, Q65G == 4 ~ 1, TRUE ~ 9),
         Q65H_flipped = case_when(Q65H == 1 ~ 4, Q65H == 2 ~ 3, Q65H == 3 ~ 2, Q65H == 4 ~ 1, TRUE ~ 9),
         Q65I_flipped = case_when(Q65I == 1 ~ 4, Q65I == 2 ~ 3, Q65I == 3 ~ 2, Q65I == 4 ~ 1, TRUE ~ 9),
         Q65J_flipped = case_when(Q65J == 1 ~ 4, Q65J == 2 ~ 3, Q65J == 3 ~ 2, Q65J == 4 ~ 1, TRUE ~ 9),
         Q65K_flipped = case_when(Q65K == 1 ~ 4, Q65K == 2 ~ 3, Q65K == 3 ~ 2, Q65K == 4 ~ 1, TRUE ~ 9),
         Q65L_flipped = case_when(Q65L == 1 ~ 4, Q65L == 2 ~ 3, Q65L == 3 ~ 2, Q65L == 4 ~ 1, TRUE ~ 9),
         Q65M_flipped = case_when(Q65M == 1 ~ 4, Q65M == 2 ~ 3, Q65M == 3 ~ 2, Q65M == 4 ~ 1, TRUE ~ 9),
         Q65N_flipped = case_when(Q65N == 1 ~ 4, Q65N == 2 ~ 3, Q65N == 3 ~ 2, Q65N == 4 ~ 1, TRUE ~ 9),
         Q65P_flipped = case_when(Q65P == 1 ~ 4, Q65P == 2 ~ 3, Q65P == 3 ~ 2, Q65P == 4 ~ 1, TRUE ~ 9),
         Q27_condensed = case_when(Q27 == 1 ~ 1, Q27 == 9 ~ 9, TRUE ~ 2),
         Q29A_flipped = case_when(Q29A == 0 ~ 2, Q29A == 1 ~ 1, TRUE ~ 9),
         Q28_flipped = case_when(Q28 == 1 ~ 4, Q28 == 2 ~ 3, Q28 == 3 ~ 2, Q28 == 4 ~ 1, Q28 == 8 ~ 8, TRUE ~ 9),
         Q14_flipped = case_when(Q14 == 0 ~ 4, Q14 == 1 ~ 3, Q14 == 2 ~ 2, Q14 == 3 ~ 1, TRUE ~ 9),
         Q13A_flipped = case_when(Q13A == 0 ~ 5, Q13A == 1 ~ 4, Q13A == 2 ~ 3, Q13A == 3 ~ 2, Q13A == 4 ~ 1, TRUE ~ 9),
         Q13B_flipped = case_when(Q13B == 0 ~ 5, Q13B == 1 ~ 4, Q13B == 2 ~ 3, Q13B == 3 ~ 2, Q13B == 4 ~ 1, TRUE ~ 9),
         Q13C_flipped = case_when(Q13C == 0 ~ 5, Q13C == 1 ~ 4, Q13C == 2 ~ 3, Q13C == 3 ~ 2, Q13C == 4 ~ 1, TRUE ~ 9),
         Q13D_flipped = case_when(Q13D == 0 ~ 5, Q13D == 1 ~ 4, Q13D == 2 ~ 3, Q13D == 3 ~ 2, Q13D == 4 ~ 1, TRUE ~ 9),
         Q91B_flipped = case_when(Q91B == 0 ~ 5, Q91B == 1 ~ 4, Q91B == 2 ~ 3, Q91B == 3 ~ 2, Q91B == 4 ~ 1, TRUE ~ 9),
         Q94A_ARB_flipped = case_when(Q94A_ARB == 0 ~ 2, Q94A_ARB == 1 ~ 1, TRUE ~ 9),
         Q94B_ARB_flipped = case_when(Q94B_ARB == 0 ~ 2, Q94B_ARB == 1 ~ 1, TRUE ~ 9),
         Q94C_ARB_flipped = case_when(Q94C_ARB == 0 ~ 2, Q94C_ARB == 1 ~ 1, TRUE ~ 9),
         Q89A_flipped = case_when(Q89A == 0 ~ 2, Q89A == 1 ~ 1, Q89A == 8 ~ 9, TRUE ~ 8),
         Q26A_flipped = case_when(Q26A == 0 ~ 3, Q26A == 2 ~ 1, Q26A == 9 ~ 9, TRUE ~ 2),
         Q26B_flipped = case_when(Q26B == 0 ~ 3, Q26B == 2 ~ 1, Q26B == 9 ~ 9, TRUE ~ 2),
         Q26C_flipped = case_when(Q26C == 0 ~ 3, Q26C == 2 ~ 1, Q26C == 9 ~ 9, TRUE ~ 2),
         Q26D_flipped = case_when(Q26D == 0 ~ 3, Q26D == 2 ~ 1, Q26D == 9 ~ 9, TRUE ~ 2),
         Q26E_flipped = case_when(Q26E == 0 ~ 3, Q26E == 2 ~ 1, Q26E == 9 ~ 9, TRUE ~ 2),
         Q43_flipped = case_when(Q43 == 0 ~ 5, Q43 == 1 ~ 4, Q43 == 2 ~ 3, Q43 == 3 ~ 2, Q43 == 4 ~ 1, TRUE ~ 9),
         Q59A_flipped = case_when(Q59A == 0 ~ 3, Q59A == 1 ~ 2, Q59A == 2 ~ 1, Q59A == 3 ~ 0, TRUE ~ 9),
         Q59B_flipped = case_when(Q59B == 0 ~ 3, Q59B == 1 ~ 2, Q59B == 2 ~ 1, Q59B == 3 ~ 0, TRUE ~ 9),
         Q59C_flipped = case_when(Q59C == 0 ~ 3, Q59C == 1 ~ 2, Q59C == 2 ~ 1, Q59C == 3 ~ 0, TRUE ~ 9),
         Q59D_flipped = case_when(Q59D == 0 ~ 3, Q59D == 1 ~ 2, Q59D == 2 ~ 1, Q59D == 3 ~ 0, TRUE ~ 9),
         Q59E_flipped = case_when(Q59E == 0 ~ 3, Q59E == 1 ~ 2, Q59E == 2 ~ 1, Q59E == 3 ~ 0, TRUE ~ 9),
         Q59F_flipped = case_when(Q59F == 0 ~ 3, Q59F == 1 ~ 2, Q59F == 2 ~ 1, Q59F == 3 ~ 0, TRUE ~ 9),
         Q59G_flipped = case_when(Q59G == 0 ~ 3, Q59G == 1 ~ 2, Q59G == 2 ~ 1, Q59G == 3 ~ 0, TRUE ~ 9),
         Q59H_flipped = case_when(Q59H == 0 ~ 3, Q59H == 1 ~ 2, Q59H == 2 ~ 1, Q59H == 3 ~ 0, TRUE ~ 9),
         Q59I_flipped = case_when(Q59I == 0 ~ 3, Q59I == 1 ~ 2, Q59I == 2 ~ 1, Q59I == 3 ~ 0, TRUE ~ 9),
         Q59J_flipped = case_when(Q59J == 0 ~ 3, Q59J == 1 ~ 2, Q59J == 2 ~ 1, Q59J == 3 ~ 0, TRUE ~ 9))

# Mark all responses coded as a 9 ("DNR") as NA in order equalize with Arab Barometer.
AfroRoundV_flipTestNA <- AfroRoundV_flipTest1 %>% replace_with_na_all(condition = ~.x == 9)
summary(AfroRoundV_flipTestNA)
