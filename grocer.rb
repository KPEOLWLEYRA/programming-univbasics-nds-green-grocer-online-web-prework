def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0 
  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
      puts collection[index]
    end 
      index +=1 
    end 
    nil
end



def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = [] 
  new_cart_count = 0 
  i = 0 
  while i < cart.length do 
    name_of_item = cart[i]
    item_find = find_item_by_name_in_collection(name_of_item[:item], new_cart)
    if item_find 
      item_find[:count] += 1 
    else 
      new_cart << cart[i]
      new_cart[new_cart_count][:count] = 1
      new_cart_count += 1 
    end 
    i += 1 
  end 
  new_cart
end

#name = item_find

# def update_cart(cart, name)
#   name_of_item = cart[i]
#   cart<< name_of_item
#   updated_name = "#{name_of_item[:item]} W/COUPONS"
#   updated_count_orig = name_of_item[:count] - item_find[:num]
#   updated_count_coup = name_of_item[:count] - updated_count_orig
#   updated_price = item_find[:cost] / name[:num]
#   name_of_item[:count] = updated_count_orig
#   cart[-1][:item] = updated_name
#   cart[-1][:count] = updated_count_coup
#   cart[-1][:price] = updated_price
#   cart
# end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i  = 0 
  while i < cart.length do 
    cart_item = cart[i][:item]
    index = 0 
    while index < coupons.length do 
      coupon_item = coupons[index][:item]
      
      if cart_item == coupon_item
        if cart[i][:count] >= coupons[index][:num]
          coupon = {
            :item => "#{coupon_item} W/COUPON",
            :price => coupons[index][:cost] / coupons[index][:num],
            :clearance => cart[i][:clearance],
            :count => (cart[i][:count] + coupons[index][:num]) - cart[i][:count]
          }
          cart << coupon 
          cart[i][:count] = cart[i][:count] - coupons[index][:num]
        end 
      end 
      index +=1 
    end 
    i += 1 
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < cart.length do 
    if cart[i][:clearance]
      cart[i][:price] = (cart[i][:price] * 0.8).round(2)
    end
    i += 1 
  end
    cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  consolidated_cart = consolidate_cart(cart)
  apply_coupons(consolidated_cart, coupons)
  apply_clearance(consolidated_cart)
  i = 0 
  total = 0 
  while i < consolidated_cart.length do 
    total += consolidated_cart[i][:price] * consolidated_cart[i][:count]
    i += 1 
  end 
  if total > 100
    total = total * 0.9
  end
  total 
  
end
