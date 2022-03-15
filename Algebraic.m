function R = Algebraic(nume, d)
	% nume: numele fisierului in care se scrie;
	% d: probabilitatea ca un anumit utilizator sa continue navigarea 
  % la o pagina urmatoare.
	% R: vectorul de PageRank-uri acordat pentru fiecare pagina
  
  [N, L, A, val1, val2] = read_data_from_file(nume);
  % citire informatii din fisierul dat 
  M = zeros(N, N);
  I = eye(N, N); 
  %matricea identica 
  ones = ones(N,1);
  
  for i = 1 : N
    M(i, find(A(:, i) == 1)) = 1 ./ L(find(A(:, i) == 1));
    % vectorizare formula pentru construirea matricei M 
  endfor
  
  R = PR_Inv(I - d * M) * (1 - d) / N * ones;
  
endfunction
