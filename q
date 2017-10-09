import random
print("Каков будет запас денег у игроков")
cash1=int(input("-"))
cash2=cash1
print("Как зовут первого игрока?")
pl1=input("-")
print("Как зовут второго игкрока?")
pl2=input("-")
print(str(pl1)+"ваш запас денег"+str(cash1))
print(str(pl2)+"ваш запас денег"+str(cash2))
r=0
while True:	
	r=r+1
	print("Итак,"+str(r)+" раунд")
	bet1=random.randint(0,cash1) 
	print("Ставка первого игрока"+str(bet1))
	bet2=random.randint(0,cash2)
	print("Ставка второго игрока"+str(bet2))
	print("Выигрыш состоваляет "+str(bet1+bet2))
	print("Итак, игроки бросают кости")
	dicep1=random.randint(2,12)
	print("Кости, брошенный первым игроком, показывают"+str(dicep1))
	dicep2=random.randint(2,12)
	print("Кости, брошенный вторым  игроком, показывают"+str(dicep2))
	if dicep1>dicep2:
		cash1+=bet2
		cash2-=bet2
		print("Первый выиграл")
		print("Запас денег перовго игрока после "+str(r)+"раунда состовляет"+str(cash1))
		print("Запас денег второго игрока после "+str(r)+"раунда состовляет"+str(cash2))
		print("--------------------")
		
	elif dicep2>dicep1:
		cash2+=bet1
		cash1-=bet1
		print("Второй выиграл")
		print("Запас денег перовго игрока после "+str(r)+"раунда состовляет"+str(cash1))
		print("Запас денег второго игрока после "+str(r)+"раунда состовляет"+str(cash2))
		print("--------------------") 
	elif cash1==0:
		print("ВТОРОЙ ВЫИГРЛ!!!!!!!!")
		break
	elif cash2==0:
		print("ПЕРВЫЙ  ВЫИГРЛ!!!!!!!!")
		break
		
	else:
		print("Ничья")
