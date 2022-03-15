function [Q, R] = Gram_Schmidt(A)
  
  m = rows(A);
  n = columns(A);
  %dimensiunile matricei initiale 
  Q = zeros(m, n);
  R = zeros(n, n);
  %am initializat pe R cu 0 si nu mai modific elementele 
  %de sub diagonala principala
  
  for j = 1 : n
    R(1 : (j - 1), j) = Q(:, 1 : (j - 1))' * A(:, j);
    %elementele de deasupra diagonalei principale a lui R 
    aux = zeros(m, 1);
    aux = Q(:, 1 : (j - 1)) * R(1 : (j - 1), j);
    R(j, j) = sqrt(sum((A(:, j) - aux) .^ 2));
    %diagonala principala a lui R 
    Q(:, j) = (A(:, j) - aux) / R(j, j);
    %construiesc Q coloana cu coloana 
  endfor
  
  endfunction