from queue import PriorityQueue

def best_first_search(graph, source, goal, heuristic):
    pq = PriorityQueue()
    pq.put((heuristic[source], source, [source]))

    while not pq.empty():
        current_h, current, path = pq.get()
        if current == goal:
            return path
        for i in graph[current]:
            if i not in path:
                pq.put((heuristic[i[0]], i[0], path+[i[0]]))
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

path = best_first_search(graph, source_node, goal_node, heuristic)

if path:
    print(f"Path from {source_node} to {goal_node}: {path}")
else:
    print(f"No path found from {source_node} to {goal_node}")