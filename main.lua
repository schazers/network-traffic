require 'bits'
TS,N,X,Y,sc,spd,sspd,sq=3,31,16,16,0,1,24,{}
function _D()
BG(3) A(X,Y)
for i=1,#sq do ss=sq[i]
if ss.x>0 and ss.x<32 and ss.y>0 and ss.y<32 then
B(ss.x,ss.y,ss.c)
end
end
TEXT(''..sc,20,448,4,1)
end
function _U(dt)
if G(X,Y)>4 then DIE() end
if T(1)>(0.2+RN(0,.2))/spd then
a,b=M()*N+RNN(),M()*N
i,j,Q=a,b,1
np = (b==0) and 1 or -1
if M()>.5 then i,j,Q=b,a,0 end
sq[#sq+1]={x=i,y=j,d=Q,p=np,c=RN(5,11)}
spd=spd+0.01 sc=sc+1 RT(1)
end
for i=1,#sq do
sq[i].x=sq[i].x+(1-sq[i].d)*sq[i].p*dt*sspd
sq[i].y=sq[i].y+sq[i].d*sq[i].p*dt*sspd
end
end