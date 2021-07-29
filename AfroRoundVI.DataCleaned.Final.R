library(readr)
afb_full_r6 <- read_csv(url("https://media.githubusercontent.com/media/ecstory/mai_hassan_barometer_proj/main/AfroRoundVI.csv"))

AfroRoundVI_RelevantTest <- afb_full_r6[! (afb_full_r6$country==2 | afb_full_r6$country==3 | afb_full_r6$country==4 | afb_full_r6$country==5 | afb_full_r6$country==6 | afb_full_r6$country==7 | afb_full_r6$country==8 | afb_full_r6$country==10 | afb_full_r6$country==11 | afb_full_r6$country==12 | afb_full_r6$country==13 | afb_full_r6$country==14 | afb_full_r6$country==15 | afb_full_r6$country==16 | afb_full_r6$country==17 | afb_full_r6$country==18 | afb_full_r6$country==19 | afb_full_r6$country==21 | afb_full_r6$country==22 | afb_full_r6$country==23 | afb_full_r6$country==24 | afb_full_r6$country==25 | afb_full_r6$country==26 | afb_full_r6$country==27 | afb_full_r6$country==29 | afb_full_r6$country==30 | afb_full_r6$country==31 | afb_full_r6$country==33 | afb_full_r6$country==34 | afb_full_r6$country==35 | afb_full_r6$country==36),]

AfroRoundVI_RemoveColumnTest <- AfroRoundVI_RelevantTest [c("respno", "country", "country_r5list", "countrybyregion", "urbrur", "region", "q4a", "q6", "q7", "q4b", "q10a", "q10b", "q51b", "q52a", "q52b", "q52c", "q52d", "q52e", "q52f", "q52g", "q52h", "q52i", "q52j", "q52k", "q52l", "q66h", "q66g", "q66a", "q66b", "q66c", "q66d", "q66e", "q66f", "q66i", "q66j", "q66k", "q66l", "q66m", "q60pt1", "q60pt1other", "q60pt2", "q60pt2other", "q60pt3", "q60pt3other", "q53a", "q53b", "q53c", "q53d", "q53e", "q53f", "q53g", "q53h", "q53i", "q53j", "q21", "q23a", "q23b", "q23c", "q23d", "q22", "q13", "q12a", "q12b", "q12c", "q12d", "q12e", "q92a", "q92b", "q19a", "q19b", "q90a", "q90b", "q20a", "q20b", "q40", "q41", "q30", "q15a", "q15b", "q15c", "q39_arb_a", "q39_arb_b", "q39_arb_c", "q39_arb_d")]
summary(AfroRoundVI_RemoveColumnTest)

# Flip the Afrobarometer scale to match Arab Barometer. Responses coded as a 9 ("Don't know") are left constant.
AfroRoundVI_flipTest1 <- AfroRoundVI_RemoveColumnTest %>%
  mutate(q4a_flipped = case_when(q4a == 1 ~ 5, q4a == 2 ~ 4, q4a == 3 ~ 3, q4a == 4 ~ 2, q4a == 5 ~ 1, TRUE ~ 9),
         q6_flipped = case_when(q6 == 1 ~ 5, q6 == 2 ~ 4, q6 == 3 ~ 3, q6 == 4 ~ 2, q6 == 5 ~ 1, TRUE ~ 9),
         q7_flipped = case_when(q7 == 1 ~ 5, q7 == 2 ~ 4, q7 == 3 ~ 3, q7 == 4 ~ 2, q7 == 5 ~ 1, TRUE ~ 9),
         q4b_flipped = case_when(q4b == 1 ~ 5, q4b == 2 ~ 4, q4b == 3 ~ 3, q4b == 4 ~ 2, q4b == 5 ~ 1, TRUE ~ 9),
         q51b_shifted = case_when(q51b == 0 ~ 1, q51b == 1 ~ 2, q51b == 2 ~ 3, q51b == 3 ~ 4, TRUE ~ 9),
         q52a_flipped = case_when(q52a == 0 ~ 4, q52a == 1 ~ 3, q52a == 2 ~ 2, q52a == 3 ~ 1, TRUE ~ 9),
         q52b_flipped = case_when(q52b == 0 ~ 4, q52b == 1 ~ 3, q52b == 2 ~ 2, q52b == 3 ~ 1, TRUE ~ 9),
         q52c_flipped = case_when(q52c == 0 ~ 4, q52c == 1 ~ 3, q52c == 2 ~ 2, q52c == 3 ~ 1, TRUE ~ 9),
         q52d_flipped = case_when(q52d == 0 ~ 4, q52d == 1 ~ 3, q52d == 2 ~ 2, q52d == 3 ~ 1, TRUE ~ 9),
         q52e_flipped = case_when(q52e == 0 ~ 4, q52e == 1 ~ 3, q52e == 2 ~ 2, q52e == 3 ~ 1, TRUE ~ 9),
         q52f_flipped = case_when(q52f == 0 ~ 4, q52f == 1 ~ 3, q52f == 2 ~ 2, q52f == 3 ~ 1, TRUE ~ 9),
         q52g_flipped = case_when(q52g == 0 ~ 4, q52g == 1 ~ 3, q52g == 2 ~ 2, q52g == 3 ~ 1, TRUE ~ 9),
         q52h_flipped = case_when(q52h == 0 ~ 4, q52h == 1 ~ 3, q52h == 2 ~ 2, q52h == 3 ~ 1, TRUE ~ 9),
         q52i_flipped = case_when(q52i == 0 ~ 4, q52i == 1 ~ 3, q52i == 2 ~ 2, q52i == 3 ~ 1, TRUE ~ 9),
         q52j_flipped = case_when(q52j == 0 ~ 4, q52j == 1 ~ 3, q52j == 2 ~ 2, q52j == 3 ~ 1, TRUE ~ 9),
         q52k_flipped = case_when(q52k == 0 ~ 4, q52k == 1 ~ 3, q52k == 2 ~ 2, q52k == 3 ~ 1, TRUE ~ 9),
         q52l_flipped = case_when(q52l == 0 ~ 4, q52l == 1 ~ 3, q52l == 2 ~ 2, q52l == 3 ~ 1, TRUE ~ 9),
         q66h_flipped = case_when(q66h == 1 ~ 4, q66h == 2 ~ 3, q66h == 3 ~ 2, q66h == 4 ~ 1, TRUE ~ 9),
         q66g_flipped = case_when(q66g == 1 ~ 4, q66g == 2 ~ 3, q66g == 3 ~ 2, q66g == 4 ~ 1, TRUE ~ 9),
         q66a_flipped = case_when(q66a == 1 ~ 4, q66a == 2 ~ 3, q66a == 3 ~ 2, q66a == 4 ~ 1, TRUE ~ 9),
         q66b_flipped = case_when(q66b == 1 ~ 4, q66b == 2 ~ 3, q66b == 3 ~ 2, q66b == 4 ~ 1, TRUE ~ 9),
         q66c_flipped = case_when(q66c == 1 ~ 4, q66c == 2 ~ 3, q66c == 3 ~ 2, q66c == 4 ~ 1, TRUE ~ 9),
         q66d_flipped = case_when(q66d == 1 ~ 4, q66d == 2 ~ 3, q66d == 3 ~ 2, q66d == 4 ~ 1, TRUE ~ 9),
         q66e_flipped = case_when(q66e == 1 ~ 4, q66e == 2 ~ 3, q66e == 3 ~ 2, q66e == 4 ~ 1, TRUE ~ 9),
         q66f_flipped = case_when(q66f == 1 ~ 4, q66f == 2 ~ 3, q66f == 3 ~ 2, q66f == 4 ~ 1, TRUE ~ 9),
         q66i_flipped = case_when(q66i == 1 ~ 4, q66i == 2 ~ 3, q66i == 3 ~ 2, q66i == 4 ~ 1, TRUE ~ 9),
         q66j_flipped = case_when(q66j == 1 ~ 4, q66j == 2 ~ 3, q66j == 3 ~ 2, q66j == 4 ~ 1, TRUE ~ 9),
         q66k_flipped = case_when(q66k == 1 ~ 4, q66k == 2 ~ 3, q66k == 3 ~ 2, q66k == 4 ~ 1, TRUE ~ 9),
         q66l_flipped = case_when(q66l == 1 ~ 4, q66l == 2 ~ 3, q66l == 3 ~ 2, q66l == 4 ~ 1, TRUE ~ 9),
         q66m_flipped = case_when(q66m == 1 ~ 4, q66m == 2 ~ 3, q66m == 3 ~ 2, q66m == 4 ~ 1, TRUE ~ 9),
         q53a_flipped = case_when(q53a == 0 ~ 4, q53a == 1 ~ 3, q53a == 2 ~ 2, q53a == 3 ~ 1, TRUE ~ 9),
         q53b_flipped = case_when(q53b == 0 ~ 4, q53b == 1 ~ 3, q53b == 2 ~ 2, q53b == 3 ~ 1, TRUE ~ 9),
         q53c_flipped = case_when(q53c == 0 ~ 4, q53c == 1 ~ 3, q53c == 2 ~ 2, q53c == 3 ~ 1, TRUE ~ 9),
         q53d_flipped = case_when(q53d == 0 ~ 4, q53d == 1 ~ 3, q53d == 2 ~ 2, q53d == 3 ~ 1, TRUE ~ 9),
         q53e_flipped = case_when(q53e == 0 ~ 4, q53e == 1 ~ 3, q53e == 2 ~ 2, q53e == 3 ~ 1, TRUE ~ 9),
         q53f_flipped = case_when(q53f == 0 ~ 4, q53f == 1 ~ 3, q53f == 2 ~ 2, q53f == 3 ~ 1, TRUE ~ 9),
         q53g_flipped = case_when(q53g == 0 ~ 4, q53g == 1 ~ 3, q53g == 2 ~ 2, q53g == 3 ~ 1, TRUE ~ 9),
         q53h_flipped = case_when(q53h == 0 ~ 4, q53h == 1 ~ 3, q53h == 2 ~ 2, q53h == 3 ~ 1, TRUE ~ 9),
         q53i_flipped = case_when(q53i == 0 ~ 4, q53i == 1 ~ 3, q53i == 2 ~ 2, q53i == 3 ~ 1, TRUE ~ 9),
         q53j_flipped = case_when(q53j == 0 ~ 4, q53j == 1 ~ 3, q53j == 2 ~ 2, q53j == 3 ~ 1, TRUE ~ 9),
         q21_condensed = case_when(q21 == 1 ~ 1, q21 == 9 ~ 9, TRUE ~ 2),
         q23a_flipped = case_when(q23a == 0 ~ 2, q23a == 1 ~ 1, TRUE ~ 9),
         q23b_flipped = case_when(q23b == 0 ~ 2, q23b == 1 ~ 1, TRUE ~ 9),
         q23c_flipped = case_when(q23c == 0 ~ 2, q23c == 1 ~ 1, TRUE ~ 9),
         q23d_flipped = case_when(q23d == 0 ~ 2, q23d == 1 ~ 1, TRUE ~ 9),
         q22_flipped = case_when(q22 == 1 ~ 4, q22 == 2 ~ 3, q22 == 3 ~ 2, q22 == 4 ~ 1, q22 == 8 ~ 8, TRUE ~ 9),
         q13_flipped = case_when(q13 == 0 ~ 4, q13 == 1 ~ 3, q13 == 2 ~ 2, q13 == 3 ~ 1, TRUE ~ 9),
         q12a_flipped = case_when(q12a == 0 ~ 5, q12a == 1 ~ 4, q12a == 2 ~ 3, q12a == 3 ~ 2, q12a == 4 ~ 1, TRUE ~ 9),
         q12b_flipped = case_when(q12b == 0 ~ 5, q12b == 1 ~ 4, q12b == 2 ~ 3, q12b == 3 ~ 2, q12b == 4 ~ 1, TRUE ~ 9),
         q12c_flipped = case_when(q12c == 0 ~ 5, q12c == 1 ~ 4, q12c == 2 ~ 3, q12c == 3 ~ 2, q12c == 4 ~ 1, TRUE ~ 9),
         q12d_flipped = case_when(q12d == 0 ~ 5, q12d == 1 ~ 4, q12d == 2 ~ 3, q12d == 3 ~ 2, q12d == 4 ~ 1, TRUE ~ 9),
         q12e_flipped = case_when(q12e == 0 ~ 5, q12e == 1 ~ 4, q12e == 2 ~ 3, q12e == 3 ~ 2, q12e == 4 ~ 1, TRUE ~ 9),
         q92b_flipped = case_when(q92b == 0 ~ 6, q92b == 1 ~ 5, q92b == 2 ~ 4, q92b == 3 ~ 3, q92b == 4 ~ 2, TRUE ~ 9),
         q90a_flipped = case_when(q90a == 0 ~ 2, q90a == 1 ~ 1, q90a == 8 ~ 8, TRUE ~ 9),
         q20a_flipped = case_when(q20a == 0 ~ 3, q20a == 2 ~ 1, q20a == 9 ~ 9, TRUE ~ 2),
         q20b_flipped = case_when(q20b == 0 ~ 3, q20b == 2 ~ 1, q20b == 9 ~ 9, TRUE ~ 2),
         q30_flipped = case_when(q30 == 1 ~ 3, q30 == 2 ~ 2, q30 == 3 ~ 1, TRUE ~ 9),
         q15a_flipped = case_when(q15a == 1 ~ 4, q15a == 2 ~ 3, q15a == 3 ~ 2, q15a == 4 ~ 1, TRUE ~ 9),
         q15b_flipped = case_when(q15b == 1 ~ 4, q15b == 2 ~ 3, q15b == 3 ~ 2, q15b == 4 ~ 1, TRUE ~ 9),
         q15c_flipped = case_when(q15c == 1 ~ 4, q15c == 2 ~ 3, q15c == 3 ~ 2, q15c == 4 ~ 1, TRUE ~ 9))


AfroRoundVI_flipTestNA <- AfroRoundVI_flipTest1 %>% replace_with_na_all(condition = ~.x == 9)
AfroRoundVI_flipTestNA2 <- AfroRoundVI_flipTestNA %>% replace_with_na_all(condition = ~.x ==99)                                                 