from queue import PriorityQueue

def astar_search(graph, source, goal, heuristic):
    pq = PriorityQueue()
    pq.put((0, source, [source]))

    while not pq.empty():
        current_c, current, path = pq.get()
        if current==goal:
            return path
        
        for i, cost in graph[current]:
            if i not in path:
                total_cost = cost+current_c+heuristic[i]
                pq.put((total_cost, i, path+[i]))
    return None

graph = {
    'A': [('B', 4), ('C', 3)],
    'B': [('A', 4), ('D', 2), ('E', 5)],
    'C': [('A', 3), ('F', 7), ('G', 6)],
    'D': [('B', 2)],
    'E': [('B', 5)],
    'F': [('C', 7)],
    'G': [('C', 6)]
}

heuristic = {
    'A': 6,
    'B': 4,
    'C': 2,
    'D': 3,
    'E': 5,
    'F': 8,
    'G': 1
}

source_node = 'A'
goal_node = 'G'

path = astar_search(graph, source_node, goal_node, heuristic)

if path:
    print(f"Path from {source_node} to {goal_node}: {path}")
else:
    print(f"No path found from {source_node} to {goal_node}")
