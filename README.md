# CATZ VS DOGGEZ
     In this lab we will practice object relationships using the classic battle between cats and dogs.

  ![Alt Text](https://media3.giphy.com/media/XxMTS8OOwl59C/giphy.gif)

  ### Before you start make sure you run `bundle install`

### Domain: 
1. Dogs Model, which has the following attributes:
    - name:string
    - breed:string
    - skill:string ("Bite" = Rock, "Tail Swipe" = Paper, "Scratch" = Scissors)
    - age:integer
    - good_boi:boolean
2. Cats Model, which has the following attributes:
    - name:string
    - breed:string
    - skill:string ("Bite" = Rock, "Tail Swipe" = Paper, "Scratch" = Scissors)
    - age:integer
    - furball:boolean
3. Battles Model, which has the following attributes:
   - ??? (Think about what a battle needs)
   - ??? (Think about what a battle needs)
   - date:string (YYYY-MM-DD)
   - winning_side:???

### Deliverables:
-------------------------------------
  #### 1. Dogs:

  - Needs to initialize with a name, this can change.

  - Needs to initialize with a breed, this CANNOT change.

  - Needs to initialize with a skill, this CANNOT change.

  - Needs to initialize with an age, this can change.

  - Needs to initialize if the dog is a good_boi or not. This can change!

  - `#bark` this method should puts a string like this: "Rocky says woof woof!"

  - `#have_an_accident` this method puts a string of "💩" and changes the good_boi to false if good_boi is true.

  - `#dog_years `this method returns the dogs age in dog years. (the age * 7)

  - `#attack_cat`, this method initiates a new battle, so it needs a Cat, and a Dog

  - `#krushed_kitties`, this method returns an array of cats that this dog defeated in battle.

  - `.all`, this method returns all the dog instances as an array.

  - `.most_common_skill`, this method returns the most common skill as a string.

  - `.good_bois`, this method returns an array of all the good bois.

  - `.bad_bois`, this method returns an array of all the bad bois.

  ####  2. Cats: 

  - Needs to initialize with a name. This can change.
  
  - Needs to initialize with a breed. This CANNOT change.

  - Needs to initialize with a skill. This can change.

  - Needs to initialize with an age. This can change.

  - Needs to initialize with a furball. They can cough it up, and/or swallow a new one!

  - `#meow` this method should puts a string like this: "Felix says meow!"

  - `#cough_up_furball`, if the cat has a furball, it coughs it up. 

  - `#lick_fur`, if the cat doesn't have a furball, it does now.

  - `#attack_dog`, this method initiates a new battle, so it needs a Cat, and a Dog.

  - `#destroyed_doggos`, this method returns an array of dogs that this cat defeated in battle.

  - `.all`, this method returns all the dog instances as an array.

  - `.most_common_skill`, this method returns the most common skill as a string.

  - `.all_by_age`, this method returns an array of the cats sorted by age.


  ####  3. Battle: 

  - Needs to initialize with a date that the battle took place. This CANNOT change.
  - Needs to have a winner, this is determined by the skills that are used. This should be implemented in the relevant dog/cat method.
  - `.all`, returns all the battles in an array.
  - `.whos_winning`, return either a string of "Dogs with {number of victories} victories out of {total number of battles}", or "Cats with {number of victories} victories out of {total number of battles}", depending on which side is winng the most battles.  


![Alt Text](https://media2.giphy.com/media/IvNB2vcu2B3lC/giphy.gif)