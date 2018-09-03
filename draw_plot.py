import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5]
y10 = [0.398643, 0.17485, 0.0948994, 0.0877709, 0.0642456]
y100 = [0.452937, 0.102524, 0.0564443, 0.0649535, 0.069266]
y1000 = [0.420433, 0.17485, 0.094899, 0.0719913, 0.069401]
y5000 = [0.884347, 0.402299, 0.38, 0.27626, 0.207038]
y9999 = [2.56284, 0.869569, 0.843745, 0.612390, 0.606539]

group_labels = ['1', '4', '8', '16', '32']
plt.title('Running time vs. Count of Processors with Different Vertices\n')
plt.xlabel('Count of Processors')
plt.ylabel('Running Time(s)')

group_labels = ['1', '4', '8', '16', '32']

# plt.plot(x1, y1, 'r', label='broadcast')
# plt.plot(x2, y2, 'b', label='join')
# plt.xticks(x1, group_labels, rotation=0)

plt.plot(x, y10, 'r', label='10', marker='.')
plt.plot(x, y100, 'b', label='100', marker='.')
plt.plot(x, y1000, 'y', label='1000', marker='.')
plt.plot(x, y5000, 'g', label='5000', marker='.')
plt.plot(x, y9999, 'purple', label='9999', marker='.')
# plt.plot(x4, y4, 'b', label='join')
plt.xticks(x, group_labels, rotation=0)

plt.legend(title="Vertices", bbox_to_anchor=[0.95, 1])
plt.grid()
plt.savefig("plot.png")
plt.show()
