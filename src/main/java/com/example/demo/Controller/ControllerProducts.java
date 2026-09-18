package com.example.demo.Controller;

import com.example.demo.Model.Product;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ControllerProducts {

    private final JdbcTemplate jdbcTemplate;

    public ControllerProducts(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/products")
    public String products(Model model) {

        String sql = "SELECT id, name, category, price, description, image FROM products ORDER BY id";

        List<Product> products = jdbcTemplate.query(
            sql,
            (rs, rowNum) -> new Product(
                rs.getInt("id"),
                rs.getString("name"),
                rs.getString("category"),
                rs.getDouble("price"),
                rs.getString("description"),
                rs.getString("image")
            )
        );

        model.addAttribute("products", products);

        return "products";
    }
}