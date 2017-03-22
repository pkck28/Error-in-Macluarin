%Maclaurin series for exp

n=3;
all=[0.1,0.05,0.02,0.01];
vec =1:n;
err=[];

for i = 1:length(all)
  a=all(i);
  terms = a.^vec ./ cumprod(vec);
  expVal = 1 + cumsum(terms);
  true = exp(a);
  err = [err; abs(true - expVal)];
  
end

loglog(all,err);
xlabel('Step Size');
ylabel('Error in Value');
legend('n=1','n=2','n=3');
hold on


