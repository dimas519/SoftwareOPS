import pandas as pd

####read and merge
branch=["a","b","c"]
listFile=[ "branch_"+branchName+".csv" for branchName in branch]
allDF=[pd.read_csv(fileName) for fileName in listFile]
mergedDf=pd.concat(allDF)

####task 1
filteredNan=mergedDf.dropna(subset=["transaction_id","date","customer_id"])
# print(filteredNan)



####task 2

# data type lama
# print(filteredNan.info())

filteredNan['date']=filteredNan["date"].astype("datetime64[ns]")
changedToDT=filteredNan
# print(changedToDT.info())
# print(changedToDT)




####taask3
#tidak yakin csv sudah terurut atau acak, tidak dispecify di soal
orderedDate=changedToDT.sort_values(by="date",ascending=True)
removedDuplicate=orderedDate.drop_duplicates(subset="transaction_id",keep="last")
# print(removedDuplicate)



####task4
countDF=removedDuplicate.groupby("branch").apply(lambda x : (x['quantity'] * x['price']).sum() ).rename("total")
# print(countDF)



####task 5 cetak csv
countDF.to_csv("total_sales_per_branch.csv")