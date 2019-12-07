# TIP
%% Case 1: lowfilter='Gaussian-enhancement'
    1- Proposed Edge enhancement (Eq.(16) in the paper)
    2- In this case; sigma0 is backbone image enhancement in which if sigma0 is 'default' then gamma adjustment has been set as default      backbone image enhancement for u_g.
    3- sigma1, sigma2 are the variances of Gaussian low-pass filters in u_k, u_l in the paper, respectively.
    4- Ch is a vector which has two elements; first element for c1 and second for c2 (coefficients of C_h in Eq.(16)). 
%% Case 2: lowfilter='Gaussian-smoothing'
    1- Proposed Edge-preserving Smoothing (Eq.(17) in the paper).
    2- In this case; sigma0, sigma1, sigma2 are the variances of Gaussian low-pass filters in u_g, u_k, u_l in the paper, respectively.
    3- Ch is a vector which has two elements; first element for c1 and second for c2 (coefficients of C_h in Eq.(17)). 
%% Case 3: lowfilter='Other'
    1- Proposed filter with alternative filters (Eq.(5) in the paper).
    2- In this case; sigma0=u_g, sigma1=F(E(.)), sigma2=H_2(.), Ch=C_h, and Cl=C_l.
