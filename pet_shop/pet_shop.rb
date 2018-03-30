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
