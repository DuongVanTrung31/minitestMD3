package service;

import model.Product;

import java.util.ArrayList;

public class ProductServiceImpl implements IProductService {
    private final static ArrayList<Product> products;
    private final static ArrayList<Product> cartProducts;

    static {
        products = new ArrayList<>();
        cartProducts = new ArrayList<>();
        products.add(new Product(1,"Iphone 11 Pro",22000000, 8, "Apple"));
        products.add(new Product(2,"Iphone 12 Pro",27000000, 10, "Apple"));
        products.add(new Product(3,"Iphone 13 Pro",30000000, 6, "Apple"));
        products.add(new Product(4,"Samsung Galaxy Note 20",18000000, 15, "Samsung"));
        products.add(new Product(5,"Xiaomi",9000000, 20, "Xiaomi"));
    }


    @Override
    public ArrayList<Product> getAll() {
        return products;
    }

    @Override
    public ArrayList<Product> getCartProducts() {
        return cartProducts;
    }

    @Override
    public void add(Product p) {
        cartProducts.add(p);
    }

    public void deleteCart(Product p) {
        cartProducts.remove(p);
    }

    @Override
    public Product get(int id) {
        return products.stream().filter(product -> product.getId() == id).findAny().orElse(null);
    }

    @Override
    public void delete(Product p) {
        products.remove(p);
    }


    @Override
    public void edit(int id, Product p) {
        products.set(id,p);
    }

    @Override
    public ArrayList<Product> sortByPriceAsc() {
        products.sort((o1, o2) -> (int) (o1.getPrice() - o2.getPrice()));
        return products;
    }

    @Override
    public ArrayList<Product> sortByPriceDesc() {
        products.sort((o1, o2) -> (int) (o2.getPrice() - o1.getPrice()));
        return products;
    }

    @Override
    public double getTotalPrice(){
        double total = 0;
        for (Product p: cartProducts) {
            total += p.getPrice();
        }
        return total;
    }
}
