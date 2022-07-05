function R = Algebraic(nume, d)
	% Functia care calculeaza vectorul PageRank folosind varianta algebrica de calcul.
	% Intrari: 
	%	-> nume: numele fisierului in care se scrie;
	%	-> d: probabilitatea ca un anumit utilizator sa continue navigarea la o pagina urmatoare.
	% Iesiri:
	%	-> R: vectorul de PageRank-uri acordat pentru fiecare pagina.
  [N, A, L, M] = Get_ALM(nume);
  unu = ones(N, 1);
  R = zeros(N,1);
  In = eye(N);
  QR = PR_Inv(In - d*M);
  R = QR * ((double(1-d)/double(N)) * unu);
endfunction