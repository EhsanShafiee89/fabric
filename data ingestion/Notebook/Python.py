df = spark.read.parquet("location to read from") 

# Keep it if you want to save dataframe as CSV files to Files section of the default lakehouse

df.write.mode("overwrite").format("csv").save("Files/ " + csv_table_name)

# Keep it if you want to save dataframe as Parquet files to Files section of the default lakehouse

df.write.mode("overwrite").format("parquet").save("Files/" + parquet_table_name)

# Keep it if you want to save dataframe as a delta lake, parquet table to Tables section of the default lakehouse

df.write.mode("overwrite").format("delta").saveAsTable(delta_table_name)

# Keep it if you want to save the dataframe as a delta lake, appending the data to an existing table

df.write.mode("append").format("delta").saveAsTable(delta_table_name)
