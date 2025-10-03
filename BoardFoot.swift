import Foundation    // Import Foundation 

// Constant for one board foot in cubic inches
let boardFootVolume: Float = 144.0  // 1 board foot = 144 cubic inches

// Function to calculate the required board length to make 1 board foot
func calculateBoardFoot(width: Float, height: Float) -> Float {
    let length: Float = boardFootVolume / (width * height) // Calculate length using formula
    return length // Return the calculated length
}

// Main program starts here

// Ask user to enter width
print("Enter width (in inches):") // ask user for width
let widthInput = readLine() // Read width input as String
var width: Float = 0.0  // Initialize width variable

if let input = widthInput {  // Check if input is not nil
    if let number = Float(input) {   // Convert input string to Float
        if number > 0 { // Make sure width is positive
            width = number // Store valid width value
        } else {
            print("Width must be greater than 0.") // Error if width <= 0
            exit(0) // Exit program
        }
    } else {
        print("Invalid input. Please enter a numeric value.") // Error 
        exit(0) // Exit program
    }
} else {
    print("No input received.") // when no input is given
    exit(0)
}

// Ask user to enter height
print("Enter height (in inches):") // ask user for height
let heightInput = readLine() // Read height input as String
var height: Float = 0.0  // Initialize height variable

if let input = heightInput { // Check if input is not nil
    if let number = Float(input) {  // Convert input string to Float
        if number > 0 { // Make sure height is positive
            height = number  // Store valid height value
            
            // Both inputs are valid, so we calculate length
            let length = calculateBoardFoot(width: width, height: height) // Call function to get length
            print("To make 1 board foot, the required length is:") // Inform user
            print(String(format: "%.2f inches", length)) // Print length formatted to 2 decimal places
            
        } else {
            print("Height must be greater than 0.") // Error if height <= 0
            exit(0) // Exit program
        }
    } else {
        print("Invalid input. Please enter a numeric value.") // Error if conversion fails
        exit(0)  // Exit program
    }
} else {
    print("No input received.") // Handle nil input case
    exit(0) // Exit program
}