function x = u (el, val1, val2)
  dif = val2 - val1;
  a = double(1) / double(dif);
  b = double(0 - val1) / double(dif);
  if el >= 0 && el < val1
    x = 0;
  endif
  if el >= val1 && el <= val2
    x = a*el + b;
  endif
  if el > val2
    x = 1;
  endif
  endfunction
