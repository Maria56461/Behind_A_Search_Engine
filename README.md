# Maria-Alexandra Barbu, 315CD 

## Cerinta 1- Algoritmul Iterative 
Am scris functia ajutatoare "read_data_from_file" in care am deschis 
fisierul de intrare si am citit, pe rand: numarul total de noduri din graf,
indicele fiecarui nod, numarul de vecini ai fiecarui nod, indicii vecinilor
fiecarui nod. Am construit matricea de adiacenta, avand grija sa elimin 
linkurile de la o pagina la ea insasi. Am citit valorile "val1" si "val2" si 
am inchis fisierul. Apoi, in functia "Iterative", am initializat vectorul de
page-rank-uri precum cere algoritmul si am iterat prin lista de noduri pana
cand am ajuns la o eroare foarte mica (mai mica decat "eps"). La fiecare 
iteratie am construit un nou vector de coeficienti vectorizand formula pentru 
aflarea coeficientului unei pagini web si am actualizat mereu R_init cu 
vectorul aflat la pasul anterior. 

## Cerinta 2- Algoritmul Algebraic
  Ca functii ajutatoare, am implementat algoritmul "Gram_Schmidt" si algoritmul 
de rezolvare a unui sistem superior triunghiular, "SST". Functia "Gram_Schmidt" 
primeste ca parametru o matrice "A" nesingulara si realizeaza o factorizare A = 
Q * R, unde Q este o matrice ortonormata si R una superior triunghiulara. Q 
este obtinuta prin aplicarea procedeului clasic al lui Gram-Schmidt pe matricea 
A. Pentru R, fiecare termen de deasupra diagonalei principale este produsul 
scalar dintre coloana j din A si coloana i din Q. Q este ortogonala, deci 
Q^(-1)=Q', deci A * A^(-1) = I devine R * A^(-1) = Q'. Functia "PR_Inv" 
factorizeaza matricea primita ca parametru si rezolva atatea sisteme superior 
triunghiulare cate coloane are inversa acesteia. Astfel, functia intoarce 
inversa matricei primite ca paramtru. Functia "Algebraic"  citeste informatiile 
din fisierul primit, construieste matricea M iterand prin lista de noduri si 
folosind o formula vectorizata, iar in final calculeaza vectorul de 
PageRank-uri folosindu-se de functia auxiliara "PR_Inv". 

## Cerinta 3- Gradul de Apartenenta 
  Am construit functia auxiliara "Apartenenta": din conditia de continuitate 
am obtinut relatiile: 
 a * val1 + b = 0 si a * val2 + b = 1, de unde: 
  a = 1 / (val2 - val1);
  b = val1 / (val1 - val2);
Am calculat "y" in functie de intervalul din care face parte "x". Functia 
"PageRank" mai intai creeaza si deschide pentru scriere fisierul de iesire 
"nume.out". Citeste din fisierul-input nr. de noduri, nr. vecini pentru fiecare 
nod, cele 2 valori val1, val2 si construieste matricea de adiacenta. Am scris 
in fisierul de output nr. de noduri, am lasat un rand liber. Am aplicat 
metodele iterativa si algebrica pentru a afla vectorul de page-rank-uri si am
afisat rezultatele in fisier, apoi am lasat rand liber. Am construit o matrice 
cu doua coloane- pe prima coloana are numarul fiecarei pagini web, pe a doua 
coloana page-rank-ul corespunzator. Am sortat intreaga matrice doar in functie 
de indicii de pe a doua coloana, pe care am sortat-o descrescator (am folosit 
functia built-in "sort"). Am numerotat resursele web si am printat in fisier 
cele doua coloane ale matricei sortate.  
