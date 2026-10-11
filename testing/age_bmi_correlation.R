# Correlation coefficient between age and BMI in the insurance data.

insurance <- readr::read_csv("testing/medical_insurance.csv", show_col_types = FALSE)

age_bmi_correlation <- cor(insurance$age_years, insurance$bmi_points, use = "complete.obs")

cat(sprintf("Age–BMI correlation: %.3f\n", age_bmi_correlation))
