%% Case 1: lowfilter='Gaussian-enhancement'
    %Proposed Edge enhancement (Eq.(16) in the paper)
    %In this case; sigma0 is backbone image enhancement in which if sigma0 is 'default' then gamma adjustment has been set as default backbone image enhancement for u_g.
    %sigma1, sigma2 are the variances of Gaussian low-pass filters in u_k, u_l in the paper, respectively.
    %Ch is a vector which has two elements; first element for c1 and second for c2 (coefficients of C_h in Eq.(16)). 
%% Case 2: lowfilter='Gaussian-smoothing'
    %Proposed Edge-preserving Smoothing (Eq.(17) in the paper).
    %In this case; sigma0, sigma1, sigma2 are the variances of Gaussian low-pass filters in u_g, u_k, u_l in the paper, respectively.
    %Ch is a vector which has two elements; first element for c1 and second for c2 (coefficients of C_h in Eq.(17)). 
%% Case 3: lowfilter='Other'
    %Proposed filter with alternative filters (Eq.(5) in the paper).
    %In this case; sigma0=u_g, sigma1=F(E(.)), sigma2=H_2(.), Ch=C_h, and Cl=C_l.

function [ue] = Proposed(original,lowfilter,sigma0,sigma1,sigma2,Ch,Cl)
original=double(original);
[m,n,c]=size(original);
ue=zeros(m,n,c);
for channel=1:c
    Im=original(:,:,channel);
    if strcmp(lowfilter,'Gaussian-enhancement') || strcmp(lowfilter,'gaussian-enhancement') 
        uk=imgaussfilt(Im,sigma1);
        [graduk,~]=imgradient(uk,'central');
        graduk2=graduk.^2;
        Mex=max(max(graduk2(:)));
        men=min(min(graduk2(:)));
        F=(graduk2-men)./(Mex-men);
        [s1,s2]=size(Ch);
        if s1==2
            C=Ch(1,1)*exp(-Ch(2,1)*F);
        elseif s2==2
            C=Ch(1,1)*exp(-Ch(1,2)*F);
        end
        if strcmp(sigma0,'default')
            ug=double(imadjust(Im));
        else
            ug=double(sigma0(:,:,channel));
        end
        H2=(Im-imgaussfilt(Im,sigma2));
    elseif strcmp(lowfilter,'Gaussian-smoothing') || strcmp(lowfilter,'gaussian-smoothing')   
        uk=imgaussfilt(Im,sigma1);
        [graduk,~]=imgradient(uk,'central');
        graduk2=graduk.^2;
        Mex=max(max(graduk2(:)));
        men=min(min(graduk2(:)));
        F=(graduk2-men)./(Mex-men);
        [s1,s2]=size(Ch);
        if s1==2
            C=Ch(1,1)*exp(-Ch(2,1)*F);
        elseif s2==2
            C=Ch(1,1)*exp(-Ch(1,2)*F);
        end
        ug=imgaussfilt(Im,sigma0);
        H2=(Im-imgaussfilt(Im,sigma2));
    elseif strcmp(lowfilter,'Other') || strcmp(lowfilter,'other')
        ug=double(sigma0(:,:,channel));
        F=double(sigma1(:,:,channel));
        C=double(Ch(:,:,channel));
        H2=double(sigma2(:,:,channel));
    end
ue(:,:,channel)=ug+C.*(F+Cl).*H2;
end
ue=uint8(ue);
return