var hammingWeight = function(n) {
    n = n.toString(2)
    let counter = 0

    for(let i=0; i<n.length; i++){
        if(n[i] == 1) res += 1
    }

    return counter
};
