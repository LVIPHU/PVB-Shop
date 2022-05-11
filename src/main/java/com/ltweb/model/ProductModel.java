package com.ltweb.model;

public class ProductModel extends AbstractModel<ProductModel> {
    private int id;
    private int catalog_id;
    private String name;
    private int price;
    private long qty;
    private String content;
    private int discount;
    private String image_link;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCatalog_id() {
        return catalog_id;
    }

    public void setCatalog_id(int catalog_id) {
        this.catalog_id = catalog_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public long getQty() {
        return qty;
    }

    public void setQty(long qty) {
        this.qty = qty;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getImage_link() {
        return image_link;
    }

    public void setImage_link(String image_link) {
        this.image_link = image_link;
    }

    @Override
    public String toString() {
        return "ProductModel{" +
                "id=" + id +
                ", catalog_id=" + catalog_id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", qty=" + qty +
                ", content='" + content + '\'' +
                ", discount=" + discount +
                ", image_link='" + image_link + '\'' +
                '}';
    } 
    public String getGiaString(long a) {
        String result = "";int j=0;
        String gia = String.valueOf(a);
        for (int i = (gia.length() - 1); i >= 0; i--) {
            if (j%3==0&&j!=0){
                result="."+result;
            }
            result = gia.charAt(i) + result;
            j++;
        }
        return result;
    }
}
