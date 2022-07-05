# Pandas

## Slicing dataframe
```py
# https://pandas.pydata.org/pandas-docs/stable/user_guide/indexing.html
fl = pd.DataFrame(np.random.randn(5, 2), columns=list('AB'))

dfl
Out[85]: 
          A         B
0 -0.082240 -2.182937
1  0.380396  0.084844
2  0.432390  1.519970
3 -0.493662  0.600178
4  0.274230  0.132885

dfl.iloc[:, 2:3]
Out[86]: 
Empty DataFrame
Columns: []
Index: [0, 1, 2, 3, 4]

dfl.iloc[:, 1:3]
Out[87]: 
          B
0 -2.182937
1  0.084844
2  1.519970
3  0.600178
4  0.132885

dfl.iloc[4:6]
Out[88]: 
         A         B
4  0.27423  0.132885
```