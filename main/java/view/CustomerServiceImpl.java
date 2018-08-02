package view;

import model.Customer;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerServiceImpl implements CustomerService {
    private  static Map<Integer, Customer> khachhang = new HashMap<>();;
    static{

        khachhang.put(1, new Customer(1, "John", "john@gmail.com", "HaNoi"));
        khachhang.put(2, new Customer(2, "Mary", "mary@gmail.com", "LaiChau"));
        khachhang.put(3, new Customer(3, "Nghiem", "nghiem@gmail.com", "QuangNinh"));
        khachhang.put(4, new Customer(4, "Manh", "manh@gmail.com", "TpHoChiMinh"));
        khachhang.put(5, new Customer(5, "Tra My", "tramy@gmail.com", "HungYen"));
        khachhang.put(6, new Customer(6, "Bob", "bob@gmail.com", "CaMau"));
    }
    @Override
    public List<Customer> findAll() {
        return new ArrayList<>(khachhang.values());
    }

    @Override
    public void save(Customer customer) {
        khachhang.put(customer.getId(), customer);
    }

    @Override
    public Customer findById(int id) {
        return khachhang.get(id);
    }

    @Override
    public void update(int id, Customer customer) {
        khachhang.put(id, customer);
    }

    @Override
    public void remove(int id) {
        khachhang.remove(id);
    }
}
