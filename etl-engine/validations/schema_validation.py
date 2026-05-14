
def validate_schema(record):
    required = ["customer_id", "customer_name"]

    for r in required:
        if r not in record:
            return False

    return True
