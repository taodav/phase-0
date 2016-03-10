

# Person 4
i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2 ]

def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|item| item.include?(thing_to_delete)}
end

my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
  "Annabelle" => 0, "Ditto" => 3}

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end

# Identify and describe the Ruby method(s) you implemented.
# The two methods I used were delete_if and delete. They're pretty self explanatory:
# delete_if will delete an item if a certain condition is met. That condition is input in the code block
# following the method.
# delete (the hash method) will delete an object (the one with the pertaining key) if the variable inside 
# the delete method matches a key.

