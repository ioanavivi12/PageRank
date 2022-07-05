function [N A L M] = Get_ALM (file)
  %Citeste din fisierul cu numele file graful
  %Construiesc matricile A, L si M conform cerintei
  f = fopen(file, "r");
  N = str2num(fgetl(f));
  L = zeros(N, 1);
  A = zeros(N);
  for i = 1:N
    line = str2num(fgetl(f));
    el = line(1);
    lg = line(2);
    for j = 1:lg
      x = line(j + 2);
      A(el, x) = 1;
      if el != x
        L(el)++;
       endif
    endfor
    A(el, el) = 0;
  endfor
  fclose(f);
  M = zeros(N);
  for i = 1:N
    for j = 1:N
      if A(j,i) == 1
        M(i,j) = double(1) / double(L(j));
      endif
    endfor
  endfor
endfunction
