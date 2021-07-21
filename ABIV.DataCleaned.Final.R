library(readr)
ABIV_English <- read_csv("~/Downloads/ABIV_English.csv")

view(ABIV_English)

ABIV_English_Relevant <- ABIV_English[! (ABIV_English$country=="Bahrain" | ABIV_English$country=="Iraq" | ABIV_English$country=="Jordan" | ABIV_English$country=="Kuwait" | ABIV_English$country=="Lebanon" | ABIV_English$country=="Libya" | ABIV_English$country=="Palestine" | ABIV_English$country=="Saudi Arabia" | ABIV_English$country=="Yemen"),]

ABIV_English_RemoveColumnTest <- ABIV_English_Relevant [c("qid", "country", "sample", "stratum", "psu", "wt", "a1", "q1", "q2", "q13", "q101", "q101a", "q102", "q102b", "q105", "q106", "q2011", "q2012", "q2013", "q2014", "q2015", "q2016", "q20112", "q20113", "q20120", "q204a1", "q204a2", "q2041", "q2042", "q2043", "q2044", "q20420", "q20421", "q20422", "q2061", "q2061other", "q2062", "q2062other", "q210", "q301", "q302", "q303", "q404", "q4061", "q4062", "q409", "q4113", "q4114", "q4116", "q501", "q501b", "q501c", "q5021", "q5022", "q503", "q511", "q512", "q5161", "q5162", "q5163", "q5164", "q5165", "q516a", "q5211", "q5212", "q5213", "q5214", "q5215", "q6061", "q6062", "q6063", "q6064")]

ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Missing"] <- 0
ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Good"] <-2
ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q101[ABIV_English_RemoveColumnTest$q101 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q101 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q101))
typeof(ABIV_English_RemoveColumnTest$q101)

ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Much better"] <- 1
ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Somewhat better"] <- 2
ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Almost the same as the current situation"] <- 3
ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Somewhat worse"] <- 4
ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Much worse"] <- 5
ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q101a[ABIV_English_RemoveColumnTest$q101a == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q101a = as.numeric(as.character(ABIV_English_RemoveColumnTest$q101a))
typeof(ABIV_English_RemoveColumnTest$q101a)

ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Missing"] <-0
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Much better"] <-1
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Somewhat better"] <-2
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Almost the same as the current situation"] <-3
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Somewhat worse"] <-4
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Much worse"] <-5
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Don't know (Do not read)"] <-98
ABIV_English_RemoveColumnTest$q102[ABIV_English_RemoveColumnTest$q102 == "Decline to answer (Do not read)"] <-99
ABIV_English_RemoveColumnTest$q102 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q102))
typeof(ABIV_English_RemoveColumnTest$q102)

ABIV_English_RemoveColumnTest$q102b[ABIV_English_RemoveColumnTest$q102b == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q102b[ABIV_English_RemoveColumnTest$q102b == "Good"] <- 2
ABIV_English_RemoveColumnTest$q102b[ABIV_English_RemoveColumnTest$q102b == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q102b[ABIV_English_RemoveColumnTest$q102b == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q102b[ABIV_English_RemoveColumnTest$q102b == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q102b[ABIV_English_RemoveColumnTest$q102b == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q102b = as.numeric(as.character(ABIV_English_RemoveColumnTest$q102b))
typeof(ABIV_English_RemoveColumnTest$q102b)

ABIV_English_RemoveColumnTest$q105[ABIV_English_RemoveColumnTest$q105 == "Fully ensured"] <- 1
ABIV_English_RemoveColumnTest$q105[ABIV_English_RemoveColumnTest$q105 == "Ensured"] <- 2
ABIV_English_RemoveColumnTest$q105[ABIV_English_RemoveColumnTest$q105 == "Not ensured"] <- 3
ABIV_English_RemoveColumnTest$q105[ABIV_English_RemoveColumnTest$q105 == "Absolutely not ensured"] <- 4
ABIV_English_RemoveColumnTest$q105[ABIV_English_RemoveColumnTest$q105 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q105[ABIV_English_RemoveColumnTest$q105 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q105 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q105))
typeof(ABIV_English_RemoveColumnTest$q105)

ABIV_English_RemoveColumnTest$q106[ABIV_English_RemoveColumnTest$q106 == "To a great extent"] <- 1
ABIV_English_RemoveColumnTest$q106[ABIV_English_RemoveColumnTest$q106 == "To a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q106[ABIV_English_RemoveColumnTest$q106 == "To a limited extent"] <- 3
ABIV_English_RemoveColumnTest$q106[ABIV_English_RemoveColumnTest$q106 == "Not treated equally at all"] <- 4
ABIV_English_RemoveColumnTest$q106[ABIV_English_RemoveColumnTest$q106 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q106[ABIV_English_RemoveColumnTest$q106 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q106 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q106))
typeof(ABIV_English_RemoveColumnTest$q106)

ABIV_English_RemoveColumnTest$q2011[ABIV_English_RemoveColumnTest$q2011 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q2011[ABIV_English_RemoveColumnTest$q2011 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q2011[ABIV_English_RemoveColumnTest$q2011 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q2011[ABIV_English_RemoveColumnTest$q2011 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q2011[ABIV_English_RemoveColumnTest$q2011 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2011[ABIV_English_RemoveColumnTest$q2011 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q2012[ABIV_English_RemoveColumnTest$q2012 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q2012[ABIV_English_RemoveColumnTest$q2012 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q2012[ABIV_English_RemoveColumnTest$q2012 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q2012[ABIV_English_RemoveColumnTest$q2012 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q2012[ABIV_English_RemoveColumnTest$q2012 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2012[ABIV_English_RemoveColumnTest$q2012 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q2013[ABIV_English_RemoveColumnTest$q2013 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q2013[ABIV_English_RemoveColumnTest$q2013 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q2013[ABIV_English_RemoveColumnTest$q2013 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q2013[ABIV_English_RemoveColumnTest$q2013 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q2013[ABIV_English_RemoveColumnTest$q2013 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2013[ABIV_English_RemoveColumnTest$q2013 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q2014[ABIV_English_RemoveColumnTest$q2014 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q2014[ABIV_English_RemoveColumnTest$q2014 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q2014[ABIV_English_RemoveColumnTest$q2014 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q2014[ABIV_English_RemoveColumnTest$q2014 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q2014[ABIV_English_RemoveColumnTest$q2014 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2014[ABIV_English_RemoveColumnTest$q2014 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q2016[ABIV_English_RemoveColumnTest$q2016 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q2016[ABIV_English_RemoveColumnTest$q2016 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q2016[ABIV_English_RemoveColumnTest$q2016 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q2016[ABIV_English_RemoveColumnTest$q2016 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q2016[ABIV_English_RemoveColumnTest$q2016 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2016[ABIV_English_RemoveColumnTest$q2016 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q20112[ABIV_English_RemoveColumnTest$q20112 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q20112[ABIV_English_RemoveColumnTest$q20112 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q20112[ABIV_English_RemoveColumnTest$q20112 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q20112[ABIV_English_RemoveColumnTest$q20112 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q20112[ABIV_English_RemoveColumnTest$q20112 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q20112[ABIV_English_RemoveColumnTest$q20112 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q20113[ABIV_English_RemoveColumnTest$q20113 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q20113[ABIV_English_RemoveColumnTest$q20113 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q20113[ABIV_English_RemoveColumnTest$q20113 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q20113[ABIV_English_RemoveColumnTest$q20113 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q20113[ABIV_English_RemoveColumnTest$q20113 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q20113[ABIV_English_RemoveColumnTest$q20113 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q20120[ABIV_English_RemoveColumnTest$q20120 == "A great deal of trust"] <- 1
ABIV_English_RemoveColumnTest$q20120[ABIV_English_RemoveColumnTest$q20120 == "Quite a lot of trust"] <- 2
ABIV_English_RemoveColumnTest$q20120[ABIV_English_RemoveColumnTest$q20120 == "Not very much trust"] <- 3
ABIV_English_RemoveColumnTest$q20120[ABIV_English_RemoveColumnTest$q20120 == "No trust at all"] <- 4
ABIV_English_RemoveColumnTest$q20120[ABIV_English_RemoveColumnTest$q20120 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q20120[ABIV_English_RemoveColumnTest$q20120 == "Decline to answer (Do not read)"] <- 99

ABIV_English_RemoveColumnTest$q2011 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2011))
typeof(ABIV_English_RemoveColumnTest$q2011)
ABIV_English_RemoveColumnTest$q2012 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2012))
typeof(ABIV_English_RemoveColumnTest$q2012)
ABIV_English_RemoveColumnTest$q2013 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2013))
typeof(ABIV_English_RemoveColumnTest$q2013)
ABIV_English_RemoveColumnTest$q2014 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2014))
typeof(ABIV_English_RemoveColumnTest$q2014)
ABIV_English_RemoveColumnTest$q2016 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2016))
typeof(ABIV_English_RemoveColumnTest$q2016)
ABIV_English_RemoveColumnTest$q20112 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q20112))
typeof(ABIV_English_RemoveColumnTest$q20112)
ABIV_English_RemoveColumnTest$q20113 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q20113))
typeof(ABIV_English_RemoveColumnTest$q20113)
ABIV_English_RemoveColumnTest$q20120 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q20120))
typeof(ABIV_English_RemoveColumnTest$q20120)

ABIV_English_RemoveColumnTest$q204a1[ABIV_English_RemoveColumnTest$q204a1 == "Definitely satisfied"] <- 1
ABIV_English_RemoveColumnTest$q204a1[ABIV_English_RemoveColumnTest$q204a1 == "Satisfied"] <- 2
ABIV_English_RemoveColumnTest$q204a1[ABIV_English_RemoveColumnTest$q204a1 == "Dissatisfied"] <- 3
ABIV_English_RemoveColumnTest$q204a1[ABIV_English_RemoveColumnTest$q204a1 == "Definitely dissatisfied"] <- 4
ABIV_English_RemoveColumnTest$q204a1[ABIV_English_RemoveColumnTest$q204a1 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q204a1[ABIV_English_RemoveColumnTest$q204a1 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q204a1 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q204a1))
typeof(ABIV_English_RemoveColumnTest$q204a1)

ABIV_English_RemoveColumnTest$q204a2[ABIV_English_RemoveColumnTest$q204a2 == "Definitely satisfied"] <- 1
ABIV_English_RemoveColumnTest$q204a2[ABIV_English_RemoveColumnTest$q204a2 == "Satisfied"] <- 2
ABIV_English_RemoveColumnTest$q204a2[ABIV_English_RemoveColumnTest$q204a2 == "Dissatisfied"] <- 3
ABIV_English_RemoveColumnTest$q204a2[ABIV_English_RemoveColumnTest$q204a2 == "Definitely dissatisfied"] <- 4
ABIV_English_RemoveColumnTest$q204a2[ABIV_English_RemoveColumnTest$q204a2 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q204a2[ABIV_English_RemoveColumnTest$q204a2 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q204a2 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q204a2))
typeof(ABIV_English_RemoveColumnTest$q204a2)

ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2041[ABIV_English_RemoveColumnTest$q2041 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q2041 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2041))
typeof(ABIV_English_RemoveColumnTest$q2041)

ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2042[ABIV_English_RemoveColumnTest$q2042 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q2042 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2042))
typeof(ABIV_English_RemoveColumnTest$q2042)

ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2043[ABIV_English_RemoveColumnTest$q2043 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q2043 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2043))
typeof(ABIV_English_RemoveColumnTest$q2043)

ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2044[ABIV_English_RemoveColumnTest$q2044 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q2044 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2044))
typeof(ABIV_English_RemoveColumnTest$q2044)

ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q20420[ABIV_English_RemoveColumnTest$q20420 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q20420 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q20420))
typeof(ABIV_English_RemoveColumnTest$q20420)

ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q20421[ABIV_English_RemoveColumnTest$q20421 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q20421 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q20421))
typeof(ABIV_English_RemoveColumnTest$q20421)

ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "Very good"] <- 1
ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "Good"] <- 2
ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "Bad"] <- 3
ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "Very bad"] <- 4
ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "This is not the government’s responsibility (Do not read)"] <- 5
ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q20422[ABIV_English_RemoveColumnTest$q20422 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q20422 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q20422))
typeof(ABIV_English_RemoveColumnTest$q20422)

ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Economic situation (poverty; unemployment, inflation)"] <- 1
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Financial and administrative corruption"] <- 2
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Democracy"] <- 3
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Internal stability and security"] <- 6
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Foreign interference"] <- 7
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Religious extremism"] <- 8
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Other"] <- 9
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2061[ABIV_English_RemoveColumnTest$q2061 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q2061 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2061))
typeof(ABIV_English_RemoveColumnTest$q2061)

ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Economic situation (poverty; unemployment, inflation)"] <- 1
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Financial and administrative corruption"] <- 2
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Democracy"] <- 3
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Internal stability and security"] <- 6
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Foreign interference"] <- 7
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Religious extremism"] <- 8
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Other"] <- 9
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q2062[ABIV_English_RemoveColumnTest$q2062 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q2062 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q2062))
typeof(ABIV_English_RemoveColumnTest$q2062)

ABIV_English_RemoveColumnTest$q210[ABIV_English_RemoveColumnTest$q210 == "To a large extent"] <- 1
ABIV_English_RemoveColumnTest$q210[ABIV_English_RemoveColumnTest$q210 == "To a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q210[ABIV_English_RemoveColumnTest$q210 == "To a small extent"] <- 3
ABIV_English_RemoveColumnTest$q210[ABIV_English_RemoveColumnTest$q210 == "Not at all"] <- 4
ABIV_English_RemoveColumnTest$q210[ABIV_English_RemoveColumnTest$q210 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q210[ABIV_English_RemoveColumnTest$q210 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q210 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q210))
typeof(ABIV_English_RemoveColumnTest$q210)

ABIV_English_RemoveColumnTest$q301[ABIV_English_RemoveColumnTest$q301 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q301[ABIV_English_RemoveColumnTest$q301 == "No"] <- 2
ABIV_English_RemoveColumnTest$q301[ABIV_English_RemoveColumnTest$q301 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q301[ABIV_English_RemoveColumnTest$q301 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q301 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q301))
typeof(ABIV_English_RemoveColumnTest$q301)

ABIV_English_RemoveColumnTest$q302[ABIV_English_RemoveColumnTest$q302 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q302[ABIV_English_RemoveColumnTest$q302 == "No"] <- 2
ABIV_English_RemoveColumnTest$q302[ABIV_English_RemoveColumnTest$q302 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q302[ABIV_English_RemoveColumnTest$q302 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q302 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q302))
typeof(ABIV_English_RemoveColumnTest$q302)

ABIV_English_RemoveColumnTest$q303[ABIV_English_RemoveColumnTest$q303 == "Completely free and fair"] <- 1
ABIV_English_RemoveColumnTest$q303[ABIV_English_RemoveColumnTest$q303 == "Free and fair, but with minor problems"] <- 2
ABIV_English_RemoveColumnTest$q303[ABIV_English_RemoveColumnTest$q303 == "Free and fair, with major problems"] <- 3
ABIV_English_RemoveColumnTest$q303[ABIV_English_RemoveColumnTest$q303 == "Not free or fair"] <- 4
ABIV_English_RemoveColumnTest$q303[ABIV_English_RemoveColumnTest$q303 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q303[ABIV_English_RemoveColumnTest$q303 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q303 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q303))
typeof(ABIV_English_RemoveColumnTest$q303)

ABIV_English_RemoveColumnTest$q404[ABIV_English_RemoveColumnTest$q404 == "Very interested"] <- 1
ABIV_English_RemoveColumnTest$q404[ABIV_English_RemoveColumnTest$q404 == "Interested"] <- 2
ABIV_English_RemoveColumnTest$q404[ABIV_English_RemoveColumnTest$q404 == "Somewhat interested"] <- 3
ABIV_English_RemoveColumnTest$q404[ABIV_English_RemoveColumnTest$q404 == "Not interested at all"] <- 4
ABIV_English_RemoveColumnTest$q404[ABIV_English_RemoveColumnTest$q404 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q404[ABIV_English_RemoveColumnTest$q404 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q404 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q404))
typeof(ABIV_English_RemoveColumnTest$q404)

ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "Daily"] <- 1
ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "A number of times a week"] <- 2
ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "A number of times a month"] <- 3
ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "Rarely"] <- 4
ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "I don’t follow it ever"] <- 5
ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q4061[ABIV_English_RemoveColumnTest$q4061 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q4061 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q4061))
typeof(ABIV_English_RemoveColumnTest$q4061)

ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "Daily"] <- 1
ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "A number of times a week"] <- 2
ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "A number of times a month"] <- 3
ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "Rarely"] <- 4
ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "I don’t follow it ever"] <- 5
ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q4062[ABIV_English_RemoveColumnTest$q4062 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q4062 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q4062))
typeof(ABIV_English_RemoveColumnTest$q4062)

ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "I am online almost all day"] <- 1
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "Daily"] <- 2
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "Several times a week"] <- 3
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "Once a week"] <- 4
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "Less than once a week"] <- 5
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "I do not use the internet"] <- 6
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q409[ABIV_English_RemoveColumnTest$q409 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q409 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q409))
typeof(ABIV_English_RemoveColumnTest$q409)

ABIV_English_RemoveColumnTest$q4113[ABIV_English_RemoveColumnTest$q4113 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q4113[ABIV_English_RemoveColumnTest$q4113 == "No"] <- 2
ABIV_English_RemoveColumnTest$q4113[ABIV_English_RemoveColumnTest$q4113 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q4113[ABIV_English_RemoveColumnTest$q4113 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q4113[ABIV_English_RemoveColumnTest$q4113 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q4113 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q4113))
typeof(ABIV_English_RemoveColumnTest$q4113)

ABIV_English_RemoveColumnTest$q4114[ABIV_English_RemoveColumnTest$q4114 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q4114[ABIV_English_RemoveColumnTest$q4114 == "No"] <- 2
ABIV_English_RemoveColumnTest$q4114[ABIV_English_RemoveColumnTest$q4114 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q4114[ABIV_English_RemoveColumnTest$q4114 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q4114[ABIV_English_RemoveColumnTest$q4114 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q4114 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q4114))
typeof(ABIV_English_RemoveColumnTest$q4114)

ABIV_English_RemoveColumnTest$q4116[ABIV_English_RemoveColumnTest$q4116 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q4116[ABIV_English_RemoveColumnTest$q4116 == "No"] <- 2
ABIV_English_RemoveColumnTest$q4116[ABIV_English_RemoveColumnTest$q4116 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q4116[ABIV_English_RemoveColumnTest$q4116 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q4116[ABIV_English_RemoveColumnTest$q4116 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q4116 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q4116))
typeof(ABIV_English_RemoveColumnTest$q4116)

ABIV_English_RemoveColumnTest$q501[ABIV_English_RemoveColumnTest$q501 == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q501[ABIV_English_RemoveColumnTest$q501 == "No"] <- 2
ABIV_English_RemoveColumnTest$q501[ABIV_English_RemoveColumnTest$q501 == "Have not tried (Do not read)"] <- 3
ABIV_English_RemoveColumnTest$q501[ABIV_English_RemoveColumnTest$q501 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q501[ABIV_English_RemoveColumnTest$q501 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q501 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q501))
typeof(ABIV_English_RemoveColumnTest$q501)

ABIV_English_RemoveColumnTest$q501b[ABIV_English_RemoveColumnTest$q501b == "Yes"] <- 1
ABIV_English_RemoveColumnTest$q501b[ABIV_English_RemoveColumnTest$q501b == "No"] <- 2
ABIV_English_RemoveColumnTest$q501b[ABIV_English_RemoveColumnTest$q501b == "Have not tried (Do not read)"] <- 3
ABIV_English_RemoveColumnTest$q501b[ABIV_English_RemoveColumnTest$q501b == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q501b[ABIV_English_RemoveColumnTest$q501b == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q501b = as.numeric(as.character(ABIV_English_RemoveColumnTest$q501b))
typeof(ABIV_English_RemoveColumnTest$q501b)

ABIV_English_RemoveColumnTest$q5021[ABIV_English_RemoveColumnTest$q5021 == "Once"] <- 1
ABIV_English_RemoveColumnTest$q5021[ABIV_English_RemoveColumnTest$q5021 == "More than once"] <- 2
ABIV_English_RemoveColumnTest$q5021[ABIV_English_RemoveColumnTest$q5021 == "I have never participated"] <- 3
ABIV_English_RemoveColumnTest$q5021[ABIV_English_RemoveColumnTest$q5021 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5021[ABIV_English_RemoveColumnTest$q5021 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5021 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5021))
typeof(ABIV_English_RemoveColumnTest$q5021)

ABIV_English_RemoveColumnTest$q5022[ABIV_English_RemoveColumnTest$q5022 == "Once"] <- 1
ABIV_English_RemoveColumnTest$q5022[ABIV_English_RemoveColumnTest$q5022 == "More than once"] <- 2
ABIV_English_RemoveColumnTest$q5022[ABIV_English_RemoveColumnTest$q5022 == "I have never participated"] <- 3
ABIV_English_RemoveColumnTest$q5022[ABIV_English_RemoveColumnTest$q5022 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5022[ABIV_English_RemoveColumnTest$q5022 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5022 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5022))
typeof(ABIV_English_RemoveColumnTest$q5022)

ABIV_English_RemoveColumnTest$q511[ABIV_English_RemoveColumnTest$q511 == "Not concerned/not interested"] <- 96
ABIV_English_RemoveColumnTest$q511[ABIV_English_RemoveColumnTest$q511 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q511[ABIV_English_RemoveColumnTest$q511 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q511[ABIV_English_RemoveColumnTest$q511 == "Complete dictatorship"] <- 0
ABIV_English_RemoveColumnTest$q511[ABIV_English_RemoveColumnTest$q511 == "Complete democracy"] <- 10
ABIV_English_RemoveColumnTest$q511 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q511))
typeof(ABIV_English_RemoveColumnTest$q511)

ABIV_English_RemoveColumnTest$q512[ABIV_English_RemoveColumnTest$q512 == "Not concerned/not interested"] <- 96
ABIV_English_RemoveColumnTest$q512[ABIV_English_RemoveColumnTest$q512 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q512[ABIV_English_RemoveColumnTest$q512 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q512[ABIV_English_RemoveColumnTest$q512 == "Completely inappropriate"] <- 0
ABIV_English_RemoveColumnTest$q512[ABIV_English_RemoveColumnTest$q512 == "Completely appropriate"] <- 10
ABIV_English_RemoveColumnTest$q512 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q512))
typeof(ABIV_English_RemoveColumnTest$q512)

ABIV_English_RemoveColumnTest$q5161[ABIV_English_RemoveColumnTest$q5161 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q5161[ABIV_English_RemoveColumnTest$q5161 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q5161[ABIV_English_RemoveColumnTest$q5161 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q5161[ABIV_English_RemoveColumnTest$q5161 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q5161[ABIV_English_RemoveColumnTest$q5161 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5161[ABIV_English_RemoveColumnTest$q5161 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5161 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5161))
typeof(ABIV_English_RemoveColumnTest$q5161)

ABIV_English_RemoveColumnTest$q5162[ABIV_English_RemoveColumnTest$q5162 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q5162[ABIV_English_RemoveColumnTest$q5162 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q5162[ABIV_English_RemoveColumnTest$q5162 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q5162[ABIV_English_RemoveColumnTest$q5162 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q5162[ABIV_English_RemoveColumnTest$q5162 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5162[ABIV_English_RemoveColumnTest$q5162 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5162 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5162))
typeof(ABIV_English_RemoveColumnTest$q5162)

ABIV_English_RemoveColumnTest$q5163[ABIV_English_RemoveColumnTest$q5163 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q5163[ABIV_English_RemoveColumnTest$q5163 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q5163[ABIV_English_RemoveColumnTest$q5163 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q5163[ABIV_English_RemoveColumnTest$q5163 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q5163[ABIV_English_RemoveColumnTest$q5163 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5163[ABIV_English_RemoveColumnTest$q5163 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5163 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5163))
typeof(ABIV_English_RemoveColumnTest$q5163)

ABIV_English_RemoveColumnTest$q5164[ABIV_English_RemoveColumnTest$q5164 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q5164[ABIV_English_RemoveColumnTest$q5164 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q5164[ABIV_English_RemoveColumnTest$q5164 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q5164[ABIV_English_RemoveColumnTest$q5164 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q5164[ABIV_English_RemoveColumnTest$q5164 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5164[ABIV_English_RemoveColumnTest$q5164 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5164 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5164))
typeof(ABIV_English_RemoveColumnTest$q5164)

ABIV_English_RemoveColumnTest$q5165[ABIV_English_RemoveColumnTest$q5165 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q5165[ABIV_English_RemoveColumnTest$q5165 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q5165[ABIV_English_RemoveColumnTest$q5165 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q5165[ABIV_English_RemoveColumnTest$q5165 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q5165[ABIV_English_RemoveColumnTest$q5165 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5165[ABIV_English_RemoveColumnTest$q5165 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5165 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5165))
typeof(ABIV_English_RemoveColumnTest$q5165)

ABIV_English_RemoveColumnTest$q516a[ABIV_English_RemoveColumnTest$q516a == "Democracy is always preferable to any other kind of government"] <- 1
ABIV_English_RemoveColumnTest$q516a[ABIV_English_RemoveColumnTest$q516a == "Under some circumstances, a non-democratic government can be preferable"] <- 2
ABIV_English_RemoveColumnTest$q516a[ABIV_English_RemoveColumnTest$q516a == "For people like me, it does not matter what kind of government we have"] <- 3
ABIV_English_RemoveColumnTest$q516a[ABIV_English_RemoveColumnTest$q516a == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q516a[ABIV_English_RemoveColumnTest$q516a == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q516a = as.numeric(as.character(ABIV_English_RemoveColumnTest$q516a))
typeof(ABIV_English_RemoveColumnTest$q516a)

ABIV_English_RemoveColumnTest$q5211[ABIV_English_RemoveColumnTest$q5211 == "Guaranteed to a great extent"] <- 1
ABIV_English_RemoveColumnTest$q5211[ABIV_English_RemoveColumnTest$q5211 == "Guaranteed to a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q5211[ABIV_English_RemoveColumnTest$q5211 == "Guaranteed to a limited extent"] <- 3
ABIV_English_RemoveColumnTest$q5211[ABIV_English_RemoveColumnTest$q5211 == "Not guaranteed"] <- 4
ABIV_English_RemoveColumnTest$q5211[ABIV_English_RemoveColumnTest$q5211 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5211[ABIV_English_RemoveColumnTest$q5211 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5211 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5211))
typeof(ABIV_English_RemoveColumnTest$q5211)

ABIV_English_RemoveColumnTest$q5212[ABIV_English_RemoveColumnTest$q5212 == "Guaranteed to a great extent"] <- 1
ABIV_English_RemoveColumnTest$q5212[ABIV_English_RemoveColumnTest$q5212 == "Guaranteed to a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q5212[ABIV_English_RemoveColumnTest$q5212 == "Guaranteed to a limited extent"] <- 3
ABIV_English_RemoveColumnTest$q5212[ABIV_English_RemoveColumnTest$q5212 == "Not guaranteed"] <- 4
ABIV_English_RemoveColumnTest$q5212[ABIV_English_RemoveColumnTest$q5212 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5212[ABIV_English_RemoveColumnTest$q5212 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5212 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5212))
typeof(ABIV_English_RemoveColumnTest$q5212)

ABIV_English_RemoveColumnTest$q5213[ABIV_English_RemoveColumnTest$q5213 == "Guaranteed to a great extent"] <- 1
ABIV_English_RemoveColumnTest$q5213[ABIV_English_RemoveColumnTest$q5213 == "Guaranteed to a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q5213[ABIV_English_RemoveColumnTest$q5213 == "Guaranteed to a limited extent"] <- 3
ABIV_English_RemoveColumnTest$q5213[ABIV_English_RemoveColumnTest$q5213 == "Not guaranteed"] <- 4
ABIV_English_RemoveColumnTest$q5213[ABIV_English_RemoveColumnTest$q5213 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5213[ABIV_English_RemoveColumnTest$q5213 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5213 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5213))
typeof(ABIV_English_RemoveColumnTest$q5213)

ABIV_English_RemoveColumnTest$q5214[ABIV_English_RemoveColumnTest$q5214 == "Guaranteed to a great extent"] <- 1
ABIV_English_RemoveColumnTest$q5214[ABIV_English_RemoveColumnTest$q5214 == "Guaranteed to a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q5214[ABIV_English_RemoveColumnTest$q5214 == "Guaranteed to a limited extent"] <- 3
ABIV_English_RemoveColumnTest$q5214[ABIV_English_RemoveColumnTest$q5214 == "Not guaranteed"] <- 4
ABIV_English_RemoveColumnTest$q5214[ABIV_English_RemoveColumnTest$q5214 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5214[ABIV_English_RemoveColumnTest$q5214 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5214 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5214))
typeof(ABIV_English_RemoveColumnTest$q5214)

ABIV_English_RemoveColumnTest$q5215[ABIV_English_RemoveColumnTest$q5215 == "Guaranteed to a great extent"] <- 1
ABIV_English_RemoveColumnTest$q5215[ABIV_English_RemoveColumnTest$q5215 == "Guaranteed to a medium extent"] <- 2
ABIV_English_RemoveColumnTest$q5215[ABIV_English_RemoveColumnTest$q5215 == "Guaranteed to a limited extent"] <- 3
ABIV_English_RemoveColumnTest$q5215[ABIV_English_RemoveColumnTest$q5215 == "Not guaranteed"] <- 4
ABIV_English_RemoveColumnTest$q5215[ABIV_English_RemoveColumnTest$q5215 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q5215[ABIV_English_RemoveColumnTest$q5215 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q5215 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q5215))
typeof(ABIV_English_RemoveColumnTest$q5215)

ABIV_English_RemoveColumnTest$q6061[ABIV_English_RemoveColumnTest$q6061 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q6061[ABIV_English_RemoveColumnTest$q6061 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q6061[ABIV_English_RemoveColumnTest$q6061 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q6061[ABIV_English_RemoveColumnTest$q6061 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q6061[ABIV_English_RemoveColumnTest$q6061 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q6061[ABIV_English_RemoveColumnTest$q6061 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q6061 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q6061))
typeof(ABIV_English_RemoveColumnTest$q6061)

ABIV_English_RemoveColumnTest$q6062[ABIV_English_RemoveColumnTest$q6062 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q6062[ABIV_English_RemoveColumnTest$q6062 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q6062[ABIV_English_RemoveColumnTest$q6062 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q6062[ABIV_English_RemoveColumnTest$q6062 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q6062[ABIV_English_RemoveColumnTest$q6062 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q6062[ABIV_English_RemoveColumnTest$q6062 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q6062 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q6062))
typeof(ABIV_English_RemoveColumnTest$q6062)

ABIV_English_RemoveColumnTest$q6063[ABIV_English_RemoveColumnTest$q6063 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q6063[ABIV_English_RemoveColumnTest$q6063 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q6063[ABIV_English_RemoveColumnTest$q6063 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q6063[ABIV_English_RemoveColumnTest$q6063 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q6063[ABIV_English_RemoveColumnTest$q6063 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q6063[ABIV_English_RemoveColumnTest$q6063 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q6063 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q6063))
typeof(ABIV_English_RemoveColumnTest$q6063)

ABIV_English_RemoveColumnTest$q6064[ABIV_English_RemoveColumnTest$q6064 == "I strongly agree"] <- 1
ABIV_English_RemoveColumnTest$q6064[ABIV_English_RemoveColumnTest$q6064 == "I agree"] <- 2
ABIV_English_RemoveColumnTest$q6064[ABIV_English_RemoveColumnTest$q6064 == "I disagree"] <- 3
ABIV_English_RemoveColumnTest$q6064[ABIV_English_RemoveColumnTest$q6064 == "I strongly disagree"] <- 4
ABIV_English_RemoveColumnTest$q6064[ABIV_English_RemoveColumnTest$q6064 == "Don't know (Do not read)"] <- 98
ABIV_English_RemoveColumnTest$q6064[ABIV_English_RemoveColumnTest$q6064 == "Decline to answer (Do not read)"] <- 99
ABIV_English_RemoveColumnTest$q6064 = as.numeric(as.character(ABIV_English_RemoveColumnTest$q6064))
typeof(ABIV_English_RemoveColumnTest$q6064)









