# Removing Multiplicative Noise
Because of the page limits, we have just conducted experiments on white additive Gaussian noise and related methods in the paper. 
In this document, we will show how the proposed filter can improve the performance of other denoising methods which have been introduced for different kinds of noise.
## AA model
We showed the efficiency of the proposed method on a variational approach for removing multiplicative noise which has been introduced in the below refrence.

<a id="1">[1]</a>
Aubert, Gilles, and Jean-Francois Aujol. "A variational approach to removing multiplicative noise." SIAM journal on applied mathematics 68.4 (2008): 925-946.
- Results
![1](https://github.com/onionhub/TIP/blob/Drafts/Variational.JPG)
- Parameters
```
ug=Input
c1=15
c2=6
Cl=0
uk=AA1(Input)
E(uk)=imgradient(uk,'central')
ul=u-AA2(Input)
AA1 and AA2 means AA model with different lambdas and iterations, but we considered AA1=AA2 in the example.  
```
- How to implement
```
We consider AA model as a low-pass filter for uk and ul in the proposed filter. Therefore, we first run AA model for noisy image (AA(Input)). After that, we used the result (AA(Input)) for both uk and ul in the proposed filters' Matlab code as below:
case 4: lowfilter='Other'
sigma0=Input (Noisy image)
sigma1=imgradient_N(AA(Input),'central') (Normalized the gradient of the output of AA model)
sigma2=u-AA(Input)
After being pre-processed, use again AA model on the processed noisy image.
* For ease of implementation, keep lambda=30 but with different itterations in every stage.
```
## AA model as filter for uk and ul to improve the results of the other multiplicative denoising methods
In this part, we will show how using AA model as filter for uk and ul in the proposed filter can improve the performance of other multiplicative noise removing methods from edge-preserving perspective.

For example, we have considered ROL model [2] as a multiplicative noise removing method and showed how AA model helps to improve ROL model's profeciency.

<a id="2">[1]</a>
Rudin, Leonid, Pierre-Luis Lions, and Stanley Osher. "Multiplicative denoising and deblurring: theory and algorithms." Geometric Level Set Methods in Imaging, Vision, and Graphics. Springer, New York, NY, 2003. 103-119.
![2](https://github.com/onionhub/TIP/blob/Drafts/Drafts/ROL.JPG)
