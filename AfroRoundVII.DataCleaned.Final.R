library(haven)
r7_merged_data_34ctry_release <- read_sav("https://afrobarometer.org/sites/default/files/data/round-7/r7_merged_data_34ctry.release.sav")

write.csv(r7_merged_data_34ctry_release, "/Users/ethanstory/Downloads/AfroRoundVII.csv", row.names = TRUE)

library(readr)
AfroRoundVII <- read_csv("~/Downloads/AfroRoundVII.csv")

AfroRoundVII_RelevantTest <- AfroRoundVII[! (AfroRoundVII$COUNTRY==1 | AfroRoundVII$COUNTRY==2 | AfroRoundVII$COUNTRY==3 | AfroRoundVII$COUNTRY==4 | AfroRoundVII$COUNTRY==5 | AfroRoundVII$COUNTRY==6 | AfroRoundVII$COUNTRY==7 | AfroRoundVII$COUNTRY==8 | AfroRoundVII$COUNTRY==9 | AfroRoundVII$COUNTRY==10 | AfroRoundVII$COUNTRY==11 | AfroRoundVII$COUNTRY==12 | AfroRoundVII$COUNTRY==13 | AfroRoundVII$COUNTRY==14 | AfroRoundVII$COUNTRY==15 | AfroRoundVII$COUNTRY==16 | AfroRoundVII$COUNTRY==17 | AfroRoundVII$COUNTRY==18 | AfroRoundVII$COUNTRY==20 | AfroRoundVII$COUNTRY==21 | AfroRoundVII$COUNTRY==22 | AfroRoundVII$COUNTRY==23 | AfroRoundVII$COUNTRY==24 | AfroRoundVII$COUNTRY==25 | AfroRoundVII$COUNTRY==26 | AfroRoundVII$COUNTRY==27 | AfroRoundVII$COUNTRY==29 | AfroRoundVII$COUNTRY==30 | AfroRoundVII$COUNTRY==32 | AfroRoundVII$COUNTRY==33 | AfroRoundVII$COUNTRY==34),]

AfroRoundVII_RemoveColumnTest <- AfroRoundVII_RelevantTest [c("X1", "RESPNO", "COUNTRY", "COUNTRY_Old.order", "COUNTRY_R5List", "COUNTRY_R6List", "COUNTRY.BY.REGION", "URBRUR", "REGION", "Q4A", "Q6", "Q10A", "Q10B", "Q43A", "Q43B", "Q43C", "Q43D", "Q43E", "Q43F", "Q43G", "Q43H", "Q43I", "Q43J", "Q43K", "Q56A", "Q56B", "Q56C", "Q56D", "Q56E", "Q56F", "Q56G", "Q56H", "Q56I", "Q56J", "Q56K", "Q56L", "Q56M", "Q56N", "Q56O", "Q49P", "Q49I", "Q45", "Q44A", "Q44B", "Q44C", "Q44D", "Q44E", "Q44F", "Q44G", "Q44H", "Q44I", "Q44J", "Q20A", "Q20B", "Q22", "Q23", "Q24A", "Q24B", "Q88A", "Q88B", "Q16", "Q28", "Q35", "Q36", "Q12A", "Q12B", "Q12C", "Q12D", "Q12E", "Q14", "Q19A", "Q19B", "Q19C", "Q19D", "Q19E", "Q9")]
summary(AfroRoundVII_RemoveColumnTest)