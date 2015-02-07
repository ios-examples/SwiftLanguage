//
//  main.swift
//  SwiftExample
//
//  Created by Haydar Kulekci on 07/02/15.
//  Copyright (c) 2015 Haydar Kulekci. All rights reserved.
//

import Foundation


/*******  THE BASICS  ********/

// Define a Constant
let constantName = 10
let PI = 3.14

// You can not change constant values
// PI = 3.1  // compile-time error

// Declare a variable
var variableName = 10
var welcomeMessage = "Hello, World!"

// Declare multiple variable on a single line
var x = 0.0, y = 0.0, z = 0.0

// Annotating a variable
var secondWelcomeMessage: String
// ":" means "... of type ..." in the decleration
// set a new value to a variable was declared
secondWelcomeMessage = "Second Hello, World!"

// Defining multiple releated variables of the same type on a single line
var red, green, blue: Double

// Semicolon is not required. You must use if you use different statement on a single line.
red = 255; green = 255; blue = 255;

// String Interpolation (IMPORTANT ISSUE)
// A minimal starting to String Interpolation
println("Welcome Message : \(welcomeMessage)")
println("Second Welcome Message : \n * a string value secondWelcomeMessage:\(secondWelcomeMessage), \n * a double value red:\(red) \n * an integer value variableName:\(variableName)")

// One line Comment
/*
Multi line
Comment
*/

/*
Nested
/*
Multi line
Comment
*/
*/

/***************************************/
// Integers (Signed, Unsigned)

var unsignedIntegerVariable: UInt   // the same UInt32 on 32-bit Platform
// the same UInt64 on 64-bit Platform

var unsignedInteger8Bit: UInt8      // 8-bit unsigned integer
var unsignedInteger16Bit: UInt16    // 16-bit unsigned integer
var unsignedInteger32Bit: UInt32
var unsignedInteger64Bit: UInt64


var integer8Bit: Int8               // 8-bit signed integer
var integer16Bit: Int16             // 16-bit signed integer
var integer32Bit: Int32
var integer64Bit: Int64

// Integer Bounds
// You can find integer minimum and maximum values with min, max parameter
println("8-bit signed integer min value : \(Int8.min)")
println("8-bit signed integer max value : \(Int8.max)")

println("8-bit unsigned integer min value : \(UInt8.min)")
println("8-bit unsigned integer max value : \(UInt8.max)")

println("Signed integer min value : \(Int.min)")
println("Signed integer max value : \(Int.max)")

println("Unsigned integer min value : \(UInt.min)")
println("Unsigned integer max value : \(UInt.max)")

// My Machine is 64-bit and UInt.max value is the same with UInt64.max value
// And Int.max value is the same with Int64.max value.
println("64-bit Unsigned integer min value : \(UInt64.min)")
println("64-bit Unsigned integer max value : \(UInt64.max)")

/***************************************/
// Floating Point Numbers (Double, Float)

var floatVariable: Float, doubleVariable: Double
// Double represent 64-bit Floating Point Number
// Float represetn 32-bit Floating Point Number

/***************************************/
// Type Safe and Type Interface Language
/*
If part of your code expects a String, you can not pass it an Int by mistake.
Because Swift check types when compile your code.

However this doesn't mean that you have to specify the type of every variable
that you declare. If you don't specify the type of the value, Swift use "type
interface" to work out the appropriate type.
*/

// we declare red, green, blue variable as Double
// we decided to type of them. They are Double.
// we try to set String value to one of them
//red = "Test"
// compile-time error
// Type 'Double' does not conform to protocol 'StringLiteralConvertible'

// we define "variableName" variable without any specific type and set it an Integer value.
// Swift decided to specify type of it. It is Integer
// we try to change the value.
//variableName = "Test String"
// Ooops!
// compile-time error again. Because Swift set it as Int type and you can not change.
// Type 'Double' does not conform to protocol 'StringLiteralConvertible'

// Now we do some example to understand.

/***************************************/
// Numeric Literals

// Decimal Numbers
var decimalNumber = 10;

// Binary Numbers with a "0b" prefix
var binaryNumbers = 0b100100;

// Octal Numbers with a "0o" prefix
var octalNumbers = 0o21;

// Hexadecimal Numbers with a "0x" prefix
var hexadecimalNumbers = 0x9AF3;

// You can use underscores to help reading value of the variable
var oneMillion = 1_000_000
var justOverOneMillion = 1_000_000.000_000_1

/***************************************/
// Numeric Type Conversation


// Integer Conversion

integer8Bit = 1
var changedInteger: UInt16 = UInt16(integer8Bit)


// Integer to Float Conversion
floatVariable = 1.2
doubleVariable = 123.12

println("Addition Float and Integer \(floatVariable + Float(integer8Bit))")
println("Addition Double and Integer \(doubleVariable + Double(integer8Bit))")

// Float to Integer Conversion
println("Float (1.2) to integer conversion : \(Int(floatVariable))")
floatVariable = 1.9
println("Float (1.9) to integer conversion : \(Int(floatVariable))")


/***************************************/
// Type Aliases

typealias integerAlias = UInt16;
var aliasesVariable: integerAlias = 10;
println("UInt16 alias variable : \(aliasesVariable)")

/***************************************/
// Booleans

let trueValue = true
let falseValue = false

if trueValue {
    println("trueValue is true :)")
}

// You can not directly use integer or other type without comparison operators
// if integer8Bit { }
// compile time error
// Type 'Int8' does not conform to protocol 'BooleanType'

if integer8Bit == 1 {
    println("integer8Bit value is 1")
}

/***************************************/
// Tuples

// Declare a tuple
let http404Error = (404, "Not Found")
// type of http404Error Tuple "(Int, String)"

// Decompose a tuple
var (statusCode, statusMessage) = http404Error
println("Status Code of HTTP Page : \(statusCode)")
println("Status Message of HTTP Page : \(statusMessage)")

// Decompose only one element of tuple
var (justStatusCode, _) = http404Error
println("Status Code of HTTP Page : \(justStatusCode)")

// Getting first element of tuple
println("First element of Tuple : \(http404Error.0)")
println("Second element of Tuple : \(http404Error.1)")

// Tuple with Name
var http302Error = (statusCode: 302, statusMessage: "Moved")
println("http302Error Status Code : \(http302Error.statusCode)")
println("http302Error Status Message : \(http302Error.statusMessage)")

// If you want, you can use tuples to return multiple element on function


/***************************************/
// Optionals

// The concept of optionals doesn't exist in C or Objective-C.
// The nearest thing in Objective-C is the ability to return nil from a
// method that would otherwise return an object.

// If you declare a Integer variable you can not set it to `nil`.
var serverResponseCode: Int;
// serverResponseCode = nil
// compile-time error
// Type 'Int' does not conform to protocol 'NilLiteralConvertible'

// Example For Function
func test() -> Int {
    return 0
    // return nil
    // Compile-time error
    // Type 'Int' does not conform to protocol 'NilLiteralConvertible'
}

// You can use optional types to solve them
var optionalServerResponseCode: Int?
// If you define an optional constant or variable without providing a
// default varlue, the constant or variable is automatically set to nil
// for you

// Example For Function
func optionaTest() -> Int? {
    return nil
}

/*
Swift's nil is not the same as nil in Objective-C. In Objective-C, nil
is a pointer to a nonexistent object. In Swift, nil is not a pointer. It
is absence of a value of a certain type. Optionals of any type can be
set to nil, not just object types.
*/


/******* BASIC OPERATORS *******/


































