def P(c, n):
    x1 = a
    x2 = b
    x3 = (a+b)/2
    for i in range(n):
        if f(x3) == c:
            break
        if c < f(x3):
            x2 = x3
        if c > f(x3):
            x1 = x3
        x3 = (x1 + x2)/2.0
    return f(x3)
