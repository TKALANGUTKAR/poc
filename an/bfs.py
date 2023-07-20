from collections import deque

def bfs(graph, source, goal):
    queue = deque()
    visited = []

    queue.append((source,[source]))
    visited.append(source)

    while queue:
        current_node, path = queue.popleft()
        if current_node ==goal:
            return path
        
        for i in graph[current_node]:
            if i not in visited:
                queue.append((i, path+[i]))
                visited.append(i)
    return None

graph = {   
            'A':['B', 'C'],
            'B':['A', 'D', 'F'],
            'C':['A', 'F', 'G'],
            'D':['B'],
            'E':['B'],
            'F':['C'],
            'G':['C']
        }

source = 'A'
goal = 'G'
path = bfs(graph, source, goal)

if path:
    print(f"Path from {source} to {goal}: {path}")
else:
    print(f"No path from {source} to {goal}")
