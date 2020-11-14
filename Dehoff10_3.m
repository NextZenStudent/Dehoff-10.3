axis([0,1,0,1])
x = linspace(0,1,100);
d = 12/8.314;
G = x.*exp(d*(1-x).^2);
H = x.*(exp(d*(1-x).^2)).*exp(-2/8.314);
h = animatedline;


h.Color = 'red';
h.LineWidth = 4;
set(gcf, 'Position',  [300, 300, 600, 600])

for k = 1:length(x)
    addpoints(h,x(k),G(k));
    drawnow
end

g = animatedline;
g.Color = 'blue';
g.LineWidth = 4;

for k = 1:length(x)
    addpoints(g,x(k),H(k));
    drawnow
end

