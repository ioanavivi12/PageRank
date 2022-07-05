function [A B] = Sort (C, D, N)
% sortez Vectorul C descrescator si pe D in functie de C
  ok = 0;
  while ok == 0
     ok = 1;
     for i = 1: (N - 1)
       if C(i) < C(i + 1)
         aux = C(i);
         C(i) = C(i + 1);
         C(i + 1) = aux;
         aux = D(i);
         D(i) = D(i + 1);
         D(i + 1) = aux;
         ok = 0;
       endif
     endfor
  endwhile
  A = C;
  B = D;
endfunction
