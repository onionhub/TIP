# Removing Multiplicative Noise
In the paper we have just conducted experiments on Gaussian noise. 
In this document we will show how the proposed filter can improve other image denoising methods' performance.
For example, we showed the efficiency of the proposed method on a variational approach for removing multiplicative noise which has been introduced in the below refrence.

<a id="1">[1]</a>
Aubert, Gilles, and Jean-Francois Aujol. "A variational approach to removing multiplicative noise." SIAM journal on applied mathematics 68.4 (2008): 925-946.
# Results
![1](https://github.com/onionhub/TIP/blob/Drafts/Variational.JPG)
```
- Parameters
ug=Input
c1=15
c2=-6
Cl=0
uk=AA1(Input)
E(uk)=imgradient(uk,'central')
ul=u-AA2(Input)
AA1 and AA2 means AA model with different lamda, but we considered AA1=AA2 in the example.
```
# AA model as filter for uk and ul to improve the results of the other multiplicative denoising
