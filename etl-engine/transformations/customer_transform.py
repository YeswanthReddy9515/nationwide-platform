
def transform_customer(record):
    return {
        "customer_id": record["customer_id"],
        "customer_name": record["customer_name"].upper()
    }
