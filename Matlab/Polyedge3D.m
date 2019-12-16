function [pe] = Polyedge3D(a,b,alpha,s1,s2,stepx)
beta=(alpha*(s1+s2)+log((s2*b)/(s1*a)))/s2;
stepy=.1; Maxy=10; Miny=0;
[x,y] = meshgrid(-alpha-5:stepx:2*beta-alpha+5,Miny:stepy:Maxy);
[J,I]=size(x);
Min=min(x(Miny+1,:));
Max=max(x(Miny+1,:));
z=zeros(J,I);
for j=1:J
    for i=1:I
        pe(j,i)=(x(j,i)<=0 & x(j,i)>Min).*(a.*exp(s1*x(j,i))/2)+(x(j,i)>0 & x(j,i)<=alpha).*a.*(1-exp(-s1*x(j,i))/2)...
        +(x(j,i)>alpha & x(j,i)<=beta).*(b*exp(s2*(x(j,i)-beta))/2+a.*(1-(.5)*exp(-s1*alpha))-a*exp(s2*(alpha-beta)))...
        +(x(j,i)>beta & x(j,i)<=Max).*(b*(1-exp(-s2*(x(j,i)-beta))/2)+a.*(1-.5*exp(-s1*alpha))-(1/3)*exp(s2*(alpha-beta)));
    end
end
figure
mesh(pe)
return