def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num)
  pet_shop[:admin][:pets_sold] = num
end

def stock_count(pet_shop)
  return pet_shop[:pets].size()
end

def pets_by_breed(pet_shop, breed)
  breed_matches = []
  for each_pet in pet_shop[:pets]
    breed_matches.push(each_pet) if each_pet[:breed] == breed
  end
  return breed_matches
end

def find_pet_by_name(pet_shop, name)
  for each_pet in pet_shop[:pets]
    return each_pet if each_pet[:name] == name
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for each_pet in pet_shop[:pets]
    if each_pet[:name] == name
      pet_shop[:pets].delete(each_pet)
    end
  end
  return pet_shop[:pets]
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].size()
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  pet_value = new_pet[:price]
  customer_money = customer[:cash]
  if customer_money >= pet_value
    return true
  else
    return false
  end
end

def sell_pet_to_customer(pet_shop, pet, customer)
  # if the pet exists & the customer can afford the pet
  if pet != nil && customer_can_afford_pet(customer, pet)
    # add the pet to the customers pet array
    add_pet_to_customer(customer, pet)
    # increase the number of pets sold of the petshop by 1
    increase_pets_sold(pet_shop, 1)
    # increase the amount of pet shop money by the value of the pet
    add_or_remove_cash(pet_shop, pet[:price])
  end
end
