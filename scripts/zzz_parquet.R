#CREATE A PARQUET
dir.create("data/parquet")
dataframe <- read.csv("data/.csv")
da1 <- arrow_table(dataframe)
arrow::write_parquet(da1, "data/parquet/output_file.parquet")