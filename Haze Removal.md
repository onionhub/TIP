# Improving Haze Removal Method's Performance
In this document, we will show how the proposed filter can improve the performance of haze removal methods in image processing. 
## A fast single image haze removal
We consider the below refrence as one of the most successful dehazing methods in recent years.

<a id="1">[1]</a>
Zhu, Qingsong, Jiaming Mai, and Ling Shao. "A fast single image haze removal algorithm using color attenuation prior." IEEE transactions on image processing 24.11 (2015): 3522-3533.
- Results
![1](https://github.com/onionhub/TIP/blob/Drafts/Drafts/Dehazed2.JPG)
- Parameters
```
Case 1---- lowfilter='Gaussian-enhancement'
u_g=Input--- (sigma0=u_g)
u_k=imgaussfilt(Input,0.55)--- (sigma1=0.55)
u_l=imgaussfilt(Input,1.5)--- (sigma2=1.5)
Ch=[2 1]---- (c1=2, c2=1)
Cl=0.8
```
# Discussion
Most of haze removal methods are trying to estimate a transmission map or depth map for a hazy model of image. The big problem of this estimation is halos and block artifacts that be created by estimation methods. For example, the authors in [1] used guided image filtering to refine and smooth the estimated depth map. Therefore, we can improve its performance on preserving the edges by pre-processing estimated depth map before being smoothed by guided image filtering. In the above figure, we can see that how the proposed pre-processing filter improved the performance of [1] in dehazing a hazy image while preserving its fine details.

## Haze Removal Using Dark Channel Prior

<a id="1">[2]</a>
He, Kaiming, Jian Sun, and Xiaoou Tang. "Single image haze removal using dark channel prior." IEEE transactions on pattern analysis and machine intelligence 33, no. 12 (2010): 2341-2353.

In this part we will see how the proposed filter can improve the performance of the well-known dark channel prior method on preserving the fine details beside of dehazing.
