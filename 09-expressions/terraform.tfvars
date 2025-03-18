numbers_list = [1, 2, 3, 4, 5]

numbers_map = {
  "one"   = 1
  "two"   = 2
  "three" = 3
  "four"  = 4
  "five"  = 5
}

objects_list = [{
  firstname = "John"
  lastname  = "Smith"
  },
  {
    firstname = "Jane"
    lastname  = "Smith"
  },
  {
    firstname = "Jimbo"
    lastname  = "Ireland"
  }
]

# NOTE: Maps cannot have duplicates
users = [{
  role     = "admin"
  username = "john"
  },
  {
    role     = "developer",
    username = "jane"
  },
  {
    role     = "auditor",
    username = "jimbo"
  },
  {
    role     = "auditor",
    username = "jane"
}, ]

user_to_output = "jane"