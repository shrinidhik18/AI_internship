import pandas as pd

# Load the CSV dataset
df = pd.read_csv("data/vendor_payments.csv")

# Display dataset shape
print("\n--- DATASET SHAPE ---")
print(df.shape)

# Display column names
print("\n--- COLUMN NAMES ---")
print(df.columns.tolist())

# Display data types
print("\n--- DATA TYPES ---")
print(df.dtypes)

# Display missing values
print("\n--- MISSING VALUES ---")
print(df.isnull().sum())

# Display first five rows
print("\n--- FIRST FIVE ROWS ---")
print(df.head())