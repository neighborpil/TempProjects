#include <iostream>
using namespace std;

int getMax( int arr[], int n) 
{
	int max = arr[0];
	for (int i = 0; i < n; i++)
	{
		if (max < arr[i]) {
			max = arr[i];
			arr[i] += 1; //배열은 참조복사가 일어난다
		}
	}
	return max;
}

int main() 
{
	int data[10] = { 10, 23, 5, 2,3,4,5,6,6,7 };

	cout << "데이터 : ";

	for (int i = 0; i < 10; i++)
	{
		cout << data[i] << " ";
	}
	cout << endl << endl;
	cout << "최대값 = " << getMax(data, 10)<<endl;

	for (int i = 0; i < 10; i++)
	{
		cout << data[i] << " ";
	}
}