data("population")
view(population)

population %>%
  filter(country %in% c('Zambia', 'Malawi')) %>%
  ggplot(aes(x = year, y = population)) +
  geom_point(aes(color = country)) +
  geom_smooth() +
  labs(title = "Population_growth between Malawi and Zambia", subtitle = "Malawi vs Zambia", x = "years(1995 - 2013)", y = "population")



population %>%
  filter(country %in% c('Zambia', 'Malawi')) %>%
  group_by(country)%>%
  summarize(mean(population), var(population), sd(population), max(population), min(population))
  