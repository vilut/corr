syms a b c d e f g h i j k l m n o p q r s % Define variables

% Valores para os coeficientes de evolu��o semanal, descanso � quarta
% semana e taper phase!!

z = input('Valor de evolu��o semanal? (%) ')
y = input('Redu��o na terceira semana (%)? ')
x = input('Primeira semana de taper phase? (%) ')
v = input('Segunda semana de taper phase? (%) ')
w = input('M�dia de kilometros durante este fase? (km) ')

% Equa��es que v�o gerar a kilometragem da semana

eq1 = b == a*((100+z)/100);
eq2 = c == b*(y/100);
eq3 = d == b;
eq4 = e == d*((100+z)/100);
eq5 = f == e*(y/100);
eq6 = g == e;
eq7 = h == g*((100+z)/100);
eq8 = i == h*(y/100);
eq9 = j == h;

eq10 = k == j*((100+z)/100);
eq11 = l == k*(y/100);
eq12 = m == k;

eq13 = n == m*((100+z)/100);
eq14 = o == n*(y/100);
eq15 = p == n;

eq16 = q == p*((100+z)/100);
eq17 = r == q*(x/100);
eq18 = s == q*(v/100);
eq19 = a + b + c + d + e + f + g + h + i + j + k + l + m + n + o + p + q + r + s == w * 19;

%Converter equa��es em matriz

[A,B] = equationsToMatrix([eq1, eq2, eq3, eq4, eq5, eq6, eq7, eq8, eq9, eq10, eq11, eq12, eq13, eq14, eq15, eq16, eq17, eq18, eq19], [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s]);

%Resolver o sistema de equa��es equa��o

X = linsolve(A,B);
double(X)

%D� os valores da kilometragem por semanar de acordo com os valores
%estipulados

T=X';

%Gr�fico de barras para melhor viasualiza��o

b=1:19;
figure
bar(b,T)