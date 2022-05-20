
def calc_total(taxes = 0.07):
    return round(calc_subtotal() + (calc_subtotal() * taxes), 2)


def calc_subtotal():
    subtotal = 0
    order = []
    
    for elem in order:
        subtotal += (elem[1] * elem[2])
    
    return round(subtotal, 2)
