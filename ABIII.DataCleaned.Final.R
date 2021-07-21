library(readr)
ABIII_English <- read_csv(url("https://media.githubusercontent.com/media/ecstory/mai_hassan_barometer_proj/main/ABIII_English_GitTest2.csv"))
view(ABIII_English)

ABIII_English_Relevant <- ABIII_English[! (ABIII_English$country=="Bahrain" | ABIII_English$country=="Iraq" | ABIII_English$country=="Jordan" | ABIII_English$country=="Kuwait" | ABIII_English$country=="Lebanon" | ABIII_English$country=="Libya" | ABIII_English$country=="Palestine" | ABIII_English$country=="Saudi Arabia" | ABIII_English$country=="Yemen"),]

ABIII_English_RemoveColumnTest <- ABIII_English_Relevant [c("qid", "bid", "country", "date", "wt", "form", "samp", "a1", "q1", "q13", "v13", "sex", "q101", "q102", "q102_insh", "q102a", "q103", "q103_insh", "q105", "q105_insh", "q105a", "q106", "q2011", "q2013", "q2014", "q2016", "q2017", "q20112", "q20113", "q20114", "q20115", "q20116", "q20117", "q20118", "q20119", "q2042", "q2043", "q2044", "q20412", "q20416", "q20417", "q20418", "q20419", "q210", "q210a", "q216", "q2185", "q301", "q302", "q303", "q404", "q4061", "q4062", "q4063", "q4064", "q4065", "q409", "q4101", "q4102", "q4103", "q5012", "q5013", "q5014", "q5015", "q5016", "q5017", "q50110", "q50111", "q501b", "q5021", "q5022", "q503", "q504", "q511", "q5151", "q5152", "q5161", "q5162", "q5163", "q5164", "q5165", "q5167", "q6061", "q6062", "q6063", "q6064", "q6065", "q6066")]

ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Missing"] <-0
ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Very good"] <-1
ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Good"] <-2
ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Bad"] <-3
ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Very bad"] <-4
ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Don't know"] <-8
ABIII_English_RemoveColumnTest$q101[ABIII_English_RemoveColumnTest$q101 == "Refuse"] <-9

ABIII_English_RemoveColumnTest2 <- ABIII_English_Relevant [c("qid", "bid", "country", "date", "wt", "form", "samp", "a1", "q1", "q13", "v13", "sex", "q101", "q102", "q102_insh", "q102a", "q103", "q103_insh", "q105", "q105_insh", "q105a", "q106", "q2011", "q2013", "q2014", "q2016", "q2017", "q20112", "q20113", "q20114", "q20115", "q20116", "q20117", "q20118", "q20119", "q2042", "q2043", "q2044", "q20412", "q20416", "q20417", "q20418", "q20419", "q210", "q210a", "q216", "q2185", "q301", "q302", "q303", "q404", "q4061", "q4062", "q4063", "q4064", "q4065", "q409", "q4101", "q4102", "q4103", "q5012", "q5013", "q5014", "q5015", "q5016", "q5017", "q50110", "q50111", "q501b", "q5021", "q5022", "q503", "q504", "q511", "q5151", "q5152", "q5161", "q5162", "q5163", "q5164", "q5165", "q5167", "q6061", "q6062", "q6063", "q6064", "q6065", "q6066")]

ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Missing"] <-0
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Much better"] <-1
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Somewhat better"] <-2
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Almost the same as the current situation"] <-3
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Somewhat worse"] <-4
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Much worse"] <-5
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Don't know"] <-8
ABIII_English_RemoveColumnTest$q102[ABIII_English_RemoveColumnTest$q102 == "Refuse"] <-9

ABIII_English_RemoveColumnTest$q102_insh[ABIII_English_RemoveColumnTest$q102_insh == "No mark"] <- 0
ABIII_English_RemoveColumnTest$q102_insh[ABIII_English_RemoveColumnTest$q102_insh == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q102_insh[ABIII_English_RemoveColumnTest$q102_insh == "No"] <- 2

ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Much worse"] <- 1
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Worse"] <- 2
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Similar"] <- 3
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Better"] <- 4
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Much better"] <- 5
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Don't know"] <-8
ABIII_English_RemoveColumnTest$q102a[ABIII_English_RemoveColumnTest$q102a == "Refuse"] <-9

ABIII_English_RemoveColumnTest$q103[ABIII_English_RemoveColumnTest$q103 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q103[ABIII_English_RemoveColumnTest$q103 == "Most people are trustworthy"] <- 1
ABIII_English_RemoveColumnTest$q103[ABIII_English_RemoveColumnTest$q103 == "Most people are not trustworthy"] <- 2
ABIII_English_RemoveColumnTest$q103[ABIII_English_RemoveColumnTest$q103 == "Don't know"] <-8
ABIII_English_RemoveColumnTest$q103[ABIII_English_RemoveColumnTest$q103 == "Refuse"] <-9

ABIII_English_RemoveColumnTest$q103_insh[ABIII_English_RemoveColumnTest$q103_insh == "No mark"] <- 0
ABIII_English_RemoveColumnTest$q103_insh[ABIII_English_RemoveColumnTest$q103_insh == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q103_insh[ABIII_English_RemoveColumnTest$q103_insh == "No"] <- 2

ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Fully ensured"] <- 1
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Ensured"] <- 2
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Not ensured"] <- 3
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Absolutely not ensured"] <- 4
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Refused"] <- 9

as.numeric(ABIII_English_RemoveColumnTest$q105)
typeof(ABIII_English_RemoveColumnTest$q105)
as.numeric(as.character(ABIII_English_RemoveColumnTest$q105))
ABIII_English_RemoveColumnTest$q105[ABIII_English_RemoveColumnTest$q105 == "Refuse"] <- 9
as.numeric(as.character(ABIII_English_RemoveColumnTest$q105))
typeof(ABIII_English_RemoveColumnTest$q105)
ABIII_English_RemoveColumnTest$q105 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q105))
typeof(ABIII_English_RemoveColumnTest$q105)

ABIII_English_RemoveColumnTest$q101 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q101))
typeof(ABIII_English_RemoveColumnTest$q101)
ABIII_English_RemoveColumnTest$q102 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q102))
typeof(ABIII_English_RemoveColumnTest$q102)
ABIII_English_RemoveColumnTest$q102_insh = as.numeric(as.character(ABIII_English_RemoveColumnTest$q102_insh))
typeof(ABIII_English_RemoveColumnTest$q102_insh)
ABIII_English_RemoveColumnTest$q102a = as.numeric(as.character(ABIII_English_RemoveColumnTest$q102a))
typeof(ABIII_English_RemoveColumnTest$q102a)
ABIII_English_RemoveColumnTest$q103 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q103))
typeof(ABIII_English_RemoveColumnTest$q103)
ABIII_English_RemoveColumnTest$q103_insh = as.numeric(as.character(ABIII_English_RemoveColumnTest$q103_insh))
typeof(ABIII_English_RemoveColumnTest$q103_insh)

ABIII_English_RemoveColumnTest$q105_insh[ABIII_English_RemoveColumnTest$q105_insh == "No mark"] <- 0
ABIII_English_RemoveColumnTest$q105_insh[ABIII_English_RemoveColumnTest$q105_insh == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q105_insh[ABIII_English_RemoveColumnTest$q105_insh == "No"] <- 2
ABIII_English_RemoveColumnTest$q105_insh = as.numeric(as.character(ABIII_English_RemoveColumnTest$q105_insh))
typeof(ABIII_English_RemoveColumnTest$q105_insh)

ABIII_English_RemoveColumnTest$q105a[ABIII_English_RemoveColumnTest$q105a == "Better than last year"] <- 1
ABIII_English_RemoveColumnTest$q105a[ABIII_English_RemoveColumnTest$q105a == "Same as last year"] <- 2
ABIII_English_RemoveColumnTest$q105a[ABIII_English_RemoveColumnTest$q105a == "Worse than last year"] <- 3
ABIII_English_RemoveColumnTest$q105a[ABIII_English_RemoveColumnTest$q105a == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q105a[ABIII_English_RemoveColumnTest$q105a == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q105a = as.numeric(as.character(ABIII_English_RemoveColumnTest$q105a))
typeof(ABIII_English_RemoveColumnTest$q105a)

ABIII_English_RemoveColumnTest$q106[ABIII_English_RemoveColumnTest$q106 == "To a great extent"] <- 1
ABIII_English_RemoveColumnTest$q106[ABIII_English_RemoveColumnTest$q106 == "To a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q106[ABIII_English_RemoveColumnTest$q106 == "To a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q106[ABIII_English_RemoveColumnTest$q106 == "Not at all"] <- 4
ABIII_English_RemoveColumnTest$q106[ABIII_English_RemoveColumnTest$q106 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q106[ABIII_English_RemoveColumnTest$q106 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q106 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q106))
typeof(ABIII_English_RemoveColumnTest$q106)

ABIII_English_RemoveColumnTest$q2011[ABIII_English_RemoveColumnTest$q2011 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q2011[ABIII_English_RemoveColumnTest$q2011 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q2011[ABIII_English_RemoveColumnTest$q2011 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q2011[ABIII_English_RemoveColumnTest$q2011 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q2011[ABIII_English_RemoveColumnTest$q2011 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q2011[ABIII_English_RemoveColumnTest$q2011 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q2013[ABIII_English_RemoveColumnTest$q2013 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q2013[ABIII_English_RemoveColumnTest$q2013 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q2013[ABIII_English_RemoveColumnTest$q2013 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q2013[ABIII_English_RemoveColumnTest$q2013 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q2013[ABIII_English_RemoveColumnTest$q2013 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q2013[ABIII_English_RemoveColumnTest$q2013 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q2014[ABIII_English_RemoveColumnTest$q2014 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q2014[ABIII_English_RemoveColumnTest$q2014 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q2014[ABIII_English_RemoveColumnTest$q2014 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q2014[ABIII_English_RemoveColumnTest$q2014 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q2014[ABIII_English_RemoveColumnTest$q2014 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q2014[ABIII_English_RemoveColumnTest$q2014 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q2016[ABIII_English_RemoveColumnTest$q2016 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q2016[ABIII_English_RemoveColumnTest$q2016 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q2016[ABIII_English_RemoveColumnTest$q2016 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q2016[ABIII_English_RemoveColumnTest$q2016 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q2016[ABIII_English_RemoveColumnTest$q2016 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q2016[ABIII_English_RemoveColumnTest$q2016 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q2017[ABIII_English_RemoveColumnTest$q2017 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q2017[ABIII_English_RemoveColumnTest$q2017 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q2017[ABIII_English_RemoveColumnTest$q2017 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q2017[ABIII_English_RemoveColumnTest$q2017 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q2017[ABIII_English_RemoveColumnTest$q2017 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q2017[ABIII_English_RemoveColumnTest$q2017 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q20112[ABIII_English_RemoveColumnTest$q20112 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q20112[ABIII_English_RemoveColumnTest$q20112 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q20112[ABIII_English_RemoveColumnTest$q20112 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q20112[ABIII_English_RemoveColumnTest$q20112 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q20112[ABIII_English_RemoveColumnTest$q20112 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q20112[ABIII_English_RemoveColumnTest$q20112 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q20113[ABIII_English_RemoveColumnTest$q20113 == "I trust it to a great extent"] <- 1
ABIII_English_RemoveColumnTest$q20113[ABIII_English_RemoveColumnTest$q20113 == "I trust it to a medium extent"] <- 2
ABIII_English_RemoveColumnTest$q20113[ABIII_English_RemoveColumnTest$q20113 == "I trust it to a limited extent"] <- 3
ABIII_English_RemoveColumnTest$q20113[ABIII_English_RemoveColumnTest$q20113 == "I absolutely do not trust it"] <- 4
ABIII_English_RemoveColumnTest$q20113[ABIII_English_RemoveColumnTest$q20113 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q20113[ABIII_English_RemoveColumnTest$q20113 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q2011 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2011))
typeof(ABIII_English_RemoveColumnTest$q2011)
ABIII_English_RemoveColumnTest$q2013 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2013))
typeof(ABIII_English_RemoveColumnTest$q2013)
ABIII_English_RemoveColumnTest$q2014 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2014))
typeof(ABIII_English_RemoveColumnTest$q2014)
ABIII_English_RemoveColumnTest$q2016 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2016))
typeof(ABIII_English_RemoveColumnTest$q2016)
ABIII_English_RemoveColumnTest$q2017 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2017))
typeof(ABIII_English_RemoveColumnTest$q2017)
ABIII_English_RemoveColumnTest$q20112 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q20112))
typeof(ABIII_English_RemoveColumnTest$q20112)
ABIII_English_RemoveColumnTest$q20113 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q20113))
typeof(ABIII_English_RemoveColumnTest$q20113)

ABIII_English_RemoveColumnTest$q2042[ABIII_English_RemoveColumnTest$q2042 == "Very good"] <- 1
ABIII_English_RemoveColumnTest$q2042[ABIII_English_RemoveColumnTest$q2042 == "Good"] <- 2
ABIII_English_RemoveColumnTest$q2042[ABIII_English_RemoveColumnTest$q2042 == "Bad"] <- 3
ABIII_English_RemoveColumnTest$q2042[ABIII_English_RemoveColumnTest$q2042 == "Very bad"] <- 4
ABIII_English_RemoveColumnTest$q2042[ABIII_English_RemoveColumnTest$q2042 == "This is not the government’s responsibility (do not read)"] <- 5
ABIII_English_RemoveColumnTest$q2042[ABIII_English_RemoveColumnTest$q2042 == "Don't know"] <- 8

ABIII_English_RemoveColumnTest$q2043[ABIII_English_RemoveColumnTest$q2043 == "Very good"] <- 1
ABIII_English_RemoveColumnTest$q2043[ABIII_English_RemoveColumnTest$q2043 == "Good"] <- 2
ABIII_English_RemoveColumnTest$q2043[ABIII_English_RemoveColumnTest$q2043 == "Bad"] <- 3
ABIII_English_RemoveColumnTest$q2043[ABIII_English_RemoveColumnTest$q2043 == "Very bad"] <- 4
ABIII_English_RemoveColumnTest$q2043[ABIII_English_RemoveColumnTest$q2043 == "This is not the government’s responsibility (do not read)"] <- 5
ABIII_English_RemoveColumnTest$q2043[ABIII_English_RemoveColumnTest$q2043 == "Don't know"] <- 8

ABIII_English_RemoveColumnTest$q2044[ABIII_English_RemoveColumnTest$q2044 == "Very good"] <- 1
ABIII_English_RemoveColumnTest$q2044[ABIII_English_RemoveColumnTest$q2044 == "Good"] <- 2
ABIII_English_RemoveColumnTest$q2044[ABIII_English_RemoveColumnTest$q2044 == "Bad"] <- 3
ABIII_English_RemoveColumnTest$q2044[ABIII_English_RemoveColumnTest$q2044 == "Very bad"] <- 4
ABIII_English_RemoveColumnTest$q2044[ABIII_English_RemoveColumnTest$q2044 == "This is not the government’s responsibility (do not read)"] <- 5
ABIII_English_RemoveColumnTest$q2044[ABIII_English_RemoveColumnTest$q2044 == "Don't know"] <- 8

ABIII_English_RemoveColumnTest$q20412[ABIII_English_RemoveColumnTest$q20412 == "Very good"] <- 1
ABIII_English_RemoveColumnTest$q20412[ABIII_English_RemoveColumnTest$q20412 == "Good"] <- 2
ABIII_English_RemoveColumnTest$q20412[ABIII_English_RemoveColumnTest$q20412 == "Bad"] <- 3
ABIII_English_RemoveColumnTest$q20412[ABIII_English_RemoveColumnTest$q20412 == "Very bad"] <- 4
ABIII_English_RemoveColumnTest$q20412[ABIII_English_RemoveColumnTest$q20412 == "This is not the government’s responsibility (do not read)"] <- 5
ABIII_English_RemoveColumnTest$q20412[ABIII_English_RemoveColumnTest$q20412 == "Don't know"] <- 8

ABIII_English_RemoveColumnTest$q2042 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2042))
typeof(ABIII_English_RemoveColumnTest$q2042)
ABIII_English_RemoveColumnTest$q2043 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2043))
typeof(ABIII_English_RemoveColumnTest$q2043)
ABIII_English_RemoveColumnTest$q2044 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2044))
typeof(ABIII_English_RemoveColumnTest$q2044)
ABIII_English_RemoveColumnTest$q20412 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q20412))
typeof(ABIII_English_RemoveColumnTest$q20412)

ABIII_English_RemoveColumnTest$q210[ABIII_English_RemoveColumnTest$q210 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q210[ABIII_English_RemoveColumnTest$q210 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q210[ABIII_English_RemoveColumnTest$q210 == "No"] <- 2
ABIII_English_RemoveColumnTest$q210[ABIII_English_RemoveColumnTest$q210 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q210[ABIII_English_RemoveColumnTest$q210 == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q210 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q210))
typeof(ABIII_English_RemoveColumnTest$q210)

ABIII_English_RemoveColumnTest$q210a[ABIII_English_RemoveColumnTest$q210a == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q210a[ABIII_English_RemoveColumnTest$q210a == "More than what it was two years ago"] <- 1
ABIII_English_RemoveColumnTest$q210a[ABIII_English_RemoveColumnTest$q210a == "The same as it was two years ago"] <- 2
ABIII_English_RemoveColumnTest$q210a[ABIII_English_RemoveColumnTest$q210a == "Less that what it was two years ago"] <- 3
ABIII_English_RemoveColumnTest$q210a[ABIII_English_RemoveColumnTest$q210a == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q210a[ABIII_English_RemoveColumnTest$q210a == "Refuse"] <- 9

ABIII_English_RemoveColumnTest$q210a = as.numeric(as.character(ABIII_English_RemoveColumnTest$q210a))
typeof(ABIII_English_RemoveColumnTest$q210a)

ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "I agree"] <- 2
ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "I disagree"] <- 3
ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q216[ABIII_English_RemoveColumnTest$q216 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q216 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q216))
typeof(ABIII_English_RemoveColumnTest$q216)

ABIII_English_RemoveColumnTest$q2185[ABIII_English_RemoveColumnTest$q2185 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q2185[ABIII_English_RemoveColumnTest$q2185 == "I agree"] <- 2
ABIII_English_RemoveColumnTest$q2185[ABIII_English_RemoveColumnTest$q2185 == "I disagree"] <- 3
ABIII_English_RemoveColumnTest$q2185[ABIII_English_RemoveColumnTest$q2185 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q2185[ABIII_English_RemoveColumnTest$q2185 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q2185[ABIII_English_RemoveColumnTest$q2185 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q2185 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q2185))
typeof(ABIII_English_RemoveColumnTest$q2185)

ABIII_English_RemoveColumnTest$q301[ABIII_English_RemoveColumnTest$q301 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q301[ABIII_English_RemoveColumnTest$q301 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q301[ABIII_English_RemoveColumnTest$q301 == "No"] <- 2
ABIII_English_RemoveColumnTest$q301[ABIII_English_RemoveColumnTest$q301 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q301[ABIII_English_RemoveColumnTest$q301 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q301 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q301))
typeof(ABIII_English_RemoveColumnTest$q301)

ABIII_English_RemoveColumnTest$q302[ABIII_English_RemoveColumnTest$q302 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q302[ABIII_English_RemoveColumnTest$q302 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q302[ABIII_English_RemoveColumnTest$q302 == "No"] <- 2
ABIII_English_RemoveColumnTest$q302[ABIII_English_RemoveColumnTest$q302 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q302[ABIII_English_RemoveColumnTest$q302 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q302 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q302))
typeof(ABIII_English_RemoveColumnTest$q302)

ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "They were completely free and fair"] <- 1
ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "They were free and fair, with some minor breaches"] <- 2
ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "They were free and fair, with some major breaches"] <- 3
ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "They were not free and fair"] <- 4
ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q303[ABIII_English_RemoveColumnTest$q303 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q303 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q303))
typeof(ABIII_English_RemoveColumnTest$q303)

ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Very interested"] <- 1
ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Interested"] <- 2
ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Slightly interested"] <- 3
ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Not interested"] <- 4
ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q404[ABIII_English_RemoveColumnTest$q404 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q404 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q404))
typeof(ABIII_English_RemoveColumnTest$q404)

ABIII_English_RemoveColumnTest$q4061[ABIII_English_RemoveColumnTest$q4061 == "Daily"] <- 1
ABIII_English_RemoveColumnTest$q4061[ABIII_English_RemoveColumnTest$q4061 == "A few times a week"] <- 2
ABIII_English_RemoveColumnTest$q4061[ABIII_English_RemoveColumnTest$q4061 == "A few times a month"] <- 3
ABIII_English_RemoveColumnTest$q4061[ABIII_English_RemoveColumnTest$q4061 == "Rarely"] <- 4
ABIII_English_RemoveColumnTest$q4061[ABIII_English_RemoveColumnTest$q4061 == "I do not follow political news at all"] <- 5
ABIII_English_RemoveColumnTest$q4061[ABIII_English_RemoveColumnTest$q4061 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4061 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4061))
typeof(ABIII_English_RemoveColumnTest$q4061)

ABIII_English_RemoveColumnTest$q4062[ABIII_English_RemoveColumnTest$q4062 == "Daily"] <- 1
ABIII_English_RemoveColumnTest$q4062[ABIII_English_RemoveColumnTest$q4062 == "A few times a week"] <- 2
ABIII_English_RemoveColumnTest$q4062[ABIII_English_RemoveColumnTest$q4062 == "A few times a month"] <- 3
ABIII_English_RemoveColumnTest$q4062[ABIII_English_RemoveColumnTest$q4062 == "Rarely"] <- 4
ABIII_English_RemoveColumnTest$q4062[ABIII_English_RemoveColumnTest$q4062 == "I do not follow political news at all"] <- 5
ABIII_English_RemoveColumnTest$q4062[ABIII_English_RemoveColumnTest$q4062 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4062 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4062))
typeof(ABIII_English_RemoveColumnTest$q4062)

ABIII_English_RemoveColumnTest$q4063[ABIII_English_RemoveColumnTest$q4063 == "Daily"] <- 1
ABIII_English_RemoveColumnTest$q4063[ABIII_English_RemoveColumnTest$q4063 == "A few times a week"] <- 2
ABIII_English_RemoveColumnTest$q4063[ABIII_English_RemoveColumnTest$q4063 == "A few times a month"] <- 3
ABIII_English_RemoveColumnTest$q4063[ABIII_English_RemoveColumnTest$q4063 == "Rarely"] <- 4
ABIII_English_RemoveColumnTest$q4063[ABIII_English_RemoveColumnTest$q4063 == "I do not follow political news at all"] <- 5
ABIII_English_RemoveColumnTest$q4063[ABIII_English_RemoveColumnTest$q4063 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4063 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4063))
typeof(ABIII_English_RemoveColumnTest$q4063)

ABIII_English_RemoveColumnTest$q4064[ABIII_English_RemoveColumnTest$q4064 == "Daily"] <- 1
ABIII_English_RemoveColumnTest$q4064[ABIII_English_RemoveColumnTest$q4064 == "A few times a week"] <- 2
ABIII_English_RemoveColumnTest$q4064[ABIII_English_RemoveColumnTest$q4064 == "A few times a month"] <- 3
ABIII_English_RemoveColumnTest$q4064[ABIII_English_RemoveColumnTest$q4064 == "Rarely"] <- 4
ABIII_English_RemoveColumnTest$q4064[ABIII_English_RemoveColumnTest$q4064 == "I do not follow political news at all"] <- 5
ABIII_English_RemoveColumnTest$q4064[ABIII_English_RemoveColumnTest$q4064 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4064 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4064))
typeof(ABIII_English_RemoveColumnTest$q4064)

ABIII_English_RemoveColumnTest$q4065[ABIII_English_RemoveColumnTest$q4065 == "Daily"] <- 1
ABIII_English_RemoveColumnTest$q4065[ABIII_English_RemoveColumnTest$q4065 == "A few times a week"] <- 2
ABIII_English_RemoveColumnTest$q4065[ABIII_English_RemoveColumnTest$q4065 == "A few times a month"] <- 3
ABIII_English_RemoveColumnTest$q4065[ABIII_English_RemoveColumnTest$q4065 == "Rarely"] <- 4
ABIII_English_RemoveColumnTest$q4065[ABIII_English_RemoveColumnTest$q4065 == "I do not follow political news at all"] <- 5
ABIII_English_RemoveColumnTest$q4065[ABIII_English_RemoveColumnTest$q4065 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4065 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4065))
typeof(ABIII_English_RemoveColumnTest$q4065)

ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "Daily or almost daily"] <- 1
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "At least once a week"] <- 2
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "At least once a month"] <- 3
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "A few times a year"] <- 4
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "I do not use the internet"] <- 5
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q409[ABIII_English_RemoveColumnTest$q409 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q409 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q409))
typeof(ABIII_English_RemoveColumnTest$q409)

ABIII_English_RemoveColumnTest$q4101[ABIII_English_RemoveColumnTest$q4101 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q4101[ABIII_English_RemoveColumnTest$q4101 == "No"] <- 2
ABIII_English_RemoveColumnTest$q4101[ABIII_English_RemoveColumnTest$q4101 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q4101[ABIII_English_RemoveColumnTest$q4101 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4101 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4101))
typeof(ABIII_English_RemoveColumnTest$q4101)

ABIII_English_RemoveColumnTest$q4102[ABIII_English_RemoveColumnTest$q4102 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q4102[ABIII_English_RemoveColumnTest$q4102 == "No"] <- 2
ABIII_English_RemoveColumnTest$q4102[ABIII_English_RemoveColumnTest$q4102 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q4102[ABIII_English_RemoveColumnTest$q4102 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4102 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4102))
typeof(ABIII_English_RemoveColumnTest$q4102)

ABIII_English_RemoveColumnTest$q4103[ABIII_English_RemoveColumnTest$q4103 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q4103[ABIII_English_RemoveColumnTest$q4103 == "No"] <- 2
ABIII_English_RemoveColumnTest$q4103[ABIII_English_RemoveColumnTest$q4103 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q4103[ABIII_English_RemoveColumnTest$q4103 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q4103 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q4103))
typeof(ABIII_English_RemoveColumnTest$q4103)

ABIII_English_RemoveColumnTest$q5012[ABIII_English_RemoveColumnTest$q5012 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q5012[ABIII_English_RemoveColumnTest$q5012 == "No"] <- 2
ABIII_English_RemoveColumnTest$q5012[ABIII_English_RemoveColumnTest$q5012 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5012[ABIII_English_RemoveColumnTest$q5012 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5012 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5012))
typeof(ABIII_English_RemoveColumnTest$q5012)

ABIII_English_RemoveColumnTest$q5013[ABIII_English_RemoveColumnTest$q5013 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q5013[ABIII_English_RemoveColumnTest$q5013 == "No"] <- 2
ABIII_English_RemoveColumnTest$q5013[ABIII_English_RemoveColumnTest$q5013 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5013[ABIII_English_RemoveColumnTest$q5013 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5013 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5013))
typeof(ABIII_English_RemoveColumnTest$q5013)

ABIII_English_RemoveColumnTest$q5014[ABIII_English_RemoveColumnTest$q5014 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q5014[ABIII_English_RemoveColumnTest$q5014 == "No"] <- 2
ABIII_English_RemoveColumnTest$q5014[ABIII_English_RemoveColumnTest$q5014 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5014[ABIII_English_RemoveColumnTest$q5014 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5014 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5014))
typeof(ABIII_English_RemoveColumnTest$q5014)

ABIII_English_RemoveColumnTest$q5015[ABIII_English_RemoveColumnTest$q5015 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q5015[ABIII_English_RemoveColumnTest$q5015 == "No"] <- 2
ABIII_English_RemoveColumnTest$q5015[ABIII_English_RemoveColumnTest$q5015 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5015[ABIII_English_RemoveColumnTest$q5015 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5015 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5015))
typeof(ABIII_English_RemoveColumnTest$q5015)

ABIII_English_RemoveColumnTest$q5016[ABIII_English_RemoveColumnTest$q5016 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q5016[ABIII_English_RemoveColumnTest$q5016 == "No"] <- 2
ABIII_English_RemoveColumnTest$q5016[ABIII_English_RemoveColumnTest$q5016 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5016[ABIII_English_RemoveColumnTest$q5016 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5016 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5016))
typeof(ABIII_English_RemoveColumnTest$q5016)

ABIII_English_RemoveColumnTest$q50110[ABIII_English_RemoveColumnTest$q50110 == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q50110[ABIII_English_RemoveColumnTest$q50110 == "No"] <- 2
ABIII_English_RemoveColumnTest$q50110[ABIII_English_RemoveColumnTest$q50110 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q50110[ABIII_English_RemoveColumnTest$q50110 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q50110 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q50110))
typeof(ABIII_English_RemoveColumnTest$q50110)

ABIII_English_RemoveColumnTest$q501b[ABIII_English_RemoveColumnTest$q501b == "Yes"] <- 1
ABIII_English_RemoveColumnTest$q501b[ABIII_English_RemoveColumnTest$q501b == "No"] <- 2
ABIII_English_RemoveColumnTest$q501b[ABIII_English_RemoveColumnTest$q501b == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q501b[ABIII_English_RemoveColumnTest$q501b == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q501b = as.numeric(as.character(ABIII_English_RemoveColumnTest$q501b))
typeof(ABIII_English_RemoveColumnTest$q501b)

ABIII_English_RemoveColumnTest$q5021[ABIII_English_RemoveColumnTest$q5021 == "Once"] <- 1
ABIII_English_RemoveColumnTest$q5021[ABIII_English_RemoveColumnTest$q5021 == "More than once"] <- 2
ABIII_English_RemoveColumnTest$q5021[ABIII_English_RemoveColumnTest$q5021 == "I have never participated"] <- 3
ABIII_English_RemoveColumnTest$q5021[ABIII_English_RemoveColumnTest$q5021 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5021[ABIII_English_RemoveColumnTest$q5021 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5021 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5021))
typeof(ABIII_English_RemoveColumnTest$q5021)

ABIII_English_RemoveColumnTest$q5022[ABIII_English_RemoveColumnTest$q5022 == "Once"] <- 1
ABIII_English_RemoveColumnTest$q5022[ABIII_English_RemoveColumnTest$q5022 == "More than once"] <- 2
ABIII_English_RemoveColumnTest$q5022[ABIII_English_RemoveColumnTest$q5022 == "I have never participated"] <- 3
ABIII_English_RemoveColumnTest$q5022[ABIII_English_RemoveColumnTest$q5022 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5022[ABIII_English_RemoveColumnTest$q5022 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5022 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5022))
typeof(ABIII_English_RemoveColumnTest$q5022)

ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Missing"] <- 0
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Very good"] <- 1
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Good"] <- 2
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Neither good nor bad"] <- 3
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Bad"] <- 4
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Very bad"] <- 5
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q504[ABIII_English_RemoveColumnTest$q504 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q504 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q504))
typeof(ABIII_English_RemoveColumnTest$q504)

ABIII_English_RemoveColumnTest$q511[ABIII_English_RemoveColumnTest$q511 == "Not concerned / Not interested"] <- 96
ABIII_English_RemoveColumnTest$q511[ABIII_English_RemoveColumnTest$q511 == "Don't know"] <- 98
ABIII_English_RemoveColumnTest$q511[ABIII_English_RemoveColumnTest$q511 == "Refuse"] <- 99
ABIII_English_RemoveColumnTest$q511[ABIII_English_RemoveColumnTest$q511 == "No democracy whatsoever"] <- 0
ABIII_English_RemoveColumnTest$q511[ABIII_English_RemoveColumnTest$q511 == "Democratic to the greatest extent possible"] <- 10
ABIII_English_RemoveColumnTest$q511 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q511))
typeof(ABIII_English_RemoveColumnTest$q511)

ABIII_English_RemoveColumnTest$q5161[ABIII_English_RemoveColumnTest$q5161 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q5161[ABIII_English_RemoveColumnTest$q5161 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q5161[ABIII_English_RemoveColumnTest$q5161 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q5161[ABIII_English_RemoveColumnTest$q5161 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q5161[ABIII_English_RemoveColumnTest$q5161 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5161[ABIII_English_RemoveColumnTest$q5161 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5161 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5161))
typeof(ABIII_English_RemoveColumnTest$q5161)

ABIII_English_RemoveColumnTest$q5162[ABIII_English_RemoveColumnTest$q5162 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q5162[ABIII_English_RemoveColumnTest$q5162 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q5162[ABIII_English_RemoveColumnTest$q5162 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q5162[ABIII_English_RemoveColumnTest$q5162 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q5162[ABIII_English_RemoveColumnTest$q5162 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5162[ABIII_English_RemoveColumnTest$q5162 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5162 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5162))
typeof(ABIII_English_RemoveColumnTest$q5162)

ABIII_English_RemoveColumnTest$q5163[ABIII_English_RemoveColumnTest$q5163 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q5163[ABIII_English_RemoveColumnTest$q5163 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q5163[ABIII_English_RemoveColumnTest$q5163 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q5163[ABIII_English_RemoveColumnTest$q5163 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q5163[ABIII_English_RemoveColumnTest$q5163 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5163[ABIII_English_RemoveColumnTest$q5163 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5163 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5163))
typeof(ABIII_English_RemoveColumnTest$q5163)

ABIII_English_RemoveColumnTest$q5164[ABIII_English_RemoveColumnTest$q5164 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q5164[ABIII_English_RemoveColumnTest$q5164 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q5164[ABIII_English_RemoveColumnTest$q5164 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q5164[ABIII_English_RemoveColumnTest$q5164 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q5164[ABIII_English_RemoveColumnTest$q5164 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5164[ABIII_English_RemoveColumnTest$q5164 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5164 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5164))
typeof(ABIII_English_RemoveColumnTest$q5164)

ABIII_English_RemoveColumnTest$q5165[ABIII_English_RemoveColumnTest$q5165 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q5165[ABIII_English_RemoveColumnTest$q5165 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q5165[ABIII_English_RemoveColumnTest$q5165 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q5165[ABIII_English_RemoveColumnTest$q5165 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q5165[ABIII_English_RemoveColumnTest$q5165 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5165[ABIII_English_RemoveColumnTest$q5165 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5165 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5165))
typeof(ABIII_English_RemoveColumnTest$q5165)

ABIII_English_RemoveColumnTest$q5167[ABIII_English_RemoveColumnTest$q5167 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q5167[ABIII_English_RemoveColumnTest$q5167 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q5167[ABIII_English_RemoveColumnTest$q5167 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q5167[ABIII_English_RemoveColumnTest$q5167 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q5167[ABIII_English_RemoveColumnTest$q5167 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q5167[ABIII_English_RemoveColumnTest$q5167 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q5167 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q5167))
typeof(ABIII_English_RemoveColumnTest$q5167)

ABIII_English_RemoveColumnTest$q6061[ABIII_English_RemoveColumnTest$q6061 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q6061[ABIII_English_RemoveColumnTest$q6061 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q6061[ABIII_English_RemoveColumnTest$q6061 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q6061[ABIII_English_RemoveColumnTest$q6061 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q6061[ABIII_English_RemoveColumnTest$q6061 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q6061[ABIII_English_RemoveColumnTest$q6061 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q6061 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q6061))
typeof(ABIII_English_RemoveColumnTest$q6061)

ABIII_English_RemoveColumnTest$q6062[ABIII_English_RemoveColumnTest$q6062 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q6062[ABIII_English_RemoveColumnTest$q6062 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q6062[ABIII_English_RemoveColumnTest$q6062 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q6062[ABIII_English_RemoveColumnTest$q6062 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q6062[ABIII_English_RemoveColumnTest$q6062 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q6062[ABIII_English_RemoveColumnTest$q6062 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q6062 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q6062))
typeof(ABIII_English_RemoveColumnTest$q6062)

ABIII_English_RemoveColumnTest$q6063[ABIII_English_RemoveColumnTest$q6063 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q6063[ABIII_English_RemoveColumnTest$q6063 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q6063[ABIII_English_RemoveColumnTest$q6063 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q6063[ABIII_English_RemoveColumnTest$q6063 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q6063[ABIII_English_RemoveColumnTest$q6063 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q6063[ABIII_English_RemoveColumnTest$q6063 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q6063 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q6063))
typeof(ABIII_English_RemoveColumnTest$q6063)

ABIII_English_RemoveColumnTest$q6064[ABIII_English_RemoveColumnTest$q6064 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q6064[ABIII_English_RemoveColumnTest$q6064 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q6064[ABIII_English_RemoveColumnTest$q6064 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q6064[ABIII_English_RemoveColumnTest$q6064 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q6064[ABIII_English_RemoveColumnTest$q6064 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q6064[ABIII_English_RemoveColumnTest$q6064 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q6064 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q6064))
typeof(ABIII_English_RemoveColumnTest$q6064)

ABIII_English_RemoveColumnTest$q6065[ABIII_English_RemoveColumnTest$q6065 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q6065[ABIII_English_RemoveColumnTest$q6065 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q6065[ABIII_English_RemoveColumnTest$q6065 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q6065[ABIII_English_RemoveColumnTest$q6065 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q6065[ABIII_English_RemoveColumnTest$q6065 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q6065[ABIII_English_RemoveColumnTest$q6065 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q6065 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q6065))
typeof(ABIII_English_RemoveColumnTest$q6065)

ABIII_English_RemoveColumnTest$q6066[ABIII_English_RemoveColumnTest$q6066 == "I strongly agree"] <- 1
ABIII_English_RemoveColumnTest$q6066[ABIII_English_RemoveColumnTest$q6066 == "I somewhat agree"] <- 2
ABIII_English_RemoveColumnTest$q6066[ABIII_English_RemoveColumnTest$q6066 == "I somewhat disagree"] <- 3
ABIII_English_RemoveColumnTest$q6066[ABIII_English_RemoveColumnTest$q6066 == "I strongly disagree"] <- 4
ABIII_English_RemoveColumnTest$q6066[ABIII_English_RemoveColumnTest$q6066 == "Don't know"] <- 8
ABIII_English_RemoveColumnTest$q6066[ABIII_English_RemoveColumnTest$q6066 == "Refuse"] <- 9
ABIII_English_RemoveColumnTest$q6066 = as.numeric(as.character(ABIII_English_RemoveColumnTest$q6066))
typeof(ABIII_English_RemoveColumnTest$q6066)

summary(ABIII_English_RemoveColumnTest)

