# Notes by Akhona Njeje.
# Date : 5 Sept 2023.
# Topic : Prime Numbers,testing C++ with Py.

def prime(int amount):
    cdef int number, x, found 
    cdef int primes[1000]

    amount = min(amount, 1000)

    found = 0
    number = 2

    while found < amount:
        for x in primes[:found]:
            if number % x == 0:
                break

        else:
            primes[found] = number
            found += 1

        number += 1

    return_list = [p for p in primes[:found]]
    return return_list