#include <iostream>
using namespace std;

int getMax( int arr[], int n) 
{
	int max = arr[0];
	for (int i = 0; i < n; i++)
	{
		if (max < arr[i]) {
			max = arr[i];
			arr[i] += 1; //�迭�� �������簡 �Ͼ��
		}
	}
	return max;
}

int main() 
{
	int data[10] = { 10, 23, 5, 2,3,4,5,6,6,7 };

	cout << "������ : ";

	for (int i = 0; i < 10; i++)
	{
		cout << data[i] << " ";
	}
	cout << endl << endl;
	cout << "�ִ밪 = " << getMax(data, 10)<<endl;

	for (int i = 0; i < 10; i++)
	{
		cout << data[i] << " ";
	}
}