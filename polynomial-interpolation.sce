// input
x = 0:9;
// output
y = [1.1 1.45 1.70 1.99 2.3 2.7 2.8 2.9 3 3.1];

// displaying points on chart
plot(x,y,'o');

// first degree polynomial
// phi
phi_1=[x;ones(1,10)]
// theta
teta=y*phi_1'*(phi_1*phi_1')^-1

y_1=teta*phi_1

// disabling chart auto clear property
set(gca(),"auto_clear","off")

// drawing polynomial
plot(x,y_1)
// displaying mean square error
disp(sum((y_1-y).^2), "MSE - Blue")

// second degree polynomial
// lower mse - better interpolation
// seems good
phi_2=[x.^2;x;ones(1,10)]
teta_2=y*phi_2'*(phi_2*phi_2')^-1
y_2=teta_2*phi_2
plot(x,y_2,'r')
disp(sum((y_2-y).^2), "MSE - Red")

// third degree polynomial
// mse - not much better
phi_3=[x.^3;x.^2;x;ones(1,10)]
teta_3=y*phi_3'*(phi_3*phi_3')^-1
y_3=teta_3*phi_3
plot(x,y_3,'g')
disp(sum((y_3-y).^2), "MSE - Green")
