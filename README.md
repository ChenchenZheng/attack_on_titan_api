# Attack on Titan API
![](https://img.shields.io/github/issues/ChenchenZheng/attack_on_titan_api)
![](https://img.shields.io/github/license/ChenchenZheng/attack_on_titan_api)
![](https://travis-ci.com/ChenchenZheng/attack_on_titan_api.svg?branch=master)


[AttackOnTitanApi](https://api-attack-on-titan.herokuapp.com/) is a free, easy-to-use and open-source API for anime Attack on Titan built with Ruby on Rails. It provides a list of all characters and titans in anime Attack on Titan.
## Usage
Here are some examples:
### If you want to get all characters
```
GET /api/v1/characters
```
```
 [
  {
    "id": 1,
    "first_name": "Armin",
    "last_name": "Arlelt",
    "species": "Human, Intelligent Titan",
    "age": 19,
    "height": 60,
    "residence": "Wall Rose",
    "status": "Alive",
    "alias": "Colossal Titan"
    },
    {
     "id": 2,
     "first_name": "Mikasa",
     "last_name": "Ackermann",
     "species": "Human",
     "age": 19,
     "height": null,
     "residence": "Wall Rose",
     "status": "Alive",
     "alias": null
    },
    // ...
]
```
### If you want to get a single character
```
GET /api/v1/characters/176
```
```
{
  "id": 176,
  "first_name": "Eren",
  "last_name": "Jaeger",
  "species": "Human, Intelligent Titan",
  "age": 19,
  "height": 15,
  "residence": "Wall Rose",
  "status": "Alive",
  "alias": "Suicidal Maniac, Titan boy, Attack Titan, Mysterious Titan, Berserk Titan, Titan being rampant, Founding Titan, Founder, Mister Kruger, Usurper, War Hammer Titan"
  }
```

### If you want to get all nine titans
```
GET /api/v1/titans
```
```
[
  {
    "id": 1,
    "name": "Founding Titan",
    "other_names": "Coordinate, Royal family's power, Scream, God",
    "abilities": "Titan behavorial control, Memory manipulation of Subjects of Ymir",
    "current_inheritor": "Eren Jaeger",
    "former_inheritors": "Grisha Jaeger, Frieda Reiss, Uri Reiss, Rod and Uri's father, Karl Fritz, Ymir Fritz",
    "allegiance": "Eldia"
    },
    {
    "id": 2,
    "name": "Armored Titan",
    "other_names": "Armor, Marley's Shield",
    "abilities": "Armored skin, Hardening",
    "current_inheritor": "Reiner Braun",
    "former_inheritors": null,
    "allegiance": "Marley"
    },
    // ...
]
```
### If you want to get a single titan
```
GET /api/v1/titans/1
```
```
[
  {
    "id": 1,
    "name": "Founding Titan",
    "other_names": "Coordinate, Royal family's power, Scream, God",
    "abilities": "Titan behavorial control, Memory manipulation of Subjects of Ymir",
    "current_inheritor": "Eren Jaeger",
    "former_inheritors": "Grisha Jaeger, Frieda Reiss, Uri Reiss, Rod and Uri's father, Karl Fritz, Ymir Fritz",
    "allegiance": "Eldia"
    }
]
```
## Using Fandom Content
This API uses material from the [list of characters/Anime](https://attackontitan.fandom.com/wiki/List_of_characters/Anime) on the Attack on Titan wiki Fandom website and is licensed under the [Creative Commons Attribution-Share Alike License](https://creativecommons.org/licenses/by-sa/3.0/).
