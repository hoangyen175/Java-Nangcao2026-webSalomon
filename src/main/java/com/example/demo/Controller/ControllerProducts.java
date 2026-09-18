package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Model.Product;

@Controller
public class ControllerProducts {

    private final JdbcTemplate jdbcTemplate;

    public ControllerProducts(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @GetMapping("/products")
    public String products(
            @RequestParam(required = false) String category,
            @RequestParam(required = false) String gender,
            @RequestParam(required = false) Boolean sale,
            @RequestParam(defaultValue = "featured") String sort,
            Model model) {

        StringBuilder sql = new StringBuilder(
            "SELECT p.id, p.name, p.category, p.subcategory, p.collection, p.gender, " +
            "p.price, p.old_price, p.description, " +
            "(SELECT pv.image FROM product_variants pv " +
            " WHERE pv.product_id = p.id " +
            " ORDER BY pv.id ASC LIMIT 1) AS image, " +
            "p.is_new, p.is_sale " +
            "FROM products p WHERE 1=1"
        );

        List<Object> params = new ArrayList<>();

        if (category != null && !category.isBlank()) {
            sql.append(" AND p.category = ?");
            params.add(category);
        }

        if (gender != null && !gender.isBlank()) {
            sql.append(" AND (p.gender = ? OR gender = 'Unisex')");
            params.add(gender);
        }

        if (Boolean.TRUE.equals(sale)) {
            sql.append(" AND p.is_sale = 1");
        }

        switch (sort) {
            case "name-asc":
                sql.append(" ORDER BY p.name ASC");
                break;

            case "price-asc":
                sql.append(" ORDER BY p.price ASC");
                break;

            case "price-desc":
                sql.append(" ORDER BY p.price DESC");
                break;

            default:
                sql.append(" ORDER BY p.id ASC");
                break;
        }

        List<Product> products = jdbcTemplate.query(
            sql.toString(),
            (rs, rowNum) -> new Product(
                rs.getInt("id"),
                rs.getString("name"),
                rs.getString("category"),
                rs.getString("subcategory"),
                rs.getString("collection"),
                rs.getString("gender"),
                rs.getDouble("price"),
                rs.getObject("old_price") == null
                    ? null
                    : rs.getDouble("old_price"),
                rs.getString("description"),
                rs.getString("image"),
                rs.getInt("is_new") == 1,
                rs.getInt("is_sale") == 1
            ),
            params.toArray()
        );

        model.addAttribute("products", products);
        model.addAttribute("selectedCategory", category);
        model.addAttribute("selectedGender", gender);
        model.addAttribute("saleOnly", sale);
        model.addAttribute("selectedSort", sort);

        return "products";
    }

    @GetMapping("/products/{id}")
public String productDetail(@PathVariable Integer id, Model model) {

    // =====================================================
    // 1. GET PRODUCT
    // =====================================================

    List<Product> products = jdbcTemplate.query(
        """
        SELECT
            p.id,
            p.name,
            p.category,
            p.subcategory,
            p.collection,
            p.gender,
            p.price,
            p.old_price,
            p.description,
            (
                SELECT pv.image
                FROM product_variants pv
                WHERE pv.product_id = p.id
                ORDER BY pv.id ASC
                LIMIT 1
            ) AS image,
            p.is_new,
            p.is_sale
        FROM products p
        WHERE p.id = ?
        """,

        (rs, rowNum) -> new Product(
            rs.getInt("id"),
            rs.getString("name"),
            rs.getString("category"),
            rs.getString("subcategory"),
            rs.getString("collection"),
            rs.getString("gender"),
            rs.getDouble("price"),

            rs.getObject("old_price") == null
                ? null
                : rs.getDouble("old_price"),

            rs.getString("description"),
            rs.getString("image"),
            rs.getInt("is_new") == 1,
            rs.getInt("is_sale") == 1
        ),

        id
    );


    // =====================================================
    // 2. PRODUCT NOT FOUND
    // =====================================================

    if (products.isEmpty()) {
        return "redirect:/products";
    }

    Product product = products.get(0);


    // =====================================================
    // 3. GET ALL COLOR VARIANTS
    // =====================================================

    List<Map<String, Object>> variants = jdbcTemplate.queryForList(
        """
        SELECT
            id,
            color_name,
            color_code,
            image
        FROM product_variants
        WHERE product_id = ?
        ORDER BY id ASC
        """,
        id
    );


    // =====================================================
    // 4. GET SIZE + STOCK FOR ALL VARIANTS
    // =====================================================

    List<Map<String, Object>> sizes = jdbcTemplate.queryForList(
        """
        SELECT
            ps.id,
            ps.variant_id,
            ps.size,
            ps.stock
        FROM product_sizes ps
        JOIN product_variants pv
            ON pv.id = ps.variant_id
        WHERE pv.product_id = ?
        ORDER BY
            ps.variant_id,
            CASE
                WHEN ps.size GLOB '[0-9]*'
                    THEN CAST(ps.size AS INTEGER)
                ELSE 999
            END,
            ps.size
        """,
        id
    );


    // =====================================================
    // 5. SEND DATA TO THYMELEAF
    // =====================================================

    model.addAttribute("product", product);
    model.addAttribute("variants", variants);
    model.addAttribute("sizes", sizes);

    return "product-detail";
}

    
}