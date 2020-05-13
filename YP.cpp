#include <iostream>
#include <string>
#include <set>
#include <map>
#include <vector>
using namespace std;

string GetAnimalName(int a) {
	switch (a) {
		case 1:
			return "pig name plump";
		case 2:
			return "chiken nameBeautiful Adam's apple";
		case 3:
			return "goat name Stubborn";
		case 4:
			return "cat name Kisy";
		case 5:
			return "dog  name Mukhtar";
		case 6:
			return " ostrich name legged";
		default:
			return "Net takogo jivotnoho";
	}
}

string PrintNumberOfLegs(int b) {
	switch (b) {
	case 1:
		return "A pig has 4 legs";
	case 2:
		return "A chiken has 2 legs";
	case 3:
		return "A goat has 4 legs";
	case 4:
		return "A cat has 4 legs";
	case 5:
		return "A dog has 4 legs";
	case 6:
		return "A ostrich has 2 legs";
	default:
		return "Net takogo jivotnoho";
	}
}

int main() {
	int Animal;
	cout << "What animal are you interested in? \n 1)pig,\n 2)chiken,\n 3)goat,\n 4)cat,\n 5)dog,\n 6)ostrich, \n ";
	cin >> Animal;
	cout << GetAnimalName(Animal);
	cout << endl;
	cout << PrintNumberOfLegs(Animal);
return 0;
}
