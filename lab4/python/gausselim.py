import random
import time

#Matthew Groover
#9/28/20
#this program is to show the complexity of
#calculating numerical formulas in an 
#interpretid language 

def forward_elimination(A, b, n):
    """
    Calculates the forward part of Gaussian elimination.
    """
    for row in range(0, n-1):
        for i in range(row+1, n):
            factor = A[i][row] / A[row][row]
            for j in range(row, n):
                A[i][j] = A[i][j] - factor * A[row][j]

                b[i][0] = b[i][0] - factor * b[row][0]

      # " print('A = \n%s and b = %s' % (A,b))"
    return A, b
#================end of forward elimination======================
def back_substitution(a, b, n):
    """"
    Does back substitution, returns the Gauss result.
    """
    x = createArray(n,1)
    x[n-1] = b[n-1][0] / a[n-1][n-1]
    for row in range(n-2, -1, -1):
        sums = b[row][0]
        for j in range(row+1, n):
            sums = sums - a[row][j] * x[j]
        x[row] = sums / a[row][row]
    return x
#++++++++++++++++++++++++end of back substitution++++++++++++++++
def gauss(A, b):
    """
    This function performs Gauss elimination without pivoting.
    """
    n = len(A)

    A, b = forward_elimination(A, b, n)
    return back_substitution(A, b, n)
#+++++++++++++++end of gauss algorithim calls +++++++++++++++++++
def createArray(size,ssize):
    """
    to create an matrix of random numbers between 1 and 20 with a given size

    size    --size of matrix, N x N+1
    """
    n = []
    for x in range(size):
        n.append([])
        for _ in range(ssize):
            n[x].append(float(random.randint(1, 20))) #this function returns an matrix for computation
    return n    

# Main program starts here
if __name__ == '__main__':

    n= input("please enter what size of matrix you want")
   
    n= int(n)
    A = createArray(n,n)
    b = createArray(n,1)
    start = time.perf_counter()
    x = gauss(A, b)
    end = time.perf_counter()
    print(n," test :  \n",(end - start) * 1000)
    
    A = createArray(250,250)
    b = createArray(250,1)
    start = time.perf_counter()
    x = gauss(A, b)
    end = time.perf_counter()
    print("test 250:  \n",(end - start) * 1000)

    A = createArray(500,500)
    b = createArray(500,1)
    start = time.perf_counter()
    x = gauss(A, b)
    end = time.perf_counter()
    print("test 500:  \n",(end - start) * 1000)

    A = createArray(1000,1000)
    b = createArray(1000,1)
    start = time.perf_counter()
    x = gauss(A, b)
    end = time.perf_counter()
    print("test 1000:  \n",(end - start) * 1000)

    A = createArray(1500,1500)
    b = createArray(1500,1)
    start = time.perf_counter()
    x = gauss(A, b)
    end = time.perf_counter()
    print("test 1500:  \n",(end - start) * 1000)

    A = createArray(2000,2000)
    b = createArray(2000,1)
    start = time.perf_counter()
    x = gauss(A, b)
    end = time.perf_counter()
    print("test 2000:  \n",(end - start) * 1000)
