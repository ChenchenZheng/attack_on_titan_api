# Attack on Titan API
![](https://img.shields.io/github/issues/ChenchenZheng/attack_on_titan_api)
![](https://img.shields.io/github/license/ChenchenZheng/attack_on_titan_api)
![](https://travis-ci.com/ChenchenZheng/attack_on_titan_api.svg?branch=master)


[AttackOnTitanApi](https://api-attack-on-titan.herokuapp.com/) is a free, easy-to-use and open-source API for anime Attack on Titan built with Ruby on Rails.
## Usage
[AttackOnTitanApi](https://api-attack-on-titan.herokuapp.com/) provides a list of all characters and titans in anime Attack on Titan.

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
    "species": "Armin Arlert[2]",
    "age": null,
    "height": 15,
    "residence": "Alive",
    "status": "Soldier",
    "alias": "Colossal Titan"
    },
    {
    "id": 2,
    "first_name": "Mikasa",
    "last_name": "Ackermann",
    "species": "Human",
    "age": 15,
    "height": 0,
    "residence": " Scout RegimentSpecial Operations Squad",
    "status": " 104th Cadet CorpsElite Squad",
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
  "species": "Eren Yeager[11]",
  "age": null,
  "height": 15,
  "residence": "Alive",
  "status": "Jaegerists",
  "alias": "Suicidal Maniac (死に急ぎ野郎 Shi ni isogi yarō?)[1]Titan boy (巨人の小僧 Kyojin no kozō?)[2]Attack Titan (進撃の巨人 Shingeki no Kyojin?)[3]Mysterious Titan (謎の巨人 Nazo no Kyojin?)[4]Berserk Titan (巨人が暴れてる Kyojin ga Abareteru?, lit. Titan being rampant)[5]/Crazy-berserker Titan[6]Founding Titan (始祖の巨人 Shiso no Kyojin?)[7]Founder (始祖 Shiso?)Mister Kruger (クルーガーさん Kurūgā-san?)[8]Usurper (簒奪者 Sandatsu-sha?)[9]War Hammer Titan"
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
    "other_names": "Coordinate" (座標 Zahyō), Royal family's power (王家の力 Ōke no chikara), "Scream" (叫び Sakebi), "God" (神 Kami)",
    "abilities": "Titan behavorial control, Memory manipulation of Subjects of Ymir",
    "current_inheritor": "Eren Jaeger",
    "former_inheritors": "Grisha Jaeger, Frieda Reiss, Uri Reiss, Rod and Uri's father, Karl Fritz, Ymir Fritz",
    "allegiance": "Eldia"
    },
    {
    "id": 2,
    "name": "Armored Titan",
    "other_names": "Armor" (鎧 Yoroi), "Marley's Shield" (マーレの盾 Māre no tate)",
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
    "other_names": "Coordinate" (座標 Zahyō), Royal family's power (王家の力 Ōke no chikara), "Scream" (叫び Sakebi), "God" (神 Kami)",
    "abilities": "Titan behavorial control, Memory manipulation of Subjects of Ymir",
    "current_inheritor": "Eren Jaeger",
    "former_inheritors": "Grisha Jaeger, Frieda Reiss, Uri Reiss, Rod and Uri's father, Karl Fritz, Ymir Fritz",
    "allegiance": "Eldia"
    }
]
```
## Using Fandom Content
This API uses material from the [list of characters/Anime](https://attackontitan.fandom.com/wiki/List_of_characters/Anime) on the Attack on Titan wiki Fandom website and is licensed under the [Creative Commons Attribution-Share Alike License](https://creativecommons.org/licenses/by-sa/3.0/).
