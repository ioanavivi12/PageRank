function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Se va inlocui aceasta linie cu descrierea algoritmului de inversare
  n=length(A(:,1));
  m=length(A(1,:));
  Q=zeros(n);
  for j=1:m
    v=A(:,j);
    for i=1:j-1
      v=v-(A(:,j)'*Q(:,i))*Q(:,i);
    endfor
    v=v./sqrt(v'*v);
    Q(:,j)=v;
  endfor
  R=Q'*A;
  B = zeros(n);
  for i = 1:n
    B(:,i) = SST(R,Q'(:,i));
  endfor  