x = 0.1:0.1:2
fu = log(x)

fu1 = log1505094(x,1)
fu2 = log1505094(x,3)
fu3 = log1505094(x,5)
fu4 = log1505094(x,200)
plot(x,fu,'r',x,fu1,'b',x,fu2,'g',x,fu3,'y',x,fu4,'m')
%plot(x,fu1,'b')
grid on