%%% c2 is always 1, 2 or 3 according to noise level. For example, value 1 for less noise.

function [ue] = Proposed(Input,ug,sigma1,sigma2,c1,c2,c3,c4)
Input=double(Input);
[m,n,c]=size(Input);
ue=zeros(m,n,c);

for channel=1:c
        Im=Input(:,:,channel);
        [ugrad,~]=imgradient(Im);
% Generating F by uk
        uk=imgaussfilt(Im,sigma1);
        [graduk,~]=imgradient(uk,'central');
        graduk2=graduk.^2;
        Mexuk=max(max(graduk2(:)));
        menuk=min(min(graduk2(:)));
%%% Line 15 revised
        F=0.8*(graduk2-menuk)./(Mexuk-menuk)-0.02;
% Generating C and Cl by ul
        ul=imgaussfilt(Im,sigma2);
        [gradul,~]=imgradient(ul,'central');
        gradul2=gradul.^2;
        Mexul=max(max(gradukl2(:)));
        menul=min(min(gradul2(:)));
        F1=(gradul2-menul)./(Mexul-menul);
%%% Line 24-25 added
        unntemp=graduk.^2;
        C_temp=max(max(unntemp(:)))/max(max(ugrad(:)));
%%% Line 28 revised
        C=C_temp*c1*exp(-c2*F1);
        aux=exp(-c4*F1);
        auxmax=max(max(aux(:)));
        Cl=c3*(auxmax-exp(-c4*F1));
% Main formula
        H2_temp=Im-ul;
%%% Line 29 added
        H2=tanh(H2_temp);
        ue(:,:,channel)=ug+C.*(F+Cl).*H2;
end

ue=uint8(ue);
return
