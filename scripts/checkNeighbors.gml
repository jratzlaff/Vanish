var neighbors, n;
neighbors = ds_list_create(); // create a list to hold the cell's neighbors
n[0] = indices(i, j - 1); // get the neighbor above us
n[1] = indices(i + 1, j); // get the neighbor to the right of us
n[2] = indices(i, j + 1); // get the neighbor below us
n[3] = indices(i - 1, j); // get the neighbor to the left of us

for (var c = 0; c < array_length_1d(n); c++) {
    if (n[c] != undefined) {
        if (!n[c].visited) {
            ds_list_add(neighbors, n[c]);
        }
    }
}

// check if we added any neighbors to our list (it's not empty)
if (!ds_list_empty(neighbors)) {
    ds_list_shuffle(neighbors); // shuffle the list of neighbors
    var n = ds_list_find_value(neighbors, 0); // grab the top neighbor
    ds_list_destroy(neighbors); // destroy the list of neighbors
    return n; // return the randomly-selected neighbor
} else {
    ds_list_destroy(neighbors); // destroy the list of neighbors
    return undefined; // return undefined, we have no neighbors
}
