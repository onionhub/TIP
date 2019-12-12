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
Case 1---- lowfilter='Gaussian-enhancement'
u_g=Input--- (sigma0=u_g)
u_k=imgaussfilt(Input,0.55)--- (sigma1=0.55)
u_l=imgaussfilt(Input,2)--- (sigma2=2)
Ch=[1.5 4]---- (c1=1.5, c2=4)
Cl=0.8
```

