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
    "first_name": "Eren",
    "last_name": "Jaeger"
  },
  {
    "id": 2,
    "first_name": "Mikasa",
    "last_name": "Ackermann"
  }
]
```
```
GET /api/v1/characters/1
```
```
{
  "id": 1,
  "first_name": "Eren",
  "last_name": "Jaeger",
  "species": "Intelligent Titan",
  "age": 19,
  "height": 15,
  "residence": "Wall Rose",
  "status": "Alive",
  "alias": "Attack Titan"
}
```
