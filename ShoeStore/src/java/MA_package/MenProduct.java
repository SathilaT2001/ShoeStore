/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MA_package;

import static java.lang.System.out;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Base64;

/**
 *
 * @author Asus
 */
public class MenProduct {
      private String id;
	private String name;
	private String category;
	private float price;
	private Blob image;
        private  int quantity;
        private String size;
        private String description;
	
	
	public MenProduct() {
	}

	
	public MenProduct(String id, String name, String category, String description, float price,int quantity, String size, Blob image) {
		
		this.id = id;
		this.name = name;
		this.category = category;
                this.description=description;
                this.price = price;
                this.quantity=quantity;
                this.size=size;
		this.image = image;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
        
        public void setDescription(String description) {
		this.description = description;
	}

	public String getDescription() {
		return description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
        public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity=quantity;
	}
        
        public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public Blob getImage() {
        return image;
    }

        
        
        
    public void setImage(Blob image) {
        this.image = image;
    }

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", category=" + category + ",  description=" + description + " ,price=" + price + ",quantity=" + quantity + ",size=" + size + ",  image="
				+ image + "]";
	}
         public static class ImageUtils {
        public static String blobToBase64(Blob blob) {
            try {
                byte[] bytes = blob.getBytes(1, (int) blob.length());
                return Base64.getEncoder().encodeToString(bytes);
            } catch (SQLException e) {
                out.print(e);
                return null;
            }
        }
    }
}
