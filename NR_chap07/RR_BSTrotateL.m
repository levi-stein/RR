function [D,d]=RR_BSTrotateL(D,b)
% function [D,d]=RR_BSTrotateL(D,b)
% Apply a left rotation to a RR_BST at record b (see Figure 7.7).  (RR_BSTrotateR is similar.)
% Renaissance Codebase, https://github.com/tbewley/RC/NRchap07
% Copyright 2023 by Thomas Bewley, distributed under BSD 3-Clause License. 
% See also RR_BSTinitialize, RR_BSTinsert, RR_BSTrotateLR, RR_BSTrotateR, RR_BSTbalance, RR_BSTenumerate,
% RR_BSTsuccessor.  Verify with RR_BSTtest.

a=D(b,end-3); d=D(b,end-1); c=D(d,end-3); e=D(d,end-1); p=D(b,end-2);
if a>0, Dag=D(a,end);                else, Dag=-1; end 
if c>0, Dcg=D(c,end); D(c,end-2)=+b; else, Dcg=-1; end 
if e>0, Deg=D(e,end);                else, Deg=-1; end 
D(b,end-1)=c; D(b,end-2)=-d; D(b,end)=max(Dag+1,Dcg+1);
D(d,end-3)=b; D(d,end-2)=p;  D(d,end)=max(D(b,end)+1,Deg+1);
s=sign(p); p=abs(p); if p>0, D(p,end-2+s)=d; end
while p>0, a=D(p,end-3); if a>0, Dag=D(a,end); else, Dag=-1; end
           c=D(p,end-1); if c>0, Dcg=D(c,end); else, Dcg=-1; end, g=max(Dag+1,Dcg+1);
           if g<D(p,end), D(p,end)=g; p=abs(D(p,end-2)); else, p=0; end, end
end % function RR_BSTrotateL                              
