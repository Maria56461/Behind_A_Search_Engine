function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% A = Q * R ---> Q * R * A^(-1) = I ---> R * A^(-1) = Q_T ---> R * B = Q_T
  
  [r, c] = size(A); 
  [Q, R] = Gram_Schmidt(A);
  Q_T = Q';
  
  for i = 1 : r
   B(1 : c, i) = SST(R, Q_T(1 : c, i));
   %rezolvarea celor "r" sisteme de ecuatii 
  endfor
  
  endfunction 