function F = function2A(x);
global C0 C1 h Mgiven 
F(1) =  (x(1).*(C0 - C1.*(x(2) - x(1))))./2 + ((2.*x(2) + h - 2.*x(1)).*(4.*C0 - 2.*C1.*x(2) + C1.*h + 2.*C1.*x(1)))/8 - ((x(2) - h/2).^2*(C0 - C1.*(x(2) - x(1))))/(2.*x(1));
F(2) = (C0/2 - (C1.*x(2))/2).*(x(2) + h/2).^2 - x(1).^2.*(C0/2 - (C1.*x(2))./2) - (C1.*x(1).^3)/3 + (C1.*(x(2) + h./2).^3)./3 + (x(1).^2.*(C0 - C1.*(x(2) - x(1))))./3 - ((x(2) - h/2).^3.*(C0 - C1.*(x(2) - x(1))))./(3.*x(1)) - Mgiven;
end



