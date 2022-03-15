function [R1 R2] = PageRank(nume, d, eps)

  fileID = fopen(strcat(nume, '.out'), 'w');
  % creez si deschid pentru scriere fisierul de iesire "nume.out"
  [N, L, A, val1, val2] = read_data_from_file(nume);
  % citesc din fisierul-input nr. de noduri, nr. vecini pentru fiecare nod, 
  % val1, val2 si construiesc matricea de adiacenta 
  fprintf(fileID, "%d \n", N);
  fprintf(fileID, "\n");
  % scriu in fisier nr. de noduri, rand liber 
  R1 = Iterative(nume, d, eps);
  % construiesc vectorul de coeficienti prin metoda iterativa 
  for i = 1 : N
    fprintf(fileID, "%f \n", R1(i));
  endfor
  fprintf(fileID, "\n");
  % afisez datele pentru metoda iterativa, rand liber 
  R2 = Algebraic(nume, d, eps);
  % construiesc vectorul de coeficienti prin metoda algebrica 
  for i = 1 : N
    fprintf(fileID, "%f \n", R2(i));
  endfor
  fprintf(fileID,"\n");
  % afisez datele pentru metoda algebrica, rand liber 
  Matrix = [[1 : N]' R2]; 
  % matrice cu numarul resursei si coeficientul sau obtinut algebric 
  [~,idx] = sort(Matrix(:, 2), 'descend');
  SortedMat = Matrix(idx, :);
  % sortez ambele coloane ale matricei dupa page-rank-uri 
  for j = 1 : N
    fprintf(fileID, "%d ", j);
    % numerotez resursele web
    fprintf(fileID, "%d ", SortedMat(j, 1));
    % printez nodul al carui page-rank este afisat 
    fprintf(fileID, "%f \n", Apartenenta(SortedMat(j, 2), val1, val2));
    % printez coeficientii de page-rank sortati descrescator 
  endfor
  
  fclose(fileID);
  %inchid fisierul 

endfunction