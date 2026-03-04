from pathlib import Path
import json
import random

SCRIPT_DIR = Path(__file__).resolve().parent           # .../scripts
REPO_ROOT = SCRIPT_DIR.parent                          # .../
DATA_DIR = REPO_ROOT / "data"
COUNTRIES_JSON = DATA_DIR / "countries.json"
RANDOM_COUNTRY_JSON = DATA_DIR / "random_country.json"

def fetch_countries():
    with open(COUNTRIES_JSON, "r", encoding="utf-8") as f:
        return json.load(f)
    
def random_country():
    data = fetch_countries()
    countries = data["countries"]
    return random.choice(countries)

def write_random_country(country):
    country = random_country()
    with open(RANDOM_COUNTRY_JSON, "w", encoding="utf-8") as f:
        json.dump(country, f, ensure_ascii=False, indent=4)
    print(f"Random country saved to {RANDOM_COUNTRY_JSON}")

if __name__ == "__main__":
    country = random_country()
    write_random_country(country)