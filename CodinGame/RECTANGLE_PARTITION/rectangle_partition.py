import sys
import math

mes_x = []
mes_y = []

w, h, count_x, count_y = [int(i) for i in input().split()]
for i in input().split():
    x = int(i)
    mes_x.append(x)
for i in input().split():
    y = int(i)
    mes_y.append(y)

mes_x.append(w)
mes_y.append(h)

all_x = []
all_y = []

i = len(mes_x) - 1
while i > 0:
    for elem in mes_x[0:i]:
        all_x.append(mes_x[i] - elem)
    i -= 1
all_x = all_x + mes_x

i = len(mes_y) - 1
while i > 0:
    for elem in mes_y[0:i]:
        if (mes_y[i] - elem) in all_x:
            all_y.append(mes_y[i] - elem)
    i -= 1
for elem in mes_y:
    if elem in all_x:
        all_y.append(elem)

count = 0

all = set(all_y)

for elem in all:
    count += all_x.count(elem) * all_y.count(elem)

print(count)
