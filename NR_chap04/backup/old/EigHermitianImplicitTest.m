% Test script for RR_EigHermitianImplicitTest.m         % Numerical Renaissance Codebase 1.0
clear; n=100; A=randn(n)+sqrt(-1)*randn(n); A=A*A'; lam=RR_EigHermitianImplicit(A,n)
S=RR_ShiftedInversePower(A,lam);  eig_error=norm(A*S-S*diag(lam))