package com.ltweb.model;

import java.util.List;

public class CartModel extends AbstractModel<CartModel> {
    private int user_id;
    private int product_id;
    private String ten;
    private long giatien;
    private String anh;

    public CartModel() {
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }


    public long getGiatien() {
        return giatien;
    }

    public void setGiatien(long giatien) {
        this.giatien = giatien;
    }

    public String getGiaString(long a) {
        String result = "";
        int j = 0;
        String gia = String.valueOf(a);
        for (int i = (gia.length() - 1); i >= 0; i--) {
            if (j % 3 == 0 && j != 0) {
                result = "." + result;
            }
            result = gia.charAt(i) + result;
            j++;
        }
        return result;
    }

    public long tongGia() {
        List<CartModel> list = this.getList();
        long result = 0;
        for (CartModel cartModel : list) {
            result += cartModel.giatien;
        }
        return result;
    }

    @Override
    public String toString() {
        return "CartModel{" +
                "user_id=" + user_id +
                ", product_id=" + product_id +
                ", ten='" + ten + '\'' +
                ", giatien=" + giatien +
                ", anh='" + anh + '\'' +
                '}';
    }
}
