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
It is true that we pre-processed the image before dehazing it by [1], but indeed what we have done was a past-processing work like simple image enhancement. In other words, in this case pre-processing will have the same result with past-processing. Because, [1] do not remove the edges and it does not need to enhance the edges before performing the method on the image. The point is that we can use refrence [1] as filter in the proposed filter in order to improve the results of the other haze removal methods that performs poor on the edge. We will bring an example to see how it really works. We are looking for those haze removal methods that perform weak on the edges.
# Using refrence [1] in the proposed filter to improve the effeciency of other haze removal methods
```
This part will be completed in the future.
```
