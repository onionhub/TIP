# Introduction

This instruction will give yout the Parameters, which have been used to produce the figures of the paper, for re-producing the experimental results of the paper.

# Fig. 1
This figure consists of three experiments on "peacocks.jpg" (Fig.1 (a)), "Hani.jpg" (Fig. 1 (b)), and "MRI.png" (Fig. 1 (c)). The equation (16) has been used for producing the results of Fig. 1.
- Fig. 1 (a)
```
Case 1---- lowfilter='Gaussian-enhancement'
Input = peacocks.jpg
u_g=imadjust(Input)--- (sigma0='default')
u_k=imgaussfilt(Input,3)--- (sigma1=3)
u_l=imgaussfilt(Input,4)--- (sigma2=4)
Ch=[15 -1]---- (c1=15, c2=-1)
Cl=0
````
- Fig. 1 (b)
```
Case 1---- lowfilter='Gaussian-enhancement'
Input = Hani.jpg
u_g=WLS(Input)--- (sigma0=u_g)
u_k=imgaussfilt(Input,1)--- (sigma1=1)
u_l=imgaussfilt(Input,3)--- (sigma2=3)
Ch=[15 -2]---- (c1=15, c2=-2)
Cl=0
```
- Fig. 1 (c)
```
Case 2---- lowfilter='Canny-enhancement'
Input = MRI.png
u_g=1.5*Input--- (sigma0=u_g)
u_k=edge(Input,'canny',[],sigma1)--- (sigma1=sqrt(2))
u_l=imgaussfilt(Input,2)--- (sigma2=2)
Ch=2
Cl=3
```

# Fig. 5
