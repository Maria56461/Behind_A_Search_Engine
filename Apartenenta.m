function y = Apartenenta(x, val1, val2)
	% Functie care primeste ca parametri x, val1, val2 si
  % calculeaza valoarea functiei membru in punctul x
	% 0 <= x <= 1 
	
  a = 1 / (val2 - val1);
  b = val1 / (val1 - val2);
  % am obtinut a si b prin calcul 
  
  if x >= 0 && x < val1 
    y = 0;
  else if x < val2 && x > val1
    y = a * x + b;
  else if x >= val2 && x <= 1
    y = 1;
  % gasire y pentru fiecare interval 
  endif
  endif
  endif

endfunction
  
  