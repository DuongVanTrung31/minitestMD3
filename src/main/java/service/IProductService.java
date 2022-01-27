package service;

import model.Product;

import java.util.ArrayList;

public interface IProductService {
    ArrayList<Product> getAll();
    ArrayList<Product> getCartProducts();
    void deleteCart(Product p);
    void add(Product p);
    Product get(int id);
    void delete(Product p);
    void edit(int id, Product p);
    ArrayList<Product> sortByPriceAsc();
    ArrayList<Product> sortByPriceDesc();
    double getTotalPrice();
}
