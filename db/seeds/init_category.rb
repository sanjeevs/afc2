Account.delete_all
lowes = Account.create! name: 'Lowes Foods'

Category.delete_all
retail = Category.create! name: 'Retail'
Category.create! name: 'Ecommerce'
Category.create! name: 'FoodBox'
Category.create! name: 'Event'
Category.create! name: 'Person'

Customer.all.each do |customer|
  customer.category_id = retail.id
  if customer.name =~ /^Lowe/
    customer.account_id = lowes.id
    customer.save!
  end
end
