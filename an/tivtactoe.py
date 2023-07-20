def DisplayBoard(board):
    print("The current state of the board is:\n\n")
    for i in range(0, 9):
        if i>0 and i%3==0:
            print("\n")
        if board[i]==0:
            print("- ", end=" ")
        if board[i]==1:
            print("O ", end=" ")
        if board[i]==-1:
            print("X ", end=" ")
    print("\n\n")

def UserTurn(board):
    while True:
        pos = int(input("Enter a position 1 to 9: "))
        if pos>9 or pos<1 or board[pos-1]!=0:
            print("Wrong move!!!\nEnter a valid position")
        else:
            break
    board[pos-1] = -1

def analyzeboard(board):
    cb = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    for i in range(0, 8):
        if (board[cb[i][0]]!=0 and board[cb[i][0]]==board[cb[i][1]] and board[cb[i][0]]==board[cb[i][2]]):
            return board[cb[i][2]]
    return 0

def minimax(board, player):
    x = analyzeboard(board)
    if x!=0:
        return player * x
    pos = -1
    value = -2
    for i in range(0, 9):
        if board[i]==0:
            board[i] = player
            score = -minimax(board, (player*-1))
            if score>value:
                value = score
                pos = i
            board[i] = 0
    if pos==-1:
        return 0
    return value


def ComputerTurn(board):
    pos = -1
    value = -2
    for i in range(0, 9):
        if board[i]==0:
            board[i] = 1
            score = -minimax(board, -1)
            board[i] = 0
            if score>value:
                value = score
                pos = i
    print(f"Computer chooses {pos+1}")
    board[pos] = 1


if __name__=='__main__':
    board = [0,0,0,0,0,0,0,0,0]
    print("Computer:O vs User:X")
    player = int(input("Enter to play 1 or 2: "))
    for i in range(0, 9):
        if analyzeboard(board)!=0:
            break
        elif (player+i)%2==0:
            ComputerTurn(board)
            DisplayBoard(board)
        else:
            UserTurn(board)
            DisplayBoard(board)
    
    x = analyzeboard(board)
    if x==0:
        print("Draw")
    if x==-1:
        print("User won")
    if x==1:
        print("Computer won")