//kunwari
import Foundation

var loop = true //Used for the looping and termination of the program.

/**
 Menu for the functions created as solutions for the problems in Codewars (Swift Language)
 */
func menu(){
    while (loop == true) {
        print("Hello! Please choose a function to perform:" + "\n" +
                "1. Greet" + "\n" +
                "2. Multiply" + "\n" +
                "3. Number of Digits" + "\n" +
                "4. Even or Odd\n" +
                "5. Reversed Strings\n" +
                "6. Exit" + "\n" +
                "Choice:")
        let choice = readLine()
        if choice == "1"	{
            print(greet(), "\n")
        }
        if choice == "2"	{
            print("\nPlease input a multiplicand:")
            let a = readLine()
            print("\nPlease input a multiplyer:")
            let b = readLine()
            if let aString = a, let bString = b, let a = Double(aString), let b = Double(bString) {
                print("The result of the two values multiplied is", multiply(a,b), "\n")
            }
        }
        if choice == "3"	{
            print("\nPlease input an integer number:")
            let n = readLine();
            print("\nPlease input a digit (0-9):")
            let d = readLine()
            if let dString = d, let d = Int(dString) {
                if (0<=d&&d<=9) {
                    if let nString = n,  let n = Int(nString) {
                        print("The resulting counted digits from the given integer is", nbDig(n,d), "\n")
                    }
                }
                else {
                    print ("The digit is not ranging from 0-9. The application will now return to the menu.\n")
                }
            }
        }
        if choice == "4"    {
            print( "Input a number: " )
            let integer = Int(readLine()!)
            print(evenOrOdd(Int(integer!)))
        }
        if choice == "5"{
            print( "Input string: " )
            let string = String(readLine()!)
            print(reverse(String(string)))

        }
        if choice == "6"	{
            loop = false
        }
    }
    print ( "\nGoodbye!" )
}

/**
 Function for showing a String output of "Hello World!"
 - Returns: "Hello World!" in String type
 */
func greet()->String {
    return "Hello World!";
}

/**
 Function for multiplying two Double inputs and returns the multiplied result
 - Parameters:
   - a: Double type multiplicand
   - b: Double type multiplyer
 - Returns: Multiplied result in Double type
 */
func multiply ( _ a : Double, _ b : Double )->Double {
    return a * b;
}

/**
 Function for counting a given digit ranging from 0 - 9
 within a given integer and returns the counted digits
 - Parameters:
   - n: Integer type number
   - d: Integer type digit (0-9)
 - Returns: Counted digits in Integer type
 */
func nbDig ( _ n : Int, _ d: Int )->Int {
    var countDigits = 0
    for x in 0...n {
        let square = String(x*x);
        let numbers = Array(square);
        let index = 0;
        for index in index...numbers.count - 1 {
            let digit = Int(String(numbers[index]))
	    if(digit == d){
	     countDigits += 1;
	    }
           

        }
    }
    return countDigits;
}

/**
 Function for checking if the integer is even or odd
 - Parameter number: Integer type number
 - Returns: "Even" or Odd
 */
func evenOrOdd ( _ number : Int )->String {
    if number / 2 == 0 {
        return "Odd";
    } else {
        return "Even";
    }
}

/**
 Function for reversing a string
 - Parameter str:
 - Returns: reversed string
 */
func reverse ( _ str : String )->String {
    let reversed = String (str.reversed());
    return reversed;
}

func bmi(_weight: Double,_height: Double) {
    let index = (weight) / (height * height)
    if index <= 18.5 {return "Underweight"}
    if index <= 25.0 {return "Normal"}
    if index <= 30.0 {return "Overweight"}
    return "Obese"
}

menu() //Calls the main menu() function