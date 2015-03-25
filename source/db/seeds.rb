kev = User.create(email: "Kevin", password: "123", spiritanimal: "/preymantis.jpg", spiritanimalname:"preymantis")
max = User.create(email: "Max", password: "123", spiritanimal: "/gorilla.jpg", spiritanimalname: "gorilla")

record1 = Record.create(score: 2, user_id: max.id)
record2 = Record.create(score: 3, user_id: kev.id)
