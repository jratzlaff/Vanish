var i, j; // declare temp vars
i = argument0;
j = argument1;

// return undefined if the index is out of our array
if (i < 0 || j < 0 || i > cols - 1 || j > rows - 1) {
    return undefined;
}

return obj_maze.grid[i, j]; // otherwise, return the necessary cell
