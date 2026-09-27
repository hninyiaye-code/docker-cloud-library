import urllib.request

url = "http://localhost:8080"

try:
    response = urllib.request.urlopen(url)

    if response.status == 200:
        print("Cloud Library dashboard is running successfully.")

    else:
        print("Website returned status:", response.status)

except Exception as error:
    print("Cloud Library dashboard is not reachable.")
    print(error)            