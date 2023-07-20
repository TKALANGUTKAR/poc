def dfs(graph, current, goal, visited, path):
    visited.add(current)
    path.append(current)

    if current==goal:
        return path
    
    for i in graph[current]:
        if i not in visited:
            t = dfs(graph, i, goal, visited, path)
            if t:
                return t
    
    path.pop()
    return None

def dfs_path(graph, source, goal):
    visited = set()
    path = []
    return dfs(graph, source, goal, visited, path)


graph = {
            'A':['B', 'C'],
            'B':['A', 'D', 'E'],
            'C':['A', 'F', 'G'],
            'D':['B'],
            'E':['B'],
            'F':['C'],
            'G':['C'],
        }

source = 'A'
goal = 'G'

path = dfs_path(graph, source, goal)

if path:
    print(path)