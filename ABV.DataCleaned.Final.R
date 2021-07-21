library(readr)
ABV_Release_Data <- read_csv(url("https://media.githubusercontent.com/media/ecstory/mai_hassan_barometer_proj/main/ABV_Release_Data.csv"))

ABV_English_Relevant <- ABV_Release_Data[! (ABV_Release_Data$country==7 | ABV_Release_Data$country==8 | ABV_Release_Data$country==9 | ABV_Release_Data$country==10 | ABV_Release_Data$country==11 | ABV_Release_Data$country==15 | ABV_Release_Data$country==22),]

ABV_English_RemoveColumnTest <- ABV_English_Relevant [c("id", "country", "psu", "splita", "splitb", "wave", "q1", "a1", "q13", "wt", "stratum", "sample", "mode", "Q101", "Q101A", "Q102", "Q105", "Q201A_1", "Q201A_2", "Q201A_3", "Q201A_5", "Q201A_41", "Q201A_42", "Q201A_7", "Q201B_6", "Q201B_13", "Q201B_20", "Q201B_31", "Q201B_12", "Q204A_1", "Q204A_2", "Q513", "Q204_2", "Q204_3", "Q204_11", "Q204_20", "Q204_22", "Q204B_13", "Q204B_15", "Q204C_13", "Q204C_15", "Q205_4", "Q205_1", "Q210", "Q211", "Q211A", "Q501", "Q502_1", "Q502_2", "Q502_4", "Q301A", "Q301B", "Q303A", "Q302", "Q503A", "Q601A", "Q516A", "Q511", "Q512", "Q423_1", "Q423_2", "Q423_3", "Q409", "Q521_1", "Q521_4", "Q521_5", "Q1017")]

summary(ABV_English_RemoveColumnTest)