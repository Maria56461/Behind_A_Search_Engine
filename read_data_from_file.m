function[N, L, A, val1, val2] = read_data_from_file(nume_fisier)

% L -vector coloana care contine pe linia i numarul de vecini ai nodului i 
% N - numarul de noduri ale grafului 
% A - matricea de adiacenta corespunzatoare grafului citit

  fileID = fopen(nume_fisier);
  % deschid fisierul de intrare  
  N = fscanf(fileID,'%d','r');
  % citesc nr. de noduri 
  L = zeros(N, 1);
  A = zeros(N);
  % initializare 
  
  for i = 1 : N
  %parcurg lista de noduri 
    numar_nod = fscanf(fileID, '%d', 'r');
    L(i, 1) = fscanf(fileID, '%d', 'r');
    % citesc numarul nodului si numarul de vecini pt. fiecare nod  
    for k = 1 : L(i, 1)
      vecin = fscanf(fileID, '%d', 'r');
      A(numar_nod, vecin) = 1;
    endfor 
    % citesc vecinii fiecarui nod si construiesc matricea de adiacenta  
    if A(i,i) != 0
      A(i,i) = 0;
      L(i) =  L(i) -1;
    endif
    %elimin link-urile de la o pagina catre ea insasi 
  endfor
  
  val1 = fscanf(fileID, '%f', 'r');
  val2 = fscanf(fileID, '%f', 'r');
  % citesc val1 si val2
  fclose(fileID);
  %inchid fisierul 
  
endfunction