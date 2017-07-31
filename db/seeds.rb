DailyProblem.create!([
                      {week: 1, day: 1, content: 'Read about the Ruby `map` method. Then refactor the code below using `map`.
```
numbers = [1, 2, 4, 2]
doubled_numbers = []
numbers.each do |number|
  doubled_numbers << number * 2
end
p doubled_numbers
```'},
                      {week: 1, day: 2, content: "Use the `map` method to convert the array of hashes
```
items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
]
```
into an array that only contains the ids. The result should look like:
```
[1, 2, 3]
```
"},
                      {week: 1, day: 3, content: 'Use the `map` method with the `to_h` method to convert the array of hashes
```
fruits = [
  {"name" => "apple", "color" => "red"},
  {"name" => "banana", "color" => "yellow"},
  {"name" => "grape", "color" => "purple"}
]
```
into a single hash where the keys are the names and the values are the colors. The result should look like:
```
{"apple" => "red", "banana" => "yellow", "grape" => "purple"}
```
'},
                      {week: 1, day: 4, content: 'Write a method called `reverse_a_string` that accepts a string as a parameter and returns the reverse. The one caveat: Don\'t use the reverse method that already comes with Ruby!
```
p reverse_a_string("abcde")  #=> "edcba"
```
'},
                      {week: 1, day: 5, content: 'Write a method called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
```
p find_longest_word("What is the longest word in this phrase?")  #=> "longest"
```
'},
                      {week: 2, day: 1, content: 'Read about the Ruby `select` method. Then refactor the code below using `select`.
```
numbers = [1, 2, 4, 2]
even_numbers = []
numbers.each do |number|
  if number.even?
    even_numbers << number
  end
end
p even_numbers
```
'},
                      {week: 2, day: 2, content: 'Use the `select` method with the following array of hashes
```
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
```
to create a new array of hashes that only contain movies with a rating less than 4.0.
'},
                      {week: 2, day: 3, content: 'Use the `select` method combined with the `map` method to convert the array of hashes
```
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
```
into an array of hashes that only contain movie ids of the movies with the letter \'b\' in the title (case insensitive). The result should look like:
```
[2, 3]
```'},
                      {week: 2, day: 4, content: 'Write a method called `palindrome?` which should accept a string as a parameter and return a boolean that indicates whether the string is a palindrome. A palindrome is a word that reads the same both forwards and backwards. Examples: eye, madam, racecar
```
p palindrome?("racecar")   #=> true
p palindrome?("wazzzzup")  #=> false
```
'},
                      {week: 2, day: 5, content: 'Write a method called `split_array`, with two parameters, the first being an array, and the second being an integer. The method will then create an array of other arrays, each one being the size of the indicated by the second parameter. 
```
p split_array([0, 1, 2, 3, 4, 5], 2)  #=> [[0, 1], [2, 3], [4, 5]]
p split_array([0, 1, 2, 3, 4, 5], 3)  #=> [[0, 1, 2], [3, 4, 5]]'},
                      {week: 3, day: 1, content: 'Read about the Ruby `reduce` method. Then refactor the code below using `reduce`.
```
numbers = [1, 2, 4, 2]
sum = 0
numbers.each do |number|
  sum += number
end
p sum
```'},
                      {week: 3, day: 2, content: 'Write a method called `scrabble_score` which should accept a string as a parameter and return the amount of points it is worth in Scrabble. You can use the following hash to determine how many points each letter is worth:
```
points = {\'a\'=> 1, \'b\'=> 3, \'c\'=> 3, \'d\'=> 2, \'e\'=> 1, \'f\'=> 4, \'g\'=> 2, \'h\'=> 4, \'i\'=> 1, \'j\'=> 8, \'k\'=> 5, \'l\'=> 1, \'m\'=> 3, \'n\'=> 1, \'o\'=> 1, \'p\'=> 3, \'q\'=> 10, \'r\'=> 1, \'s\'=> 1, \'t\'=> 1, \'u\'=> 1, \'v\'=> 4, \'w\'=> 4, \'x\'=> 8, \'y\'=> 4, \'z\'=> 10}
```
Use the `reduce` method to perform the computation in your scrabble_score method. The code should work as follows:
```
p scrabble_score("scholar")  #=> 12
```
'},
                      {week: 3, day: 3, content: 'Use the methods `map`, `select`, and `reduce` with the following array of hashes: 
```
items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: :book},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: :book},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: :book},
  {title: "ruby", words: 1313, tags: ["ruby"], type: :article},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: :book}
]
```
and calculate the total amount of words for all items of type `:book`. The result should be
```
3906
```'},
                      {week: 3, day: 4, content: 'Write a method called `mutation?`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
```
p mutation?("burly", "ruby")    #=> true
p mutation?("burly", "python")  #=> false
```'},
                      {week: 3, day: 5, content: 'Write a method called `sum_of_range`, which will accept an array containing two numbers, and return the sum of all of the whole numbers within the range of those numbers, inclusive.
```
p sum_of_range([1, 4])  #=> 10
p sum_of_range([4, 1])  #=> 10
```'},
                      {week: 4, day: 1, content: 'Read about the Ruby `sort` method. Then sort the following array of hashes by age. (Note - do not use the `sort_by` method for this exercise)
```
people = [
  {"name" => "Saron", "age" => 34},
  {"name" => "Majora", "age" => 28},
  {"name" => "Danilo", "age" => 45}
]
```'},
                      {week: 4, day: 2, content: 'Use the `sort` method to sort the array of hashes first by age, then by name.
```
people = [
  {name: "bob", age: 15, gender: "male"},
  {name: "alice", age: 25, gender: "female"},
  {name: "bob", age: 56, gender: "male"},
  {name: "dave", age: 45, gender: "male"},
  {name: "alice", age: 56, gender: "female"},
  {name: "adam", age: 15, gender: "male"}
]
```
The result should be:
```
[
  {:name=>"adam", :age=>15, :gender=>"male"},
  {:name=>"bob", :age=>15, :gender=>"male"},
  {:name=>"alice", :age=>25, :gender=>"female"},
  {:name=>"dave", :age=>45, :gender=>"male"},
  {:name=>"alice", :age=>56, :gender=>"female"},
  {:name=>"bob", :age=>56, :gender=>"male"}
]
```'},
                      {week: 4, day: 3, content: 'Use the `sort` and `map` methods to convert the array of hashes
```
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]
```
into an array of titles sorted by their ratings highest to lowest. The result should be:
```
["Bad Boys", "Die Hard", "The Chamber", "Fracture"]
```'},
                      {week: 4, day: 4, content: 'Find the needle by writing one line of code. As an example, if `haystack = [:hay, :needle, :hay]`, you\'d pull it out with: `haystack[1]`
```
haystack = {hay: [:hay, :hay, :hay, {hay: {hay: [:hay, {hay: [:hay, :hay, :needle]}, :hay, :hay, :hay]}}, :hay, :hay]}
```'},
                      {week: 4, day: 5, content: 'Return the missing letter from a given range of letters passed into the method as a string. If there is no missing letter, the method should return nil. bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.
```
p find_missing_letter("opqrsuv")  #=> "t"
p find_missing_letter("xyz")      #=> nil
```
'},
                      {week: 5, day: 1, content: 'Read about the Ruby ternary operator. Then refactor the code below using a ternary operator.
```
x = 74
if x > 10
  result = "big number"
else
  result = "small number"
end
puts result
```'},
                      {week: 5, day: 2, content: 'Use the ternary operator with the `map` method to convert the array of names
```
sentences = ["hello", "old friend", "today", "mac and cheese"]
```
into a new array of sentences where the first letter is capitalized only if there is more than one word in the sentence. The result should be:
```
["hello", "Old friend", "today", "Mac and cheese"]
```'},
                      {week: 5, day: 3, content: 'Use the ternary operator with the `reduce` method to find the minimum number in an array of numbers. (Note - do not use the `min` method for this exercise)'},
                      {week: 5, day: 4, content: 'Implement the `is_prime?` method which takes in a number and returns true if the number is prime and false if it is not. (A prime number is a number that is only divisible by itself and the number 1.)
```
p is_prime?(10)  #=> false
p is_prime?(11)   #=> true
p is_prime?(12)   #=> false
```
'},
                      {week: 5, day: 5, content: 'Write a method called `find_the_most_letter_a` which takes in an array of strings and returns the string with the most a’s.
```
p find_the_most_letter_a(["alphabet", "aardvark", "anarchy])  #=> "aardvark"
```'},
                      {week: 6, day: 1, content: 'Read about regular expressions. Then use the `gsub` method to replace all the numerical digits in the following string with an underscore.
```
address = "665 Clinton Lane, Wilkes Barre, PA 18702"
```
The result should be:
```
"___ Clinton Lane, Wilkes Barre, PA _____"
```'},
                      {week: 6, day: 2, content: 'Use the `scan` method with a regular expression to find every word in the following sentence that has 4 letters and starts with the letter "l" and ends with the letter "e".
```
sentence = "You can live like a king but make sure it isn\'t a lie."
```
The result should be:
```
["live", "like"]
```'},
                      {week: 6, day: 3, content: 'Use the `gsub` method with a regular expression to replace every word in the following sentence that starts with the letter "l" with the word "fake".
```
sentence = "You can live like a king but make sure it isn\'t a lie."
```
The result should be:
```
"You can fake fake a king but make sure it isn\'t a fake."
```'},
                      {week: 6, day: 4, content: 'Implement the highest_prime_number_under method below. It should accept a number as an argument and return the highest prime number under that number. For example, the highest prime number under 10 is 7.
```
p highest_prime_number_under(10)  #=> 7
p highest_prime_number_under(11)  #=> 7
p highest_prime_number_under(12)  #=> 11
```'},
                      {week: 6, day: 5, content: 'Write a method called `is_balanced?` that takes a string of brackets and checks whether they are balanced or not.
```
p is_balanced?("{[()]}") #=> true
p is_balanced?("{[([)]]}") #=> false
```'},
                      {week: 7, day: 1, content: 'Start with the array:
```
var array = [["a", "b", "z"], ["c", "d"], ["e", "f"], ["g", "h", "i", "j"]];
```
Use a JavaScript for loop within a for loop to take each of those letters and put them into a brand new one dimensional array. The result should be:
```
["a", "b", "z", "c", "d", "e", "f", "g", "h", "i", "j"]
```'},
                      {week: 7, day: 2, content: 'Start with the array of arrays
```
var meals = [["breakfast", "pancakes with maple syrup"], ["lunch", "BLT"], ["dinner", "salmon with lemon rice"]];
```
Each inner array’s first element describes the meal of the day (e.g. "breakfast"), and the second element in each inner array describes the particular meal (e.g. “pancakes with maple syrup”). Use a JavaScript for loop to create an object called `meals_object`. The keys should be the type of meal, and the values the specific type. The result should be:
```
{breakfast: "pancakes with maple syrup", lunch: "BLT", dinner: "salmon with lemon rice"}
```'},
                      {week: 7, day: 3, content: 'Write a function called `find_longest_word`, which will accept a string as a parameter (usually a sentence), and return another string that will be the longest word in that sentence.
```
console.log(find_longest_word("What is the longest word in this phrase?"));  // "longest"
```'},
                      {week: 7, day: 4, content: 'Write a function called `mutation`, which will accept two strings as a parameter and return true if all the letters from the second string are contained within the first string, and false otherwise.
```
console.log(mutation("burly", "ruby"));    // true
console.log(mutation("burly", "python"));  // false
```'},
                      {week: 7, day: 5, content: 'Write a function called `find_the_most_letter_a` which takes in an array of strings and returns the string with the most a’s.
```
console.log(find_the_most_letter_a(["alphabet", "aardvark", "anarchy]));  // "aardvark"
```'},
                      {week: 8, day: 1, content: 'Read about the JavaScript `map` method. Then refactor the code below using `map`.
```
var numbers = [1, 2, 4, 2];
var doubledNumbers = [];
for (var i = 0; i < numbers.length; i++) {
  doubledNumbers.push(numbers[i] * 2);
}
console.log(doubledNumbers);
```'},
                      {week: 8, day: 2, content: 'Use the `map` method to convert the array of objects
```
var items = [
  {id: 1, body: \'foo\'},
  {id: 2, body: \'bar\'},
  {id: 3, body: \'foobar\'}
];
```
into an array that only contains the ids. The result should look like:
```
[1, 2, 3]
```'},
                      {week: 8, day: 3, content: 'Read about the JavaScript `filter` method. Then refactor the code below using `filter`.
```
var numbers = [1, 2, 4, 2];
var evenNumbers = [];
for (var i = 0; i < numbers.length; i++) {
  if (numbers[i] % 2 === 0) {
    evenNumbers.push(numbers[i]);
  }
}
console.log(evenNumbers);
```'},
                      {week: 8, day: 4, content: 'Use the `filter` method combined with the `map` method to convert the array of objects
```
var movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
];
```
into an array of objects that only contain movie ids of the movies with the letter \'b\' in the title (case insensitive). The result should look like:
```
[2, 3]
```'},
                      {week: 8, day: 5, content: 'Use the `filter` method with the following array of objects
```
var movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
];
```
to create a new array of objects that only contain movies with a rating less than 4.0.'},
                      {week: 9, day: 1, content: 'Read about the JavaScript `reduce` method. Then refactor the code below using `reduce`.
```
var numbers = [1, 2, 4, 2];
var sum = 0;
for (var i = 0; i < numbers.length; i++) {
  sum += numbers[i];
}
console.log(sum);
```'},
                      {week: 9, day: 2, content: 'Use the `reduce` method to convert the array of objects
```
var fruits = [
  {name: "apple", color: "red"},
  {name: "banana", color: "yellow"},
  {name: "grape", color: "purple"}
];
```
into a single object where the keys are the names and the values are the colors. The result should look like:
```
{apple: "red", banana: "yellow", grape: "purple"}
```'},
                      {week: 9, day: 3, content: 'Read about the JavaScript `sort` method. Then sort the following array of objects by age.
```
people = [
  {name: "Saron", age: 34},
  {name: "Majora", age: 28},
  {name: "Danilo", age: 45}
]
```'},
                      {week: 9, day: 4, content: 'Use the methods `map` and `filter` with the following array of objects:
```
var doctors = [
    { number: 1,  actor: "William Hartnell",      begin: 1963, end: 1966 },
    { number: 2,  actor: "Patrick Troughton",     begin: 1966, end: 1969 },
    { number: 3,  actor: "Jon Pertwee",           begin: 1970, end: 1974 },
    { number: 4,  actor: "Tom Baker",             begin: 1974, end: 1981 },
    { number: 5,  actor: "Peter Davison",         begin: 1982, end: 1984 },
    { number: 6,  actor: "Colin Baker",           begin: 1984, end: 1986 },
    { number: 7,  actor: "Sylvester McCoy",       begin: 1987, end: 1989 },
    { number: 8,  actor: "Paul McGann",           begin: 1996, end: 1996 },
    { number: 9,  actor: "Christopher Eccleston", begin: 2005, end: 2005 },
    { number: 10, actor: "David Tennant",         begin: 2005, end: 2010 },
    { number: 11, actor: "Matt Smith",            begin: 2010, end: 2013 },
    { number: 12, actor: "Peter Capaldi",         begin: 2013, end: 2013 }    
];
```
and reshape the data for all doctors starting from the year 2000. The result should be:
```
[
    {doctorNumber: "#9",  playedBy: "Christopher Eccleston", yearsPlayed: 1},
    {doctorNumber: "#10", playedBy: "David Tennant",         yearsPlayed: 6},
    {doctorNumber: "#11", playedBy: "Matt Smith",            yearsPlayed: 4},
    {doctorNumber: "#12", playedBy: "Peter Capaldi",         yearsPlayed: 1}
] 
```
'},
                      {week: 9, day: 5, content: 'Use the methods `map`, `filter`, and `reduce` with the following array of objects: 
```
var items = [
  {title: "NoDBA", words: 561, tags: ["nosql", "people", "orm"], type: "book"},
  {title: "Infodeck", words: 1145, tags: ["nosql", "writing"], type: "book"},
  {title: "OrmHate", words: 1718, tags: ["nosql", "orm"], type: "book"},
  {title: "ruby", words: 1313, tags: ["ruby"], type: "article"},
  {title: "DDD_Aggregate", words: 482, tags: ["nosql", "ddd"], type: "book"}
];
```
and calculate the total amount of words for all items of type `"book"`. The result should be
```
3906
```'},
                      {week: 10, day: 1, content: 'Given an array of integers and a number, you need to write a program to find all the pairs in array whose sum is equal to the given number. Remember, array may contain both positive and negative numbers, so your solution should consider that.'},
                      {week: 10, day: 2, content: 'Given an an array with every element repeated twice except one, find the unique element. For example if given array is [1, 1, 2, 2, 3, 4, 4, 5, 5] then your program should return 3.'},
                      {week: 10, day: 3, content: 'Find kth smallest element in unsorted array. For example if given array is [1, 7, 30, 9, 14] and k = 2 then you need to find the 2nd smallest number in the array, which is 7.'},
                      {week: 10, day: 4, content: 'Given an array of integers, find the first repeating element in it. For example if given array is [10, 5, 3, 4, 3, 5, 6] then your program should return 3.'},
                      {week: 10, day: 5, content: 'Given an array of unsorted integers, find the largest two numbers. Try to solve the problem without sorting the array.'}
                      ])