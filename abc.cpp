#include<iostream>
#include<string>
using namespace std;

class Stack
{
public:
	char* arr;
	int top;
	int size;

	Stack(int size)
	{
		this->size = size;
		top = -1;
		arr = new char[size];
	}

	void push(char data)
	{
		if (top == size - 1)
		{
			cout << "Stack Overflow" << endl;
			return;
		}
		top++;
		arr[top] = data;
	}

	void peek()
	{
		if (top == -1)
		{
			cout << "Stack is Empty" << endl;
			return;
		}
		cout << arr[top];
	}

	void pop()
	{
		if (top == -1)
		{
			cout << "Stack Underflow" << endl;
			return;
		}

		top--;
	}

	void display()
	{
		for (int i = top; i >= 0; i--)
		{
			cout << arr[top];
		}
		cout << endl;
	}

	bool isEmpty()
	{
		if (top == -1)
		{
			return true;
		}

		return false;
	}

	void StringReverse(string s)
	{
		for (int i = 0; i < s.size(); i++)
		{
			push(s.at(i));
		}
		cout << endl;
		cout << "After Reversing string is: " << endl;

		for (int i = 0; i < s.size(); i++)
		{
			peek();
			pop();
		}
		cout << endl;
		cout << endl;
	}

};

int main()
{
	cout << "Implementing through Array" << endl;
	cout << endl;
	string s = "";
	cout << "Enter a string" << endl;
	getline(cin, s);

	Stack stack(s.size());
	stack.StringReverse(s);

	

}