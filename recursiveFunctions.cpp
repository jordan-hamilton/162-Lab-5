#include "recursiveFunctions.hpp"

using std::cout;
using std::endl;
using std::string;


/***********************************************************************************************
** Description: This function takes a string by value, then prints a newline character if the
** string's length is 0. Otherwise, the last character in the string is printed, removed from
** the string, then passed to the reverseString function.
***********************************************************************************************/
void reverseString(string inputStr) {

  if ( inputStr.length() == 0 ) {
    cout << endl;
  } else {

    cout << inputStr.back();
    inputStr.pop_back();
    reverseString(inputStr);

  }

}


/***********************************************************************************************
** Description: This function takes a pointer to an array of integeres, and an integer that
** represents the size of that array. If the array's size is equal to 0, the function returns
** 0. Otherwise the value of the last integer in the array is added to the return value of the
** function when the same pointer is passed and the array size is decreased by 1.
***********************************************************************************************/
int calcSum(int* intArray, int arraySize) {

  if (arraySize == 0) {
    return 0;
  } else {
    return intArray[arraySize - 1] + calcSum(intArray, arraySize - 1);
  }

}


/***********************************************************************************************
** Description: This function takes an integer, then returns 0 if the integer is equal to 0.
** Otherwise, the function returns the sum of the number passed to the function and the return
** value of the same function when 1 is subtracted from the input number.
***********************************************************************************************/
int calcTriangularNum(int inputNum) {

  if (inputNum == 0) {
    return 0;
  } else {
    return inputNum + calcTriangularNum(inputNum - 1);
  }

}
