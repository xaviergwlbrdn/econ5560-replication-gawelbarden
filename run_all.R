# run_all.R

dir.create("outputs", showWarnings = FALSE)
dir.create("logs", showWarnings = FALSE)

files_to_render <- c(
  "histogram_summary_stats.qmd",
  "nep_correlation_table.qmd",
  "regression_model.qmd"
)

for (file in files_to_render) {
  cat("\n-----------------------------------\n")
  cat("Rendering:", file, "\n")
  cat("-----------------------------------\n")
  
  # Render beside the QMD file first
  status <- system2(
    "quarto",
    args = c("render", file)
  )
  
  if (status != 0) {
    stop(paste("The file failed:", file))
  }
  
  # Copy its finished HTML file into outputs
  html_file <- sub("\\.qmd$", ".html", file)
  
  file.copy(
    from = html_file,
    to = file.path("outputs", html_file),
    overwrite = TRUE
  )
  
  cat("Saved:", file.path("outputs", html_file), "\n")
}

cat("\nAll files finished successfully.\n\n")
sessionInfo()