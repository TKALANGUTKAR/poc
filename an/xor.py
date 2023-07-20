import numpy as np
# import matplotlib.pyplot as plt

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def sigmoid_derivative(x):
    return x * (1 - x)

X = np.array([[0, 0],
              [0, 1],
              [1, 0],
              [1, 1]])

Y = np.array([[0], [1], [1], [0]])

np.random.seed(42)
input_layer_size = 2
hidden_layer_size = 2
output_layer_size = 1

weights_hidden = np.random.rand(input_layer_size, hidden_layer_size)
biases_hidden = np.random.rand(1, hidden_layer_size)

weights_output = np.random.rand(hidden_layer_size, output_layer_size)
biases_output = np.random.rand(1, output_layer_size)

learning_rate = 0.1
epochs = 10000

for epoch in range(epochs):
    hidden_layer_input = np.dot(X, weights_hidden) + biases_hidden
    hidden_layer_output = sigmoid(hidden_layer_input)

    output_layer_input = np.dot(hidden_layer_output, weights_output) + biases_output
    predicted_output = sigmoid(output_layer_input)

    error = Y - predicted_output

    output_delta = error * sigmoid_derivative(predicted_output)
    hidden_delta = output_delta.dot(weights_output.T) * sigmoid_derivative(hidden_layer_output)

    weights_output += hidden_layer_output.T.dot(output_delta) * learning_rate
    biases_output += np.sum(output_delta, axis=0, keepdims=True) * learning_rate

    weights_hidden += X.T.dot(hidden_delta) * learning_rate
    biases_hidden += np.sum(hidden_delta, axis=0, keepdims=True) * learning_rate



print("Predicted Output:")
print(predicted_output)

rounded_output = np.round(predicted_output)
print("\nRounded Output:")
print(rounded_output)

print("\nFinal Weights (Hidden Layer):")
print(weights_hidden)

print("\nFinal Weights (Output Layer):")
print(weights_output)

# Create a scatter plot for the predicted output
# plt.figure()
# plt.scatter(X[:, 0], X[:, 1], c=rounded_output[:, 0], cmap='viridis', label='Predicted Output')
# plt.xlabel('Input 1')
# plt.ylabel('Input 2')
# plt.title('Predicted Output')
# plt.legend()
# plt.show()
