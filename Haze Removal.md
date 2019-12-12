# Improving Haze Removal Method's Performance
In this document, we will show how the proposed filter can improve the performance of haze removal methods in image processing. 
## A fast single image haze removal
We consider the below refrence as one of the most successful dehazing methods in recent years.

<a id="1">[1]</a>
Zhu, Qingsong, Jiaming Mai, and Ling Shao. "A fast single image haze removal algorithm using color attenuation prior." IEEE transactions on image processing 24.11 (2015): 3522-3533.
- Results
![1](https://github.com/onionhub/TIP/blob/Drafts/Drafts/Dehazed1.JPG)
- Parameters
```
ug=Input
c1=1.5
c2=4
Cl=.8
uk=(Input)
E(uk)=imgradient(uk,'central')
F(E(uk))=Normalized(E(uk)^2)
ul=u-(Input)
```

