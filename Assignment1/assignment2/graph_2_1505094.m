x = -2:.1:10


myFunction = 1.25-((3.576516*x)./((x.^2+0.7225).^1.5))


plot(x,myFunction,'b')
grid on