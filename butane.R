V=3
T=370
a=16.44
B=0.07245
R=0.083145
Vbar=V/n
p=(R*T/(Vbar-B))-(a/(Vbar*(Vbar-B)+B*(Vbar-B)))
cat("Pressure from Ideal Gas Law and Peng-Robinson equation=",P,"\n")