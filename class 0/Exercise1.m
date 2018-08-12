function Exercise1()
v = rand(1,45)*0;
v(1,2) = [1];
i=3;
while(i<=45)
  v(1,i) = v(1,i-2) + v(1,i-1);  
  i=i+1;   
end

v