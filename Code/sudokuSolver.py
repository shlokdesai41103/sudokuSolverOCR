def possible(arr, row, col, n):
    
    #checking the whole row
    for i in range(9):
        if(arr[row][i] == n):
            return False

    #checking the whole column    
    for i in range(9):
        if(arr[i][col] == n):
            return False
    
    #checking the whole square
    row0 = (row//3)*3
    col0 = (col//3)*3
    for i in range(3):
        for j in range (3):
            if(arr[row0+i][col0+j] == n):
                return False

    return True

def findUnassigned(arr):
    unassigned = [-1,-1]
    for i in range(9):
        for j in range(9):
            if(arr[i][j] == 0):
                unassigned[0] = i
                unassigned[1] = j
                return unassigned
    return unassigned

def solve(arr):
    unassignedPos = findUnassigned(arr)
    if(unassignedPos[0] == -1):
        return True

    i = unassignedPos[0]
    j = unassignedPos[1]

    for n in range (1, 10):
        if(possible(arr, i, j, n)):
            arr[i][j] = n
            isitSolvable = solve(arr)
            if(isitSolvable == True):
                return True
            arr[i][j] = 0

    return False
def startSolving(arr):
    for i in range (9):
        print(arr[i], " ")
    print("\n")
    solvable = solve(arr)

    if(solvable == True):
        for i in range (9):
            print(arr[i])
    elif(solvable == False):
        print("This puzzle cannot be solved.")