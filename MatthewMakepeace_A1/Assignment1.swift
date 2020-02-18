//
//  main.swift
//  MatthewMakepeace_A1
//
//  Created by Matthew Makepeace on 2020-02-06.
//  Copyright © 2020 Matthew Makepeace. All rights reserved.
//

import Foundation

print("Welcome to the Dictonary Game!!!\n")
print("Rules: You start the game with 3 lives. You lose a life when your answer is incorrect. And you win the game, when you have answered all 50 questions without losing the 3 lives.\n")
print("Note: Please type out your answers in lower case, unless if it is a name of a city or planet or the answer will be incorect and you lose a life.\nWould you like to play? ")

var keyWord = ["dog", "water", "hand", "penguin", "basketball", "apple", "palm tree", "wine", "cola", "gum", "Toronto", "pencil", "beer", "hockey", "orange", "cat", "jump", "punch", "London", "eye", "pushup", "spider", "pasta", "kick", "coconut", "jalapeno", "zombie", "Pittsburgh", "coffee", "crown", "bee", "Los Angeles", "Shanghai", "tail", "chocolate", "carrot", "grass", "dinosaur", "deadlift", "croissant", "star", "Mars", "ice cream", "snake", "Rome", "halt", "majority", "issue", "sarcastic", "suite"]

var definition = ["A mammal that walks on 4 legs, that is a cannine and barks", //dog
                  "The scientific name of the liquid is Hydrogen Dioxide (H20), and is the most important drink in the world.", //water
                  "Part of the human body that is used to touch, carry, and feel",//hand
                  "A type of bird that lives in Antarctica that can't fly.", //penguin
                  "A 2 team sport of 5 players on each team, where you throw ball in the netted hoop.", //basketball
                  "A type of fruit that is round, the colour of it red or green, and that is crunchy and sweet", //apple
                  "A type of tree that is found in warm regions and it's leaves look like a long feather.", //palm tree
                  "An alcoholic beverage that is made with grapes and is usually 13% alc.", //wine
                  "A soda beverage that consists caffine and has a dark caramel colour to it.", //cola
                  "A type of candy that you chew, but not swallow.", //gum
                  "The capital of Ontario, and the biggest city in Canada.", //Toronto
                  "An object is is commonly used to write with, and has an eraser at the top of this object, which makes it unique.", //pencil
                  "A yeast based alcoholic beverage, that is malt flavoured, and is usually 5% alc.", //beer
                  "A 2 team sport of 5 players on each team, that is usually played on ice, and is very popular in Canada.", //hockey
                  "A citrus fuit that usually grows in tropical climates such as Florida, but is very sweet instead of sour.", //orange
                  "A mammal that walks on 4 legs, that is a feline and meows.", //cat
                  "An action where you push yourself up in the air with your with your legs and land of your feet.", //jum
                  "An action where you strike with your fists to attack.", //punch
                  "Capital city of England, and is usually the home of the Queens.",//London
                  "Part of the human body, that is used to see visible appearences.", //eye
                  "A type of excercise where you raise your body, by pressing down with your hands.", //pushup
                  "An arachnid animal that has 8 legs, and has the ability to make string webs.", //spider
                  "An italian dish, where you combine noodles with tomato sauce. This dish was invented by Marco Polo.", //pasta
                  "An action where you strike your opponent by lifting your leg and hitting him/her with your feet.", //kick
                  "A fruit that is grown off of palm trees, and provides milk and it's own meat from the inside.", //coconut
                  "A medium sized green chili pepper that is quite spicy.", //jalapeno
                  "A fictional undead , that is a dead person that comes back to life to eat human flesh.", //zombie
                  "A city is west Pennsylvania, that has 3 rivers and many bridges.", //Pittsburgh
                  "A hot beverage made from roasted ground beens that contain caffine.", //coffee
                  "A circular headdress that is warn by the kings, queens, and princesses.", //crown
                  "An insect that is has the colors of black and yellow, the main contributor of honey, and has the ability to sting people.", //bee
                  "The second biggest city in the USA, many celebrities live there and is home to Hollywood.", //Los Angeles
                  "The most populated city in China and has the Oriental Pearl TV Tower in this city.", //Shanghai
                  "A body part that is thin, usually connected to the bum of the animal, but humans don't have this body part.", //tail
                  "A sweet brown treat that is made from cacao seeds, and is used in many flavors.", //chocolate
                  "A vegitable that is in a shape of a tall and thin cone, and has the color orange.", //carrot
                  "A small plant that is green, grown on dirt, and is used to cover ground in a lawn.", //grass
                  "A giant reptile that was last alive during the Mesozoic era (about 100 million years ago).", //dinosaur
                  "An excercise where you bend down and lift the weights from the ground, and put yourself in a standing position while holding on to the weights.", //deadlift
                  "A french pastery bread that is soft and buttery.", //croissant
                  "A giant lava ball that has enormous gravity to force planets and asteroid belts to rotate around it. This object can be seen in the night sky, but it looks like a tiny diamond.", //star
                  "A red planet that is close to planet Earth, but is smaller.", //Mars
                  "A cold desert that can be served in a cone, and is made of sweeten milk.", //ice cream
                  "A reptile that has no legs, and moves by slithering its body.", //snake
                  "Capital city of Italy, and the Colosseum is in this city.", //Rome
                  "A sudden or fast stop.", //halt
                  "The greater number.", //majority
                  "An important problem for discussions.", //issue
                  "Marked to using irony in order to mock contempt.", //sacastic
                  "a set of rooms designated for one person's or family's use, usually found in a hotel." /*suite*/ ]



var lives = 3
var answer = readLine()
var points = 0
var count = 0
var highScore = 470


while (answer == "yes" || answer == "Yes" || answer == "y" ||
answer == "Y") // input "yes" or "Y" if you want to play
{

    let dictionary = (keyWord[count], definition[count]) // Dictonary data structure as a Tuple

    print("\nHere is your definition: \n\(dictionary.1)")
    let userAnswer = readLine()
    
    if (userAnswer == dictionary.0) {
      points += 10
        
        if (points > highScore)
        {
            highScore =  points
        }
        
      print("\nYayyy, Correct!!! \nYou have \(points) points \nHigh Score: \(highScore)")
    }
    else {
      print("\nIncorrect! The correct answer was: \(dictionary.0)\nHigh Score: \(highScore)")
      lives = lives - 1
    }
    
    if (points > highScore)
    {
        highScore =  points
    }

    if (lives == 0){
        print("\nYou've ran out of lives\n\nGAME OVER!!!")
        answer = "" // this line will end the game loop
    }

    count += 1

    if (count == 50) {
        
      print("\nCongrats!!!!! You've Won the Game! Your a Champion!");
        answer = ""
    }
    else if (count < 50 && lives != 0) {
    print("\nYou still have \(lives) lives left\nDo you still wanna play?")
        answer = readLine()
    }
    
    
    
}

print("High Score: \(highScore)")
print("Final Score: \(points)")
