# Question One (1)
# 
# Question 1: Write a program that asks the user how many Fibonacci numbers to generate and 
# then generates them. Take this opportunity to think about how you can use functions. 
# Make sure to ask the user to enter the number of numbers in the sequence to generate 
# (Hint: The Fibonacci sequence is a sequence of numbers where the next number in the sequence is the sum of the previous 
# two numbers in the sequence. The sequence looks like this: 1, 1, 2, 3, 5, 8, 13, ...) 

# Recursive Function Beginning
def Fibonacci_series(Number):
  
           if(Number == 0):
                      return 0
           elif(Number == 1):
                      return 1
           else:
                      return (Fibonacci_series(Number - 2)+ Fibonacci_series(Number - 1))

# End of the Function

# Fibonacci series will start at 0 to inputed number
Number = int(input("\nPlease Enter the Range Number: "))

# Find & Displaying Fibonacci series
for Num in range(0, Number):
           print(Fibonacci_series(Num))

# Question Two (2)
# Python code to Reverse each word 
# of a Sentence individually 
  
# Function to Reverse words 
def rws(Sentence): 
  
    # All in One line 
    return ' '.join(word[::-1] for word in Sentence.split(" ")) 
  
# Driver's Code  
Sentence = input ("Enter a sentence: ")
print(rws(Sentence))  

#Question 3: Ask the user for a string and print out whether this string is a palindrome or
# not. (A palindrome is a string that reads the same forwards and backwards.) 

# function to check string is 
# palindrome or not 
def palindrome(A): 
  
	rev = ''.join(reversed(A)) 

	# Checking if both string are equal or not 
	if (A == rev): 
		return True
	return False

# main function 
A = str(input('Input your word to check if it"s a plaindrome: '))
ans = palindrome(A) 

if (ans): 
	print("Yes") 
else: 
	print("No") 


# Question 4: For this exercise, we will keep track of when our friend's birthdays are, 
# and be able to find that information based on their name. Create a dictionary 
# (in your file) of names and birthdays. When you run your program, it should ask 
# the user to enter a name, and return the birthday of that person back to them. 
# The interaction should look something like this
#  Welcome to the birthday dictionary. We know the birthdays of: 
# Albert Einstein Benjamin Franklin Ada Lovelace
# >>> Who's birthday do you want to look up? Benjamin Franklin
# >>> Benjamin Franklin's birthday is 01/17/1706

a = {'Albert Einstein': '14/03/1879', 
'Benjamin Franklin': '17/01/1706 ', 
'Ada Lovelace': '10/12/1815'}
print('Welcome to the birthday dictionary. We know the birthdays of: Albert Einstein Benjamin Franklin Ada Lovelace')
b= input('Who"s birthday do you want to look up? ')
c = print(b,' birthday is ',a[b])

# Question 5: Use the BeautifulSoup and requests Python packages to print out a list of 
# all the article titles on the New York Times homepage (https://www.nytimes.com). 



# Question 6: Take the code from the question 5 and instead of printing the results 
# to a screen, write the results to a txt file. In your code, just make up a name for 
# the file you are saving to.

