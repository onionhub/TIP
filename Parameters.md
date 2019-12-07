# Introduction

This instruction will give yout the Parameters, which have been used to produce the figures of the paper, for re-producing the experimental results of the paper.

# Fig. 1
This figure consists of three experiments on "peacocks.jpg" (Fig.1 (a)), "Hani.jpg" (Fig. 1 (b)), and "MRI.png" (Fig. 1 (c)). The equation (16) has been used for producing the results of Fig. 1.
- Fig. 1 (a)
```
Input = peacocks.jpg
u_g=imadjust(Input)--- sigma0='default'
u_k=imgaussfilt(Input,3)--- sigma1=3
u_l=imgaussfilt(Input,4)--- sigma2=4
c1=15
c2=-1
````
- Fig. 1 (b)
