import requests

subscription_key = "YOUR_SUBSCRIPTION_KEY"
search_url = "https://api.bing.microsoft.com/v7.0/search"

headers = {"Ocp-Apim-Subscription-Key": subscription_key}
params = {"q": "YOUR_QUERY"}

response = requests.get(search_url, headers=headers, params=params)
response.raise_for_status()

search_results = response.json()
