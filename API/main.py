import pandas as pd
import requests

APIURL="http://universities.hipolabs.com/search?country="
KOLOM=["Name","Web Pages","Country","Domain","State Province"]


country=input("nama negara: ") 

response = requests.get(APIURL+country)


df = pd.DataFrame(response.json())
df=df.rename(columns={
    "name":"Name",
    "web_pages":"Web Pages",
    "country":"Country",
    "domains":"Domains",
    "state-province":"State Province"
})
df=df.drop(columns="alpha_two_code")


#filter State Province nan
filteredDF = df[df.apply(lambda x: x['State Province'] != None, axis=1)]

print(filteredDF)


