# README

- Solución para manejar variantes en los productos.
![ecommerce](https://user-images.githubusercontent.com/83673595/149542699-3f8dc9ef-a0a4-452f-a4f9-735b5534b7ed.png)

<hr>

- Para agregar nuevos productos, se agregó el método scope en el modelo Categoy, que permite diferenciar categorias y subcategorias. De manera que el usuario, al ingresar nuevos productos pueda asignarle al producto solo una categoría y muchas subcategorias.

```
scope :all_parents, -> {where(category_id: nil)}

scope :all_children, -> {where.not(category_id: nil)}
```

<hr>

- Para el modelo OrderItem se modificó la relación que tenía con el modelo Product, ya que ahora se debe llenar el carro de compras con productos que tengan variantes (color, talla, stock)

```
class OrderItem < ApplicationRecord
  belongs_to :variant
  belongs_to :order
end
```
