# Seven-bin histogram of medical-insurance charges.

insurance <- readr::read_csv("testing/medical_insurance.csv", show_col_types = FALSE)

png("testing/charges_histogram.png", width = 1200, height = 800, res = 150)
hist(
  insurance$charges_usd,
  breaks = 7,
  main = "Distribution of Medical Insurance Charges",
  xlab = "Charges (USD)",
  ylab = "Number of Patients",
  col = "steelblue",
  border = "white"
)
dev.off()
