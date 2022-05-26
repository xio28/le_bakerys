
def calc_total(taxes = 0.07):
    return round(calc_subtotal() + (calc_subtotal() * taxes), 2)


def calc_subtotal(order_list):
    subtotal = 0
    
    for elem in order_list:
        subtotal += (elem[1] * elem[2])
    
    return round(subtotal, 2)
