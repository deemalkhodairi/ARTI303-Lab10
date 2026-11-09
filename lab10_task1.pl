% Task 1 - Shapes

square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

triangle(Base, Height, Side2, Side3, Area, Perimeter) :-
    Area is (Base * Height) / 2,
    Perimeter is Base + Side2 + Side3.
