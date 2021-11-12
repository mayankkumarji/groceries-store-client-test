User.create(email: 'test@local.com', password: '12345678', password_confirmation: '12345678', first_name: 'John', last_name: 'Doe')
Category.create(
  [
    { name: 'Dairy', description: 'It contains cheeses, eggs, milk, yogurt, butter, etc' },
    { name: 'Bread', description: 'It contains sandwich loaves, dinner rolls, tortillas, bagels' }
  ]
)

Product.create(
  [
    { name: 'Cheese',
      description: 'Cheese is a dairy product, derived from milk and produced in wide ranges of flavors.',
      category_id: 1,
      price: '25.32',
      sku: 'CHE-MIL-20' },
    { name: 'Dinner rolls',
      description: 'Soft dinner rolls only need 2 sets of rising times and a handy trick to get your dough rising quicker than normal.',
      category_id: 2,
      price: '5.02',
      sku: 'DIN-ROL-25' }
  ]
)
