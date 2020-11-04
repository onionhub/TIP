% StepSize=1/7 is more stable for image denoising purpose.
% But, the StepSize plays a major role for noise free image smoothing purpose. For example StepSize=1/3 will act different from StepSize=1/7
%Important: C_l cannot be negative one as it was for image denoising purpose. For convenience, it is better to consider C_l zero for noise free image smoothing purpose.
%sigma0 is the variance of u_g in line 64.
function [ue] = Edge-Preserving_Smoothing(NoisyIm,sigma0,sigma1,NumIter,StepSize)
Input=double(NoisyIm);
[m,n,c]=size(Input);
Out=zeros(m,n,c);
%%% Generating Parameters
if sigma1<=0.8
    sigma2=1*sigma1;
elseif sigma1>0.8
    sigma2=2*sigma1;
end

if sigma1<=0.5
    c2=15;
elseif sigma1>0.5 && sigma1<=1.5
    c2=5;
elseif sigma1>1.5 && sigma1<=2.5
    c2=3;
elseif sigma1>2.5 && sigma1<=3.5
    c2=2;
else
    c2=1;
end
%%%

for channel=1:c
    Im=Input(:,:,channel);
    for i=1:NumIter
        u_g=imgaussfilt(Im,sigma0);
        [ugrad,~]=imgradient(Im);
% Generating F by uk
        uk=imgaussfilt(Im,sigma1);
        [graduk,~]=imgradient(uk);
        graduk2=graduk.^2;
        Mexuk=max(max(graduk2(:)));
        menuk=min(min(graduk2(:)));

        F=1*(graduk2-menuk)./(Mexuk-menuk);
        
% Generating C and Cl by ul
        ul=imgaussfilt(Im,sigma2);
        [gradul,~]=imgradient(ul);
        gradul2=gradul.^2;
        Mexul=max(max(gradul2(:)));
        menul=min(min(gradul2(:)));
        F1=(gradul2-menul)./(Mexul-menul);
%%% Lines 24-25 added
        unntemp=graduk.^2;
        C_temp=max(max(unntemp(:)))/max(max(ugrad(:)));
        c1=i*StepSize;
        C=c1*C_temp*exp(-c2*F1);
%       aux=exp(-c4*F1);
%       auxmax=max(max(aux(:)));
%       Cl=c3*(auxmax-exp(-c4*F1));
        Cl=-0.025;
% Main formula
        H2_temp=Im-ul;
        H2=tanh(H2_temp);
        Im=u_g+C.*(F+Cl).*H2;
        Out(:,:,channel)=Im;
     end
end
ue=im2double(Out);
return
