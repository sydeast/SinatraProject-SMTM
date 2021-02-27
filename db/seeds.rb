users_seed = [
    {
        name: "Amber",
        email: "amber@atk.com",
        password: "P3ts!"
    },
    {
        name: "Chungha",
        email: "chungie93@gmail.com",
        password: "P3ts!"
    },
    {
        name: "DK",
        email: "dkdk@atk.com",
        password: "P3ts!"
    },
    {
        name: "Jennie",
        email: "09jenn@gmail.com",
        password: "P3ts!"
    },
    {
        name: "Kai",
        email: "kaikim@atk.com",
        password: "P3ts!"
    },
    {
        name: "Lisa",
        email: "ang94f@atk.com",
        password: "P3ts!"
    },
    {
        name: "Yesung",
        email: "yesus_0123@gmail.com",
        password: "P3ts!"
    }
]

pets_seed = [
    {
        name: "JackJack",
        age: "7",
        type: "Dog",
        breed: "Chihuahua",
        gender: "male",
        neutered_spayed: "true",
        medical_conditions: "na",
        weight: "6",
        wunits: "lbs",
        owner: "Amber"
    },
    {

        name: "Tuna",
        age: "12",
        type: "Reptile",
        breed: "Russian Blue",
        gender: "Unknown",
        neutered_spayed: "true",
        medical_conditions: "heart murmmur",
        weight: "2",
        wunits: "lbs",
        owner: "Amber"
    },
    {
        name: "Bambi",
        age: "3",
        type: "Dog",
        breed: "Pom",
        gender: "female",
        neutered_spayed: "false",
        medical_conditions: "",
        weight: "4",
        wunits: "lbs",
        owner: "Chungha"
    },
    {
        name: "CoCo",
        age: "11",
        type: "Bird",
        breed: "Parrot",
        gender: "male",
        neutered_spayed: "false",
        medical_conditions: "",
        weight: "2.26",
        wunits: "kg",
        owner: "DK"
    },
    {
        name: "Kuma",
        age: "6",
        type: "Reptile",
        breed: "Python",
        gender: "female",
        neutered_spayed: "fale",
        medical_conditions: "allergies",
        weight: "272",
        wunits: "kg",
        owner: "Jennie"
    },
    {
        name: "Kai",
        age: "30",
        type: "Other",
        breed: "Mustang",
        gender: "male",
        neutered_spayed: "false",
        medical_conditions: "funny bone",
        weight: "1587.57",
        wunits: "kg",
        owner: "Jennie"
    },
    {
        name: "Monggu",
        age: "12",
        type: "Dog",
        breed: "Goldendoodle",
        gender: "male",
        neutered_spayed: "true",
        medical_conditions: "",
        weight: "30",
        wunits: "lbs",
        owner: "Kai"
    },
    {
        name: "Jjangah",
        age: "10",
        type: "Dog",
        breed: "Goldendoodle",
        gender: "female",
        neutered_spayed: "true",
        medical_conditions: "",
        weight: "28",
        wunits: "lbs",
        owner: "Kai"
    },
    {
        name: "Jjanggu",
        age: "10",
        type: "Dog",
        breed: "Goldendoodle",
        gender: "female",
        neutered_spayed: "true",
        medical_conditions: "",
        weight: "28.78",
        wunits: "lbs",
        owner: "Kai"
    },
    {
        name: "Leo",
        age: "9",
        type: "Cat",
        breed: "Domestic Shorthair",
        gender: "male",
        neutered_spayed: "true",
        medical_conditions: "",
        weight: "8",
        wunits: "lbs",
        owner: "Lisa"
    },
    {
        name: "Luca",
        age: "6",
        type: "Cat",
        breed: "Persian",
        gender: "female",
        neutered_spayed: "true",
        medical_conditions: "",
        weight: "9",
        wunits: "lbs",
        owner: "Lisa"
    },
    {
        name: "Forever Alone",
        age: "23",
        type: "Reptile",
        breed: "",
        gender: "female",
        neutered_spayed: "false",
        medical_conditions: "",
        weight: "1",
        wunits: "kg",
        owner: "Yesung"
    }

]

users_seed.each { |user|
  User.create(
      name: user[:name],
      email: user[:email],
      password: user[:password]
    )
}

pets_seed.each { |pet|
    new_pet = Pet.new(
        name: pet[:name],
        age: pet[:age],
        type: pet[:type],
        breed: pet[:breed],
        gender: pet[:gender],
        neutered_spayed: pet[:neutered_spayed],
        medical_conditions: pet[:medical_conditions],
        weight: pet[:weight],
        wunits: pet[:wunits],
    )
    owner = User.find_by(name: pet[:owner])
    owner.pets << new_pet
}