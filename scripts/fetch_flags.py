import json
import requests

def fetch_flag(country_code):
    url = f"https://flagcdn.com/w320/{country_code.lower()}.png"
    output_path = f"../data/flags/{country_code.lower()}.png"

    respose = requests.get(url)
    if respose.status_code == 200:
        with open(output_path, "wb") as f:
            f.write(respose.content)
        print(f"Flag for {country_code} saved to {output_path}")


    

def fetch_countries():
    with open("../data/countries.json", "r", encoding="utf-8") as f:
        return json.load(f)
    

if __name__ == "__main__":
    data = fetch_countries()
    countries = data["countries"]
    for country in countries:
        print(f"{country['short_name_en']}: {country['code']}")
        fetch_flag(country["code"])