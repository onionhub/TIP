function [ue] = Proposed(Input,ug,sigma1,sigma2,C1,C2,c3,c4)
Input=double(Input);
[m,n,c]=size(Input);
ue=zeros(m,n,c);

for channel=1:c
        Im=Input(:,:,channel);
% Generating F by uk
        uk=imgaussfilt(Im,sigma1);
        [graduk,~]=imgradient(uk,'central');
        graduk2=graduk.^2;
        Mexuk=max(max(graduk2(:)));
        menuk=min(min(graduk2(:)));
        F=(graduk2-menuk)./(Mexuk-menuk);
% Generating C and Cl by ul
        ul=imgaussfilt(Im,sigma2);
        [gradul,~]=imgradient(ul,'central');
        gradul2=gradul.^2;
        Mexul=max(max(gradukl2(:)));
        menul=min(min(gradul2(:)));
        F1=(gradul2-menul)./(Mexul-menul);
        C=c1*exp(-c2*F1);
        aux=exp(-c4*F1);
        auxmax=max(max(aux(:)));
        Cl=c3*(auxmax-exp(-c4*F1));
% Main formula
        H2=Im-ul;
        ue(:,:,channel)=ug+C.*(F+Cl).*H2;
end

ue=uint8(ue);
return
