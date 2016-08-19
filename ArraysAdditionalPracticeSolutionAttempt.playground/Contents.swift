//: [Previous](@previous)
/*:
 
 # Additional Arrays Practice
 
 Now that we know the basics of declaring, retrieving, and editing arrays, let's complete some challenges using what we've learned!
 
 ## Challenge 1
 
 - callout(Challenge): Let's start by creating a classic crayon box.  A basic box of Crayola crayons has 8 slots containing the following colors: Red, Yellow, Blue, Green, Orange, Brown, Violet, and Black.  This sounds a lot like an array!
 
 First, declare a new variable array of Strings named `crayonBox` with the initial values `Blue` and `Red`.
 */
 var crayonBox = ["Blue", "Red"]


/*:
 
 Now that we have a crayon box, let's fill it with the rest of the crayons.  Append the colors `Yellow`, `Green`, `Orange`, `Brown`, `Violet`, and `Black` to `crayonBox`.
 
 */
crayonBox.append("Yellow")
crayonBox.append("Green")
crayonBox.append("Orange")
crayonBox.append("Brown")
crayonBox.append("Violet")
crayonBox.append("Black")



/*:
 We have now have a box with 8 crayons!  Notice that if we print out the values of `crayonBox`, the first three crayons are out of order.
 */

print(crayonBox)

/*:
 For the final step, use subscript assignment to change the first three elements of the array and put the crayons in order.  The final array should look be ["Red", "Yellow", "Blue", "Green", "Orange", "Brown", "Violet", "Black"]

 */
crayonBox[0] = "Red"
crayonBox[1] = "Yellow"
crayonBox[2] = "Blue"
print(crayonBox)


/*:
 
 ## Challenge 2
 
 Remember Morty's Grade Calculator?  To calculate a grade, we first had to find the average grades to use as the arguments for our grade calculator function.  Let's write a function to make finding these averages this easier.
 
  - callout(Challenge): Create a function called `calculateAverage` which takes an array of Double values as an argument and returns the average of the values in the array as a Double.
 
  - callout(Hint): If you're not sure where to start, review the section on for-in loops in Array-Basics for ideas.
 */

// Create your calculateAverage function here
func calculateAverage(arrayOfDouble: [Double]) -> Double {
    var sum = 0.0
    for arrayItem in arrayOfDouble {
        sum += arrayItem
    }
    return sum/Double(arrayOfDouble.count)
}

/*:
 Now call your new average calculator using the array of homework grades below and store the value in a constant `homeworkAverage`.
 */

let homeworkGrades: [Double] = [79, 83, 100, 94]

// Call your average function here
let homeworkAverage = calculateAverage(homeworkGrades)

/*:
 
 ## Challenge 3
 
 The Fibonacci sequence is a series of numbers that follows this pattern: the series starts with 1 and 1, the following numbers are each the sum of the previous two numbers.  This sequence looks like [1, 1, 2, 3, 5, ...] and can be applied in interesting ways to many topics from economics to architecture.
 
 - callout(Challenge): Calculate the first ten values of the fibonacci sequence using a for loop and store the values in a variable array named `fibonacci`.
 */

// Calculate the Fibonacci sequence here
var fibonacci: [Int] = []
for _ in 0..<10 {
    if fibonacci.count <= 1 {
        fibonacci.append(1)
    } else {
        fibonacci.append(fibonacci[fibonacci.count-2] + fibonacci[fibonacci.count-1])
    }
}

print(fibonacci)

/*:
 
 ## Challenge 4
 
 Sometimes we need to search arrays for certain values, perhaps the largest or smallest number or the longest or shortest string.
 
 - callout(Challenge): Search through the array below using your knowledge of for loops, the subscript operator, and conditionals to find and print the index of the smallest integer in the array.
 */

let arrayOfInts: [Int] = [2, 6, 14, 35, 1, 3, 2]

// Find the index of the smallest integer in arrayOfInts
var smallest = arrayOfInts[0]
for arrayItem in arrayOfInts {
    if arrayItem < smallest {
        smallest = arrayItem
    }
}
print(smallest)

//: [Next](@next)
