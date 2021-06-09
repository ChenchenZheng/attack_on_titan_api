# Attack on Titan API
This is a free, easy-to-use and open-source API for anime Attack on Titan built with Ruby and Ruby on Rails.
## Usage
[AttackOnTitanApi](https://api-attack-on-titan.herokuapp.com/) provides a list of all characters in anime Attack on Titan.

Here are some examples:
```
GET /api/v1/characters
```
```
[
  {
    "id": 1,
    "first_name": "Armin",
    "last_name": "Arlelt"
  },
  {
    "id": 2,
    "first_name": "Mikasa",
    "last_name": "Ackermann"
  },
  {
    "id": 3,
    "first_name": "Hange",
    "last_name": "Zoë"
  },
  {
    "id": 4,
    "first_name": "Jean",
    "last_name": "Kirschtein"
  },
  {
    "id": 5,
    "first_name": "Conny",
    "last_name": "Springer"
  },
  {
    "id": 6,
    "first_name": "Daz",
    "last_name": "Daz"
  },
  {
    "id": 7,
    "first_name": "Buchwald",
    "last_name": "Buchwald"
  },
  {
    "id": 8,
    "first_name": "Levi",
    "last_name": "Ackermann"
  }
]
```
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
## Using Fandom Content
This API uses material from the [list of characters/Anime](https://attackontitan.fandom.com/wiki/List_of_characters/Anime) on the Attack on Titan wiki Fandom website and is licensed under the [Creative Commons Attribution-Share Alike License](https://creativecommons.org/licenses/by-sa/3.0/).
