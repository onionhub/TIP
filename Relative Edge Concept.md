<pre><code>
<b>Notice:</b>

In this document, <i>relative*</i> and <b>relative**</b> both have the same meaning in the text.

For ease of reading, we have just marked them with * and **.

All in all, both "<i>relative*</i>" and "<b>relative**</b>" words = "relative" word in oxford dictionary.
</code></pre>
# Relative Edge Concept
Features in images are relative from two perspectives which have been adressed as <i>relative*</i> and <b>relative**</b> in this document. We consider the edges as a manifest features in image processing.
## <i>Relative*</i>
The edges are relative in an image based on the value of the gradient they have.

- <i>Relative*</i> strong regions

According to the conventional assumption in image processing, those regions with high gradient value are potential volunteers for the edges. In other words, those regions are the strong regions <i>relative*</i> to the other regions.

- <i>Relative*</i> flat regions

The rest of the regions count as flat regions <i>relative*</i> to strong regions; those regions with low gradient values.

## <b>Relative**</b>
The <i>relative*</i> strong regions are <b>relative**</b> in spatial domain from different frequency bands aspects. <i>relative*</i> strong regions are <b>relative**</b> in respect to the frequency band we study the image if we consider two constraints:
1) All methods' mathematics and the way of their implementation are invariant. For example, finite difference methods should chose the same spatial step (same pattern of Euclidean distance between mesh points in all derived signals of a given filter) when they are used to approximate nth-order derivatives in image processing, like first-order backward difference for computing the edges.
2) Delat function is absolute feature. In other words, u=0 does not count as signal or image, and any feature occupies some space in spatial domain in order to be able to seperate it into different regions from mathematical perspective.

- <b>Relative**</b> strong regions

Some part of these regions always belong to <i>relative*</i> strong regions. These regions count as strong regions <b>relative**</b> to the frequency band which we study the image.
These regions are not invariant in all frequency bands. In other words, some parts of it can be counted as <b>relative**</b> flat regions in a specific frequency band, or some other parts can be added to these parts from <b>relative**</b> flat regions.

- <b>Relative**</b> flat regions

Quite the contrary, even a single pixel of these regions might not belong to <i>relative*</i> strong regions, and they might belong to either <i>relative*</i> strong regions or to <i>relative*</i> flat regions in different frequency bands. 
These regions are not invariant in all frequency bands. In other words, some parts of it can be counted as <b>relative**</b> strong regions in a specific frequency band, or some other parts can be added to these parts from <i>relative*</i> flat regions.
# What are the below images talking about?
In these images a determind gradient threshold has been selected in order to count the regions with higher gradient as <i>relative*</i> strong regions and the regions with lower gradient as <i>relative*</i> flat regions. By using the Eq. (19) of the paper we have extracted <b>relative**</b> strong and <b>relative**</b> flat regions of <i>relative*</i> strong regions.

We have brought Canny edge computing method as an example to see how edge computing methods select the proper edges from these regions. As seen, Canny method connects <i>relative*</i> strong regions to eachother via <b>relative**</b> flat regions. Without this concept, we should have seen some fragmentary edges in the results of Canny.

<i>Notice: You may find in some colorful images that they do not contain some parts which exist in Canny results. The reason is that we have supposed a higher threshold for obtaining the strong and flat regions than Canny for better visual interpretation in the document. After obtaining the images, we have equalized the thresholds in the following of the experiments.</i>
# What happens when an image get smooth?
In image processing, it seems that flat regions extends when an image get smooth. This would be a wrong assumption in image processing. Quite the contrary, flat regions are contracted and that is the <b>relative**</b> flat regions, which belong to <i>relative*</i> strong regions, are expanded in smoothed images. In other words, in smoothed images, the edges propagate and replace flat regions unlike the flat regions which are repressed.

--------------------------------------------
```
-Colors Interpretation in the images:
Red: Indicates relative** strong edges.
Green: Indicates relative** weak edges.
Yellow: Indicates relative** strong edge in one direction, like x-direction, and relative** weak edge in other direction.
```
## Image's regions <b>relative**</b> to a given frequency band
![1](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re00.jpg)
## Image's regions <b>relative**</b> to variance of 1 in Gaussian
![2](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re1.jpg)
<img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c1flatlena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c1stronglena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/1.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c1.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c2.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c3.png" width="270" height="270">
## Image's regions <b>relative**</b> to variance of 3 in Gaussian
![3](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re2.jpg)
<img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c3flatlena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c3stronglena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/3.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c4.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c5.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c6.png" width="270" height="270">
## Image's regions <b>relative**</b> to variance of 6 in Gaussian
![4](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re3.jpg)
<img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c6flatlena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c6stronglena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/6.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c7.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c8.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c9.png" width="270" height="270">
## Image's regions <b>relative**</b> to variance of 10 in Gaussian
![5](https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/Re4.jpg)
<img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c10flatlena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c10stronglena.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/10.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c10.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c11.png" width="270" height="270"><img src="https://github.com/onionhub/TIP/blob/Drafts/Relative%20Edge/c12.png" width="270" height="270">
