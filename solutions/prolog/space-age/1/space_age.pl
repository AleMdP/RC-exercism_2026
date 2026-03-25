planetas("Mercury", 0.2408467).
planetas("Venus", 0.61519726).
planetas("Earth", 1.0).
planetas("Mars", 1.8808158).
planetas("Jupiter", 11.862615).
planetas("Saturn", 29.447498).
planetas("Uranus", 84.016846).
planetas("Neptune", 164.79132).

space_age(P, Seg, Edad):- planetas(P,V), 
                          Edad1 is Seg / V, 
                          Edad is Edad1 / 31557600.
