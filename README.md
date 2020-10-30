# word2dictMatcher
Using this library, you will be able to compare one word, or a complete sentence of strings to some other sentences.
The library will return only the sentence with the most words matched from the search string.

## How to use:
To use this library, you will have to define your data first in the program or write it in a separate file and then import it to the program.
Data is a list of string which contains sentences that you want to be matched against your search string.
It looks something like:
```elm
data : List String
data =
    [ "He watched the dancing piglets with panda bear tummies in the swimming pool"
    , "I purchased a baby clown from the Russian terrorist black market."
    , "He was the type of guy who liked Christmas lights on his house in the middle of July."
    , "If any cop asks you where you were, just say you were visiting Kansas."
    , "Happiness can be found in the depths of chocolate pudding."
    ]
```
Next you will have to define your search string. You can define it as below or you can use an input box based on your needs.
```elm
searchString : List String
searchString =
    [ "He went back to the house to see what had been recorded and was shocked at what he saw." ]
```
After you defined your data and search string, two more things needs to be defined in your program.
1. Make data dictionary:
```elm
dataDict =
    data |> Word2DictMatcher.sentenceHistograms
```
2. Make search string dictionary
```elm
searchDict =
    Word2DictMatcher.wordsDict searchString
```
And you are good to GO!
```elm
main = 
       case Word2DictMatcher.findRelevantDict searchDict dataDict of 
       Nothing ->
           text "Sorry, there is no words in the bag :)"
       Just bestDict ->
           bestDict 
               |> Debug.toString
               |> text
```

There is a complete example included in the examples folder, to show how to use this package.
