# SanctuaryMagnate
Live site available at: https://sanctuarymagnate.000webhostapp.com

This is a simple game written inside of a MySQL database.
It's probably not the most interesting game and it's pretty derivative of Zoo Tycoon, but it is written SQL.

# Commands
buyAnimals(Animal, Quantity) (e.g. buyAnimals('Gorilla', 5))

- Animals attract visitors to your park, but require food, staff, medicine, enclosure and generally cost money. Animals have different specific costs and attract guests to your park with different weights.


buyAds(Animal, Quantity) (e.g. buyAds('Gorilla', 5))

- Ads make an animal more popular while they're still running. Ads get deducted at a rate of 1 per week.

buyEnclosure(Animal, Quantity) (e.g. buyEnclosure('Gorilla', 1))

- Enclosures need to be bought before you can buy a type of animal. One enclosure can house 10 animals. Cost vary based on the animal.

buyFood(Animal, Quantity) (e.g. buyFood('Gorilla', 10))

- Each animal needs to each 1 food per week to survive. Cost vary based on the animal.

buyMedicine(Animal, Quantity) (e.g. buyMedicine('Gorilla', 5))

- Animals can randomly get sick. A sick animal has a chance to spread the illness, to die and to get better. If an animal is sick and has medicine
available it will consume the medicine. A sick animal that consumes medicine is less likely to spread illness or die and more likely to get better. 

hireStaff(Animal, Quantity) (e.g. hireStaff('Gorilla', 5))

- Staff need to be hired before you can buy a type of animal. One staff member can take care of 5 animals.

newGame()

- Resets the world. Generates 1000 new guests with random preferences. You start with one enclosure with 5 animals in it, chosen at random. Money is set to 5000.
 
nextWeek()

- Advances the week. Simulates if each guest would like to come to the park this week. Simulates disease. Deducts costs.

# Animals
List of available animals:
- Lion
- Elephant
- Gorilla
- Panda
- Parrot
- Crocodile
- Zebra
- Giraffe
- Orangutan
