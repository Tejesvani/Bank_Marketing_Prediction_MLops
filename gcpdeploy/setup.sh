#!/bin/bash

# Update package lists
sudo apt-get update

# Install required packages
sudo apt-get install -y python3 python3-pip python3.11-venv git

# Create directory and set permissions
sudo mkdir -p /home/bank-marketing-prediction-mlops
sudo chmod -R 777 /home/bank-marketing-prediction-mlops

# Change to the project directory
cd /home/bank-marketing-prediction-mlops

# Clone the repository
git clone https://github.com/Saitej0211/Bank_Marketing_Prediction_MLops.git

# Navigate to the gcpdeploy directory
cd Bank_Marketing_Prediction_MLops/gcpdeploy

# Create virtual environment
python3 -m venv env

# Activate virtual environment
. env/bin/activate

# Install requirements (removed --user flag)
pip install -r requirements.txt

# Set GCP credentials as environment variable
export GCP_CREDENTIALS='{
  "type": "service_account",
  "project_id": "iconic-vine-438222-u6",
  "private_key_id": "6c69e9e4378e1526f952c267a177be552de33b1a",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDUhdq+mK4mDjP/\nVnMlT8HmeVjv0QiyjPET9bwUNbAGh2u3Xj1Tqn+nhk8II0Q7c88dBZuUfBRkSLdG\nsdgTjoT2tGwMniOvp3+QFFKLE6uEaV96y53YhHtl2kL9Q5RBXs7+OFFr5C3ziw6K\nXtbkcgChz84+6b8nubmGWQQTo4UFKuoldTqCXF8wpXZdIckfBZ5Accrr6wiHmH4m\nsL8nz203hyf+z+SoEgXcs6nhhhu/zfvKy4X10jjmBbQO1ZRdyg9EpJAstiVddKyP\nG2AVJ5iglyC+FhGZ+HxA4huJB0WhR1lqvvxiFlqok8k1XstB8mRiDJpX7n19gs0Z\nH7CDKgorAgMBAAECggEAJAQdOpDAbqWYjUy2zdty5l6pQlcgDLZTAslx2tDwaGLZ\nz+USKpQp9xeNXDkxzouFTYtOPv86K3ahTMNF9aaBBRg1eXvxW0rdFOtEw9oNBq8e\n5b4NHYzyJqQzFx21SdDJ7o5XyhuM6AmoaK3C6EsjrUh80O+nHBHfDZQXW0aqe+Hn\nWuWZBFDJyxQ3zYlzqVvVhE5GtMJQfhrMj4kVOA/9XKr1hfwQHGF2d99qOghqZnt+\nHUwkztHgOiYfzq207ST4k/CdwHkXIqlqrX0voBeRnOFd7r2aiQob/28QfOm6gMSv\nlI11jXMZfAGUfrdP/tfsnfK1hSpnsl37x319i3DOxQKBgQDxQn9vA7FXLEcpTZHw\nJ7wvAS62rznHE0+n417rUWYLjsrUASEAsTzSdaDfnw7zCkI89pRkNinDt0xUFwp/\n2AE8VDX1yHbOwFrYWp9VULEigynnIaNxP8Zt9fGkzxFUraOFoOin9wOp63imJlDy\ny2CzrMl03qTxUxPo1zGWxDbafQKBgQDhgeNSmhEmYFviL4OmVJdy3Nhb+mDaXe5l\n70oE8+v7aFnPUaaXJx61lyJqVw6VradkIj5j2BkNxSMyScqyitWuNjXLAzlR5OwR\nVarjPhdAHGm23Cfql3gu6xv7sDefdcYAc/cUrUGe7jM5RZIcUUbZZ650UVUlBjHx\n+P664xJvxwKBgCbyqUfuvK5qA4Lzdt/iSkr8UeJEH3u37mAYILa0iVjMUIoxNHa8\nJimDu9jeALfTrCXTWNlktRFXggcBQTyqTmjC34MyPZvbCc9rsdVAFZiQvC8ICy65\nMPuHfN8yXoXhEkj8VRLombrQvMV14hOQKahX+J3ZY59h3hD0zJieTIyxAoGBANlJ\nemyhH11HA8IR3lxqrfNzcNZPjvtZ/tghlcTn874vcjodhtOmUiTPF843TEpVJTGK\n/WrfUmS+S4etKq6WsAZJHdQbqyOJ3R1m2l5T+btApWwY/i1A/gDXcgM2bKItrTfK\nhY1a1Bv7kUfiDUNT3VymVqalp9EhAwcQ0QHqwl0JAoGAPjg/rEJLzYt329QOZSsU\nOohcQCjrRwdFYwx40w+wZUy3S84zpzGci+14By+EeRhEiLyyOwmVXOvlc7CB5PQF\nUZ/nADKGH8/4SNRv48r7vKgBm81hBUPui27TysEliT+kC39gKl/q5F8zhdX+ePq0\nUIoA76V6QNfcOdMrr+Gzy2s=\n-----END PRIVATE KEY-----\n",
  "client_email": "mlopsprojectserviceaccount@iconic-vine-438222-u6.iam.gserviceaccount.com",
  "client_id": "117500881537772550018",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/mlopsprojectserviceaccount%40iconic-vine-438222-u6.iam.gserviceaccount.com",
}'

# Add the export command to .bashrc to persist across sessions
echo "export GCP_CREDENTIALS='$GCP_CREDENTIALS'" >> ~/.bashrc

echo "Setup completed successfully"