import json
import os
import requests

ADMIN = os.getenv('nextcloud_admin')
PASSWORD = os.getenv('nextcloud_password')
nextcloud_url = "http://localhost:8080"

api_url = "http://localhost:8080/ocs/v2.php/apps/serverinfo/api/v1/info?format=json"
response = requests.get(api_url, auth=(ADMIN,PASSWORD), headers={'ocs-apirequest': 'true', 'Content-Type': 'application/json'})
print(response.json())