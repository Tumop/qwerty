e = 0.1

x1 = [0]
x2 = [0]
x3 = [0]

print("Введите N")
print("Мой вариант 6")
N = int(input())

for j in range(1, 100):
	x1 += [(3*N + 29.1 - (3*N+4)*x2[j-1] - (5*N+7)*x3[j-1]) / (20*N+15.1)]
	x2 += [(2*N + 1.02 - x1[j] -(N+0.01)*x3[j-1]) / (2*N + 1.02)]
	x3 += [9*N + 30.1 - (N-1.9)*x1[j] - (N + 4.002)*x2[j] / (16 + 4*N)]
	if (max(abs(x1[j]-x1[j-1]), abs(x2[j]-x2[j-1]), abs(x3[j]-x3[j-1])) <= e):
		print("x1 =", x1[j])
		print("x2 =", x2[j])
		print("x3 =", x3[j])
		print("При   N равному", N , " c погрешность", e)
		break
print()
print()
