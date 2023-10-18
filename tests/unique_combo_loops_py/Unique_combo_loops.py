numbers = range(16)

for i in range(len(numbers)):
    for j in range(i + 1, len(numbers)):
        print((numbers[i], numbers[j]))