function test() {
    var i, j;
    var arr;

    for (i = 0; i < 1e5; i++) {
        arr = [ 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, 1, 2, 3, 4, 5 ];  // 20 elems
        for (j = 0; j < 20; j++) {
            void arr.pop();
        }
    }
}

try {
    test();
} catch (e) {
    print(e.stack || e);
    throw e;
}
