syms a b c d e f g h i j k l m n o p q r s % Define variables

% Valores para os coeficientes de evolução semanal, descanso à quarta
% semana e taper phase!!

z = input('Valor de evolução semanal? (%) ')
y = input('Redução na terceira semana (%)? ')
x = input('Primeira semana de taper phase? (%) ')
v = input('Segunda semana de taper phase? (%) ')
w = input('Média de kilometros durante este fase? (km) ')

% Equações que vão gerar a kilometragem da semana

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

%Converter equações em matriz

[A,B] = equationsToMatrix([eq1, eq2, eq3, eq4, eq5, eq6, eq7, eq8, eq9, eq10, eq11, eq12, eq13, eq14, eq15, eq16, eq17, eq18, eq19], [a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s]);

%Resolver o sistema de equações equação

X = linsolve(A,B);
double(X)

%Dá os valores da kilometragem por semanar de acordo com os valores
%estipulados

T=X';

%Gráfico de barras para melhor viasualização

b=1:19;
figure
bar(b,T)
