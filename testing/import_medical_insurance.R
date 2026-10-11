# Import the medical-insurance data set for course exercises.

data_file <- Sys.getenv(
  "MEDICAL_INSURANCE_CSV",
  unset = file.path("testing", "medical_insurance.csv")
)

if (!file.exists(data_file)) {
  stop(
    "Download the course data set and save it as: ", data_file,
    call. = FALSE
  )
}

medical_insurance <- readr::read_csv(data_file, show_col_types = FALSE)

print(medical_insurance)
print(dplyr::glimpse(medical_insurance))
print(summary(medical_insurance))
