Dabelea Ioana-Viviana - 313CB

Functia PageRank primeste ca parametrii numele fisierului de intrare, coeficientul d si valoarea maxima a erorii eps.
In R1 se calculeaza vectorul Page Rank cu metoda iterative si in R2 cu algoritmul Algebraic.
Citesc din fisier valorile grafului, pentru a ajunge la val1 su val2 necesare pentru calcularea functiei de apartenenta.
Realizez afisarea in formatul precizat.

Get_ALM
Funcita Get_ALM primeste ca parametru numele fisierului de intrare.
Citesc din fisier graful iar in L(i) pastrez numarul de link-uri al paginii i. Si in matricea A A(i,j) are valoarea 1 daca exista link de la i la j si 0 altfel.
Returnez N, L, A si M.

ITERATIVE 
Apelez functia Get_ALM
Cat timp eroarea este mai mare decat eps, calculez noul PR dupa formula.

ALGEBRAIC
Apelez functia Get_ALM
Calculez vectorul R dupa formula, iar pentru calcularea inversei, folosesc factorizarile Gram-Schmidt.

Sort
Sortez descrescator un vector in functie de altul folosind metoda bulelor

u
Calculez valoarea functiei u(x) data in enunt