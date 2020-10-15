function [ue] = Proposed(NoisyIm,sigma1,NumIter,StepSize)
Input=double(Noisyim);
[m,n,c]=size(Input);
ue=zeros(m,n,c);
%%% Generating Parameters
if sigma1<=0.8
    sigma2=sigma1;
elseif sigma1>0.8
    sigma2=2*sigma1;
end

if sigma1<=0.5
    c2=5;
elseif sigma1>0.5 && sigma1<=1
    c2=4;
elseif sigma1>1 && sigma1<=2
    c2=3;
elseif sigma1>2 && sigma1<=3
    c2=2;
else
    c2=1;
end
%%%

for channel=1:c
        Im=Input(:,:,channel);
        [ugrad,~]=imgradient(Im);
% Generating F by uk
        uk=imgaussfilt(Im,sigma1);
        [graduk,~]=imgradient(uk);
        graduk2=graduk.^2;
        Mexuk=max(max(graduk2(:)));
        menuk=min(min(graduk2(:)));
%%% Best for Gaussian
        F=0.7*(graduk2-menuk)./(Mexuk-menuk)-0.025;
%%% Best for Gaussian
%       F=1*(graduk2-menuk)./(Mexuk-menuk)+0.025;
        
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
%%% Line 28 revised
        C=C_temp*c1*exp(-c2*F1);
%       aux=exp(-c4*F1);
%       auxmax=max(max(aux(:)));
%       Cl=c3*(auxmax-exp(-c4*F1));
        Cl=0;
% Main formula
        H2_temp=Im-ul;
%%% Line 29 added
        H2=tanh(H2_temp);
     for i=1:NumIter
        c1=i/StepSize;
        C=c1*C_temp2;
        ue(:,:,channel)=Im+C.*(F+Cl).*H2;
     end
end

%%% Output should be renormalized
ue=im2double(ue);
return
%%%
