inputresult :-
        write('Enter the name of the student:'),
        read(N),
        write('Enter the matric id of the student:'),
        read(P),
        write('Enter the five subject marks of the student: '),
        subjectL(M).


subjectL(M):-
        write('Database :'),
        read(C),
        write('Data structure :'),
        read(D),
        write('Algorithom :'),
        read(E),
        write('Artificial Intelligence :'),
        read(F),
        write('Operating System :'),
        read(G),
        sum(C,D,E,F,G)
        .


 sum(C,D,E,F,G) :- S is C+D+E+F+G,nl,
write('Total marks : '),
write(S)
.


marks :-
   write('Enter Your total marks :'),
        read(Z),
        show(Z).

  
show(Z) :-
  Z >= 450 , Z<500 , write('Execellent');
  Z >= 400 , Z<450 , write('Very Good');
  Z >= 350 , Z<400 , write('Good');
  Z >= 300 , Z<350 , write('Satisfactory');
  Z >= 250 , Z<300 , write('Bad');
  Z < 300, write('Very Bad');
  nl.


gpa:-
  write('please enter Database grade: ') ,
  read(N), 
  write('please enter Data Structure grade: ') ,
  read(O),
  write('please enter Algorithm grade: ') ,
  read(P),
  write('please enter Artificial Intelligence grade: ') ,
  read(Q),
  write('please enter Operating System grade: ') ,
  read(R),
  show_gpa(N,O,P,Q,R),nl.



  show_gpa(N,O,P,Q,R) :-
               T is (N+O+P+Q+R)/5 ,nl,
               write('Your Gpa is : '),
               write(T).


  cgpa:-
   write('please enter your CGPA: ') ,
  read(X),  
  read_grade(X) , nl
  .




read_grade(X) :-
  X =:= 4, write('A+');
  X >= 3.75 , X<4 , write('A');
  X >= 3.50 , X<3.75 , write('A-');
  X >= 3.25 , X<3.50 , write('B+');
  X >= 3.00 , X<3.25 , write('B');
  X >= 2.75 , X<3.00 , write('B-');
  X >= 2.50 , X<2.75 , write('C+');
  X >= 2.25 , X<2.50 , write('C');
  X >= 2.00 , X<2.25 , write('D');
  X < 2.00, write('F');
  nl
  .  


result(c181101,3.61).
result(c181122,3.54).


get_result :-
write('whose result do you want to know?'),nl,
read(A),nl,
result(A,B),nl,
write(B).