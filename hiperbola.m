# grafica y analisis de -x^-10x 
x=-20:0.1:10;
y=(-1*x.^2)+(-10*x);
c=[-1 -10 0];
r=roots (c); #[-10 0]
d=polyder (c); #[-2 -10]

#primer derivada = pendiente curva
z=d(1)*x+d(2);

#recta tangente de un punto (a,b) = f'(a)*(x-a)+f(a)
#primera raiz x = r(1) = -10, y = f(a) = 0
t1=polyval(d, r(1))*(x-r(1))+0;
#segunda raiz x = r(2) = 0, y = f(a) = 0
t2=polyval(d, r(2))*(x-r(2))+0;

#max y - centro
max=roots(d); # -5
maxy = polyval(c, max) * 2;
miny = polyval(c, -20);

plot(x,y, x,t1, x,t2, x,z,max*ones(1,251),maxy:-1:miny, r(1), 0, "marker", "*", r(2), 0, "marker", "*", max, 0, "marker", "*")
legend("f(x) = -x^2-10x", "tangente raiz 1", "tangente raiz 2", "pendiente curva")