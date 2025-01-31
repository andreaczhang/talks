# script for some demonstration 
# https://www.csids.no/csalert/articles/short_term_trend.html
# install.packages('csalert')
# install.packages('cstidy')


library(ggplot2)
library(data.table)
library(magrittr)

d_hosp <- cstidy::nor_covid19_icu_and_hospitalization_csfmt_rts_v1
d_hosp

# take daily data
d_hosp_weekly <- d_hosp[granularity_time=="isoyearweek"]

# compute short term trend
res <- csalert::short_term_trend(
  d_hosp_weekly, 
  numerator = "hospitalization_with_covid19_as_primary_cause_n",
  trend_isoyearweeks = 6,
  remove_last_isoyearweeks = 1
)
res

# create the trend label
res[, hospitalization_with_covid19_as_primary_cause_trend0_41_status := factor(
  hospitalization_with_covid19_as_primary_cause_trend0_41_status,
  levels = c("training","forecast","notincreasing", "increasing"),
  labels = c("Training","Forecast","Not increasin", "Increasing")
)]


colnames(res)

# check some columns 
res[
  ,
  .(
    date, 
    hospitalization_with_covid19_as_primary_cause_n, 
    hospitalization_with_covid19_as_primary_cause_forecasted_n,
    hospitalization_with_covid19_as_primary_cause_trend0_41_status
  )
]

# res$isoyearweek

# visualize ---- 

res[]

q <- ggplot(
  res, 
  aes(
    x = isoyearweek, 
    y = hospitalization_with_covid19_as_primary_cause_forecasted_n,
    group = 1
  )
)
q <- q + geom_col(mapping = aes(fill = hospitalization_with_covid19_as_primary_cause_trend0_41_status))
q <- q + geom_errorbar(
  mapping = aes(
    ymin = hospitalization_with_covid19_as_primary_cause_forecasted_predinterval_q02x5_n,
    ymax = hospitalization_with_covid19_as_primary_cause_forecasted_predinterval_q97x5_n
  )
)
q <- q + theme(
  axis.text = element_text(size = 12),
  axis.title = element_text(size = 12), 
  plot.title = element_text(size = 15), 
  axis.text.x = element_text(angle = 90, vjust = 0.4, hjust = 0.4), 
  axis.title.x = element_blank()
)
q <- q + scale_y_continuous("Weekly hospitalization with Covid-19 as primary cause", expand = c(0, 0.1))
q <- q + scale_x_discrete("Isoyearweek")
q <- q + expand_limits(y=0)
q <- q + scale_fill_brewer("6 week trend", palette = "Set1")
q


# multiple locations ----
# per county

d <- cstidy::nor_covid19_cases_by_time_location_csfmt_rts_v1[
  granularity_time == "isoyearweek" & 
    granularity_geo == "county"
]

trend <- csalert::short_term_trend(
  d,
  numerator = "covid19_cases_testdate_n",
  trend_isoyearweeks = 6,
  remove_last_isoyearweeks = 1
)

# trend$covid19_cases_testdate_trend0_41_status 
# trend[covid19_cases_testdate_trend0_41_status == 'notincreasing']$isoyearweek |> unique()
# trend[isoyearweek == '2021-48']


# 2021-48
# 2021-49
# 2021-50

# plot
pd <- copy(csmaps::nor_county_map_b2020_split_dt)


# 
# d <- list(trend = trend, 
#           map = pd)
# saveRDS(d, file = './code_demo/data/d.rds')
# 


pd[
  trend[isoyearweek == "2021-48"],
  on = c("location_code"),
  covid19_cases_testdate_trend0_41_status := covid19_cases_testdate_trend0_41_status
]

# saved for demo
# saveRDS(pd, file = './code_demo/data/d.rds')
# pl <- readRDS('./code_demo/data/d.rds')


# plot map

q <- ggplot()
q <- q + geom_polygon(
  data = pd,
  mapping = aes(x = long, y = lat, group = group,fill=covid19_cases_testdate_trend0_41_status),
  color="black",
  linewidth = 0.2
)
q <- q + coord_quickmap()
q <- q + theme_void()
q <- q + labs(title="MSIS cases per 100k population for week 2021-44")
q <- q + scale_fill_brewer("Covid trends", palette = "Set1", direction = -1)
q

