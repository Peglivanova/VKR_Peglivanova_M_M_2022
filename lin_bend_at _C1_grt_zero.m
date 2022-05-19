global C0 C1 h Mgiven d b

C0 = 530.495;
C1 = 15103.41;
h = 0.014;
H = h/2
b = 1; 
I = b*h^3/12;
xr(1) = h/2 %he 
xr(2) = 0 %c

Say = @(y) C0 + C1*(y - xr(2)); 
k = Say(xr(1))./xr(1); 
S_e = 0;

for d = 1.2:0.5:1.2
    Say_min = min(Say(h/2),Say(-h/2)*d);
    Say_max = max(Say(h/2),Say(-h/2)*d);
    for Mgiven = 0:0.0005:0.05
        S_e_1 = xr(1)*Mgiven/I;
       if (S_e_1 <= Say_min) && (xr(1) == h/2 )
           X(p) = Mgiven;
           Y(p) = S_e_2;
       else
           if S_e < d*Say(-h/2 + xr(2))
               [xr, fr, ex] = fsolve(@function2A, [h/2, 0], optimset('TolX', 1.0e-5));
              k = (C0 + C1*(xr(1)-xr(2)))./xr(1);
              S_e = k*(h/2 - xr(2));
           end;
       if (S_e >= Say_max) || (S_e == 0 )
          display('Stage 3');
           [xr, fr, ex] = fsolve(@function3N, [h/2, 0], optimset('TolX', 1.0e-5));
           k = (C0 + C1*(xr(1)-xr(2)))./xr(1);
              S_e = k*(h/2 - xr(2));
           hem = d*xr(1)*(C0-C1*xr(2))/(C0-C1*xr(2)+ C1*xr(1)*(d+1));   
       end;
       end;
          if xr(1)<=10^(-7)
              display('ok');
              break;
          end;
          
    end
end

