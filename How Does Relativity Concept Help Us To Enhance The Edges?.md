We explained that why we need relativity concept in our work and how it is basic foundation of our proposed filter for enhancing and pre-processing. In this document we will explain how the proposed filter use relative locations of the edge in spatial domain to enhance them.

Consider two laws hold on, then we can recover high-frequency information just by knowing locations of flat and strong regions of a signal which has been filtered by a low-pass filter. The problem is that every filtering has its unique pattern in replacing locations of the regions. Threfore, we need to simulate and learn this pattern to move the regions which exist on a higher frequency band. 

For this purpose, we can use the same filter which has been used for filtering the original image. By using the same filter in H_2, based on eq. (20), our filter will simulate the pattern of the relative locations, and it will move the regions into a approximate locations which the regions of the original signal located in a higher-frequency band.

The reason for using Gaussian filtering as an example in the paper is that the Gaussian filter is the most prominent filter in the nature. Images are more likely to be manipulated by this filter, But if we are aware about the filtering, which the image has been filtered by it, we can use that filter in H_2.
