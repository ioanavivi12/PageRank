function R = Iterative(nume, d, eps)
	% Functia care calculeaza matricea R folosind algoritmul iterativ.
	% Intrari:
	%	-> nume: numele fisierului din care se citeste;
	%	-> d: coeficentul d, adica probabilitatea ca un anumit navigator sa continue navigarea (0.85 in cele mai multe cazuri)
	%	-> eps: eruarea care apare in algoritm.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
  [N, A, L, M] = Get_ALM(nume);
  PRt = PRt1 = zeros(N, 1);
  unu = ones(N, 1);
  PRt1 = (double(1) / double(N)) * unu;
  while abs(norm(PRt1 - PRt)) >= eps
    PRt = PRt1;
    PRt1 = d * M * PRt +  (double(1 - d) / double(N)) * unu;
  endwhile
  R = PRt1;
endfunction