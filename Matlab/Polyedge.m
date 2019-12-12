function [pe] = Polyedge(a,b,alpha,s1,s2,step)
beta=(alpha*(s1+s2)+log((s2*b)/(s1*a)))/s2;
x=-alpha-5:step:2*beta-alpha+5;
pe=(x<=0 & x>min(x)).*(a.*exp(s1*x)/2)+(x>0 & x<=alpha).*a.*(1-exp(-s1*x)/2)...
    +(x>alpha & x<=beta).*(b*exp(s2*(x-beta))/2+a.*(1-(.5)*exp(-s1*alpha))-a*exp(s2*(alpha-beta)))...
    +(x>beta & x<=max(x)).*(b*(1-exp(-s2*(x-beta))/2)+a.*(1-.5*exp(-s1*alpha))-(1/3)*exp(s2*(alpha-beta)));
plot(x,pe)
return
