# Relative Edge Concept
```
-Colors Interpretation:
Red: Indicates relative* strong edges.
Green: Indicates relative* weak edges.
Yellow: Indicates relative* strong edge in one direction, like x-direction, and relative* weak edge in other direction.
```
Features in images are relative from two perspectives which have been adressed as relative* and relative** in this document. We consider the edges as a manifest features in image processing.
## Relative*
The edges are relative in an image based on the value of the gradient they have.

- Relative* strong regions
According to the conventional assumption in image processing, those regions with high gradient value are potential volunteers for the edges. In other words, those regions are the strong regions in relative to the other regions.

- Relative* flat regions
The rest of the regions count as flat regions; those regions with low gradient values.

## Relative**
The edge are relative in spatial domain from different frequency bands aspects. Relative* strong regions are relative in respect to the frequency band we study image if we consider two constraints:
1) All methods' mathematics and the way of their implementation are invariant. For example, finite difference
2) Delat function is absolute feature. In other words, u=0 does not count as signal or image, and any feature occupies some space in spatial domain in order to be seperated into different regions from mathematical perspective.

- Relative** strong regions

- Relative** flat regions

--------------------------------------------
![1](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re0.jpg)
## Image's regions in relative to variance of 1 in Gaussian
![2](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re1.jpg)
## Image's regions in relative to variance of 3 in Gaussian
![3](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re2.jpg)
## Image's regions in relative to variance of 6 in Gaussian
![4](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re3.jpg)
## Image's regions in relative to variance of 10 in Gaussian
![5](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re4.jpg)
