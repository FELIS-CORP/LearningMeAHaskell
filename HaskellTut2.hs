--First I import modules before initiating the commands

import Data.List
import System.IO

--This function compares the age value input by the user against our guards

figureGrade :: Int -> String
figureGrade age
 | (age == 0) || (age == 1) = "in a play-pen, "
 | (age == 2) || (age == 3) = "in preschool, "
 | (age > 3) && (age <= 5) = "in kindergarten, "
 | (age > 5) && (age <= 11) = "in elementary school, "
 | (age > 11) && (age <= 13) = "in middle school, "
 | (age > 13) && (age <= 18) = "in high school, "
 | (age > 18) && (age <= 75) = "at work, "
 | otherwise = "sitting in a comfy chair with a nice blanket, "

{-
This is the body of the application below.  I've included explanations next to each step.
-}

main = do --Begin following the commands below in order from top to bottom.
 putStrLn "Who are you?" --prints a string asking the user who they are.
 name <- getLine --prompts the user to type in their name and creates a value called "name"
 putStrLn ("Hello, " ++ name ++ "!") --prints a string that adds the words "Hello, " (mind the spaces) to the "name" value and an exclamation point.
 putStrLn "How old are you?" --prints a string asking the user how old they are.
 age <- getLine --prompts the user to type in how old they are and creates a value called "age"
 putStrLn ("You should be " ++ figureGrade (read age) ++ name ++ "!") --Smooshes it all together.