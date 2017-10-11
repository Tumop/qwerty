import random
print("Каков будет запас денег у игроков")
cash1=int(input("-"))
cash2=cash1
print("Как зовут первого игрока?")
pl1=input("-")
print("Как зовут второго игкрока?")
pl2=input("-")
print(str(pl1)+" ваш запас денег "+str(cash1))
print(str(pl2)+" ваш запас денег "+str(cash2))
cash0=cash1*0.1
r=0
print("---------------")
while True:	
	r=r+1
	print("Итак,"+str(r)+" раунд") 
	print("Ставка не должна быть отрицательной и больше "+str(cash1))
	print(str(pl2)+" твоя ставка не должна быть меньше или больше чем ставка "+(pl1)+" на "+str(cash0))
	bet1=int(input("Ставка "+str(pl1)+
		"а:"))
	bet2=int(input("Ставка "+str(pl2)+
		"а:"))
	bet21 = bet2-bet1
	bet12 = bet1-bet2
	if bet1<0 or bet2<0:
		print("Ну ты и хитрый вводи нормальную ставку")
		continue
	elif bet1>cash1 or bet2>cash1:
	    print("Как ставка может быть больше чем у тебя денег")
	elif bet21>=(cash1*0,1) or bet12>=(cash1*0,1):
		print("Ставки не действительны")
	else:
		print("Выигрыш состоваляет "+str(bet1+bet2))
		print("Итак, игроки бросают кости")
		dicep1=random.randint(2,12)
		print("Кости, брошенный, "+ str(pl1)+ " показывают"+str(dicep1))
		dicep2=random.randint(2,12)
		print("Кости, брошенный, "+ str(pl2)+ " показывают"+str(dicep2))
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
			print(str(pl2)+" ВЫИГРЛ!!!!!!!!")
			break
		elif cash2==0:
			print(str(pl1)+" ВЫИГРЛ!!!!!!!!")
			break
			
		else:
			print("Ничья")
