var a, b, _x, _y; // declare temp vars

a = argument0;
b = argument1;

_x = a.i - b.i;

if (_x == 1) { // if the previously-actived cell visited a neighbor to the right
    a.walls[3] = false; // remove left wall from cell A
    b.walls[1] = false; // remove right wall from cell B
} else if (_x == -1) { // if the previously-actived cell visited a neighbor to the left
    a.walls[1] = false; // remove right wall from cell A
    b.walls[3] = false; // remove left wall from cell B
}

_y = a.j - b.j;

if (_y == 1) { // if the previously-actived cell visited a neighbor above
    a.walls[0] = false; // remove top wall from cell A
    b.walls[2] = false; // remove bottom wall from cell B
} else if (_y == -1) { // if the previously-actived cell visited a neighbor below
    a.walls[2] = false; // remove bottom wall from cell A
    b.walls[0] = false; // remove top wall from cell B
}
