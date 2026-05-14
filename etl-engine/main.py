
import polars as pl

print("Nationwide ETL Platform Started")

df = pl.DataFrame({
    "id": [1,2,3],
    "amount": [100,200,300]
})

print(df)
