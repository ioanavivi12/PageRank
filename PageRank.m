function [R1 R2] = PageRank(nume, d, eps)
	% Calculeaza indicii PageRank pentru cele 3 cerinte
	% Scrie fisierul de iesire nume.out
  PR1 = Iterative(nume, d, eps);
  PR2 = Algebraic(nume, d);
  
  f = fopen(nume, "r");
  N = str2num(fgetl(f));
  for i = 1:N
    line = fgetl(f);
  endfor
  val1 = str2num(fgetl(f));
  val2 = str2num(fgetl(f));
  fclose(f);
  
  f = fopen([nume ".out"], "w");
  fprintf(f, "%d\n", N);
  fprintf(f, "%f\n", PR1);
  fprintf(f, "\n");
  fprintf(f, "%f\n", PR2);
  fprintf(f, "\n");

  PR = PR1;
  for i = 1:N
    poz(i) = i;
  endfor
  [PR, poz] = Sort(PR, poz, N);
  for i = 1:N
    fprintf(f, "%d %d %f\n", i, poz(i), u(PR(i), val1, val2));
  endfor
  fclose(f);
endfunction
