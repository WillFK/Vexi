import json
import random

def fetch_countries():
    with open("../data/countries.json", "r", encoding="utf-8") as f:
        return json.load(f)
    
def random_country():
    data = fetch_countries()
    countries = data["countries"]
    return random.choice(countries)

def write_random_country(country):
    country = random_country()
    output_path = "../data/random_country.json"
    with open(output_path, "w", encoding="utf-8") as f:
        json.dump(country, f, ensure_ascii=False, indent=4)
    print(f"Random country saved to {output_path}")

if __name__ == "__main__":
    country = random_country()
    write_random_country(country)