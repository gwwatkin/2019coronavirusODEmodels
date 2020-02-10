function [a, b] = exponential_fit(x, y)
%% EXPONENTIAL_FIT Exponential Fit
% Fit data in the input arguments to the relation$y={\textrm{ae}}^{\textrm{bx}}$, 
% equivalently, $\log \left(a\right)+\textrm{bx}=\log \left(y\right)$.
% 
% Fitted by finding the least squares solution to the linear system:
% 
% $$\left\lbrack \begin{array}{cc}1 & x_1 \\1 & x_2 \\\vdots  & \vdots \\1 & 
% x_n \end{array}\right\rbrack \left\lbrack \begin{array}{c}\mathrm{log}\left(a\right)\\b\end{array}\right\rbrack 
% =\left\lbrack \begin{array}{c}\mathrm{log}\left(y_1 \right)\\\mathrm{log}\left(y_2 
% \right)\\\vdots \\\mathrm{log}\left(y_n \right)\end{array}\right\rbrack$$
A = [ones(length(x),1) x];
B = log(y);
sol = A\B;
a = exp(sol(1));
b = sol(2);
end