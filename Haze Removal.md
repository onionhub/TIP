# Improving Haze Removal Method's Performance
In this document, we will show how the proposed filter can improve the performance of haze removal methods in image processing. 
## A fast single image haze removal
We consider the below refrence as one of the most successful dehazing methods in recent years.

<a id="1">[1]</a>
Zhu, Qingsong, Jiaming Mai, and Ling Shao. "A fast single image haze removal algorithm using color attenuation prior." IEEE transactions on image processing 24.11 (2015): 3522-3533.

- Results

1- This figure shows the performance of [1] when proposed filter is applied as a preprocessing filter on the input hazy image.

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

2- This figure shows the performance of [1] when proposed filter is applied as a preprocessing filter on the estemated transmission map.

![2](https://github.com/onionhub/TIP/blob/Drafts/Drafts/Dehazed3.JPG)

- Parameters
```
[1] used guided filter to smooth the estimatted depth map. We preprocess both input image, as reference input of guided filter, and estimatted depth map, and then set them as inputs of the guided filter.

Preprocessing of the input haze image
Case 1---- lowfilter='Gaussian-enhancement'
u_g=Input haze image--- (sigma0=u_g)
u_k=imgaussfilt(Input,2)--- (sigma1=0.55)
u_l=imgaussfilt(Input,4)--- (sigma2=1.5)
Ch=[2 1]---- (c1=4, c2=1)
Cl=0
Output=I-processed

Preprocessing of the estimatted depth map
Case 1---- lowfilter='Gaussian-enhancement'
u_g=the estimatted depth map--- (sigma0=u_g)
u_k=imgaussfilt(Input,2)--- (sigma1=0.55)
u_l=imgaussfilt(Input,4)--- (sigma2=1.5)
Ch=[2 1]---- (c1=4, c2=1)
Cl=0
output=map-processed
Refined estimatted map=guided filter (map-processed,I-processed)
```
# Discussion [----Updated----]

Most of haze removal methods are trying to estimate a transmission map or depth map for a hazy model of image. The big problem of this estimation is halos and block artifacts that be created by estimation methods. For example, the authors in [1] used guided image filtering to refine and smooth the estimated depth map. Therefore, we can improve its performance on preserving the edges by pre-processing estimated depth map before being smoothed by guided image filtering. In the above figure, we can see that how the proposed pre-processing filter improved the performance of [1] in dehazing a hazy image while preserving its fine details.
