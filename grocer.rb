require 'pry'

def find_item_by_name_in_collection(name, collection)
  i = 0 
  while i < collection.length do 
    if name == collection[i][:item]
      return collection[i]
    end
    i += 1 
  end
end

def consolidate_cart(array)
  new_cart = []
  puts "initial array is #{array}"
  i = 0 
  j = 0 
  while i < array.length do 
    #array[i][:count] = 1 
    name = find_item_by_name_in_collection(array[i][:item], new_cart)
      if name   
        name[:count] += 1 
      else 
      new_cart.push(array[i])
      new_cart[j][:count] = 1 
      j += 1 
    end
      i += 1 
  end 
  puts "new cart is #{new_cart} and array is #{array}"
  new_cart
end
    
# items = [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
#   {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
# ]
    
# coupons = [
#       {:item => "AVOCADO", :num => 2, :cost => 5.00},
#       {:item => "BEER", :num => 2, :cost => 20.00},
#       {:item => "CHEESE", :num => 3, :cost => 15.00}
#     ]
    
# puts coupons[0][:num]
# puts items[0][:count]

# def apply_coupons(array_cart, array_coupon)
#   new_cart = []
#   k = 0 
#   i = 0 
#   while i < array_cart.length do 
#     name_cart = array_cart[i][:item]
#     j = 0 
#     while j < array_coupon.length do 
#       name_coup = array_coupon[j][:item]
#       if name_cart == name_coup && array_cart[i][:count] >= array_coupon[j][:num]
#         array_cart << array_cart[i]
#         array_cart[-1][:item] = "#{name_cart} W/COUPON"
#         array_cart[-1][:count] = array_coupon[j][:num]
#         array_cart[-1][:price] = array_coupon[j][:cost] / array_coupon[j][:num]
#         array_cart[i][:count] -= array_coupon[j][:num]
#         puts " i = #{i}  j= #{j}  k=#{k}  array cart at end of if #{array_cart}"
#         # k += 1 
#       end
#       j +=1 
#     end
#     i += 1 
#   end 
#   #array_cart.concat(new_cart)
#   puts "array cart at end #{array_cart}"
#   array_cart
# end 
    
      # ^^^ 

        
    
    
#   i = 0 
#   j = 0 
#   new_cart = []
#   while i < array_coupon.length do 
#     name = array_coupon[i][:item]
#     name_cart_array = find_item_by_name_in_collection(name, array_cart)
#     new_price = array_coupon[i][:cost] / array_coupon[i][:num]
#     new_num = array_coupon[i][:num]
#     #new_count = name_cart_array[:count] - array_coupon[i][:num]
#     if name_cart_array  && name_cart_array[:count] >= array_coupon[i][:num]
#       new_cart.push(name_cart_array)
#       new_count = name_cart_array[:count] - array_coupon[i][:num]
#       new_cart[j][:item] = "#{name} W/COUPON"
#       new_cart[j][:count] = array_coupon[i][:num]
#       name_cart_array[:count] = new_count
#       new_cart[j][:price] = new_price
#       puts "after if statements, /nnew array = #{new_cart} /n array_cart= #{array_cart}"
#       j += 1 
#     end 
#     #puts "after if statements, before next loop, /nnew array = #{new_cart} /n array_cart= #{array_cart}"
#     i += 1 
#   end
#   new_cart_cons = consolidate_cart(new_cart)
#   array_cart.concat(new_cart_cons)
#   array_cart
# end 
        
        
    
    # array_item.map do |j|
    #   if j[:item] == name && j[:count] >= array_coupon[i][:num]
    #     k = 0 
    #     new_cart.push(j)
    #     j[:count] -= num_coupon 
    #     new_cart[k][:count] = array_coupon[i][:num]
    #     new_cart[k][:price] = new_price
    #     new_cart[k][:item] = "#{name} W/COUPON"
    #     puts new_cart
    #     k+=1 
#       end 
#     end 
#     i += 1 
#   end 
#   new_cart_cons = consolidate_cart(new_cart)
#   array_item.concat(new_cart_cons)
#   puts array_item
#   array_item
# end
  
#apply_coupons(consolidate_cart(items), coupons)   
    



# def find_item_by_name_in_collection(name, collection)
#   # Implement me first!
#   #
#   # Consult README for inputs and outputs
#   index = 0 
#   while index < collection.length do
#     if collection[index][:item] == name
#       return collection[index]
#       puts collection[index]
#     end 
#       index +=1 
#     end 
#     nil
# end



# def consolidate_cart(cart)
#   # Consult README for inputs and outputs
#   #
#   # REMEMBER: This returns a new Array that represents the cart. Don't merely
#   # change `cart` (i.e. mutate) it. It's easier to return a new thing.
#   new_cart = [] 
#   new_cart_count = 0 
#   i = 0 
#   while i < cart.length do 
#     name_of_item = cart[i]
#     item_find = find_item_by_name_in_collection(name_of_item[:item], new_cart)
#     if item_find 
#       item_find[:count] += 1 
#     else 
#       new_cart << cart[i]
#       new_cart[new_cart_count][:count] = 1
#       new_cart_count += 1 
#     end 
#     i += 1 
#   end 
#   new_cart
# end

# #name = item_find

# # def update_cart(cart, name)
# #   name_of_item = cart[i]
# #   cart<< name_of_item
# #   updated_name = "#{name_of_item[:item]} W/COUPONS"
# #   updated_count_orig = name_of_item[:count] - item_find[:num]
# #   updated_count_coup = name_of_item[:count] - updated_count_orig
# #   updated_price = item_find[:cost] / name[:num]
# #   name_of_item[:count] = updated_count_orig
# #   cart[-1][:item] = updated_name
# #   cart[-1][:count] = updated_count_coup
# #   cart[-1][:price] = updated_price
# #   cart
# # end

# def apply_coupons(cart, coupons)
#   # Consult README for inputs and outputs
#   #
#   # REMEMBER: This method **should** update cart
#   i  = 0 
#   while i < cart.length do 
#     cart_item = cart[i][:item]
#     index = 0 
#     while index < coupons.length do 
#       coupon_item = coupons[index][:item]
      
#       if cart_item == coupon_item
#         if cart[i][:count] >= coupons[index][:num]
#           coupon = {
#             :item => "#{coupon_item} W/COUPON",
#             :price => coupons[index][:cost] / coupons[index][:num],
#             :clearance => cart[i][:clearance],
#             :count => (cart[i][:count] + coupons[index][:num]) - cart[i][:count]
#           }
#           cart << coupon 
#           cart[i][:count] = cart[i][:count] - coupons[index][:num]
#         end 
#       end 
#       index +=1 
#     end 
#     i += 1 
#   end
#   puts "cart is #{cart} coupons is #{coupons}"
#   cart
# end

# def apply_clearance(cart)
#   # Consult README for inputs and outputs
#   #
#   # REMEMBER: This method **should** update cart
#   i = 0 
#   while i < cart.length do 
#     if cart[i][:clearance]
#       cart[i][:price] = (cart[i][:price] * 0.8).round(2)
#     end
#     i += 1 
#   end
#     cart
# end

# def checkout(cart, coupons)
#   # Consult README for inputs and outputs
#   #
#   # This method should call
#   # * consolidate_cart
#   # * apply_coupons
#   # * apply_clearance
#   #
#   # BEFORE it begins the work of calculating the total (or else you might have
#   # some irritated customers
#   consolidated_cart = consolidate_cart(cart)
#   apply_coupons(consolidated_cart, coupons)
#   apply_clearance(consolidated_cart)
#   i = 0 
#   total = 0 
#   while i < consolidated_cart.length do 
#     total += consolidated_cart[i][:price] * consolidated_cart[i][:count]
#     i += 1 
#   end 
#   if total > 100
#     total = total * 0.9
#   end
#   total 
  
# # end

def apply_coupons(cart, coupons)
  #puts "cart is #{cart} coupons is #{coupons}"
  new_cart = []
  k= 0 
  cart.map do |i|
    found_item = find_item_by_name_in_collection(i[:item], coupons)
    if found_item && i[:count] >= found_item[:num]
      new_cart[k].replace(i)
      i[:count] -= found_item[:num]
      new_cart[k][:item] = "#{new_cart[k][:item]} W/COUPONS"
      k+= 1 
    end
  end
  puts "cart is #{cart} newcart is #{new_cart}"
cart 
end


# def apply_coupons(cart, coupons)
#   #puts "cart is #{cart} coupons is #{coupons}"
#   cart.map do |i|
#     found_item = find_item_by_name_in_collection(i[:item], coupons)
#     if found_item && i[:count] >= found_item[:num]
#       item_w_coupon = {
#         :item => "#{found_item[:item]} W/COUPON",
#         :price => found_item[:cost] / found_item[:num],
#         :clearance => i[:clearance],
#         :count => found_item[:num]
#       }
#       i[:count] -= found_item[:num]
#       cart.push(item_w_coupon)
#     end
#   end
#   cart
# end


#apply_coupons(items, coupons)