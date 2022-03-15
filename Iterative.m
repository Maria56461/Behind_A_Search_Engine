function R = Iterative(nume, d, eps)
	% nume: numele fisierului din care se citeste;
	%	d- probabilitatea ca un anumit navigator sa continue navigarea, 
  % 0.85 in cele mai multe cazuri
	% eps: eroarea care apare in algoritm
	% R: vector-coloana de PageRank-uri acordate pentru fiecare pagina
  
  [N, L, A, val1, val2] = read_data_from_file(nume);
  % citesc datele din fisierul input 
  R_init = 1/N * ones(N, 1);
  % initializare vector de coeficienti  
  R = zeros(N, 1);
  
  while max(abs((R - R_init))) >= eps
  % algoritmul se opreste cand se ajunge la o eroare foarte mica 
    if norm(R) > 0
      R_init = R;
    endif
    % R-vechi devine R-nou dupa o iteratie 
    for i = 1 : N
      S = sum(R_init(find(A(:, i) == 1)) ./ L(find(A(:, i) == 1)));
      R(i) = S * d + (1 - d) / N;
      % vectorizare formula pentru coef. unei resurse 
    endfor
  endwhile
  
  R = R_init;
  
endfunction