:- use_module(library(clpfd)).

zebra_owner(Owner):-
    solve_zebra(Nationalities,_, Pets,_,_),
    nth0(4, Pets, Casa),
    nth0(Indice, Nationalities, Casa),
    nth0(Indice, [englishman, spaniard, ucranian, norwegian, japanese], Owner).

water_drinker(Drinker):-
    solve_zebra(Nationalities,_,_, Drinks,_),
    nth0(4, Drinks, Casa),
    nth0(Indice, Nationalities, Casa),
    nth0(Indice, [englishman, spaniard, ucranian, norwegian, japanese], Drinker).

solve_zebra(Nationalities, Colors, Pets, Drinks, Hobbies):-
    Nationalities = [Ingles, Espaniol, Ucraniano, Noruego, Japones],
    Nationalities ins 1..5,
    all_distinct(Nationalities),
    Colors = [Rojo, Verde, Marfil, Amarillo, Azul],
    Colors ins 1..5,
    all_distinct(Colors),
    Pets = [Perro, Caracol, Zorro, Caballo, Cebra],
    Pets ins 1..5,
    all_distinct(Pets),
    Drinks = [Cafe, Te, Leche, Zumo, Agua],
    Drinks ins 1..5,
    all_distinct(Drinks),
    Hobbies = [Bailar, Pintar, Leer, Futbol, Ajedrez],
    Hobbies ins 1..5,
    all_distinct(Hobbies),
    
    Ingles #= Rojo,
    Espaniol #= Perro,
    Verde #= Cafe,
    Ucraniano #= Te,
    Verde #= Marfil + 1,
    Caracol #= Bailar,
    Amarillo #= Pintar,
    Leche #= 3,
    Noruego #= 1,
    abs(Leer - Zorro) #= 1,
    abs(Pintar - Caballo) #= 1,
    Futbol #= Zumo,
    Japones #= Ajedrez,
    abs(Noruego - Azul) #= 1,
    append([Nationalities, Colors, Pets, Drinks, Hobbies], Label),
    label(Label).

