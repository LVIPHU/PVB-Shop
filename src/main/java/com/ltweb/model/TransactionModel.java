package com.ltweb.model;

public class TransactionModel extends AbstractModel<TransactionModel>{
private long id;
private int status;
private long user_id;
private String user_name;
private String user_email;
private String user_phone;
private String user_address;
private long amount;
private String shipping_date;
private String delivery_date;
private String payment;
private String message;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long ueser_id) {
        this.user_id = ueser_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
    
    public long getAmount() {
        return amount;
    }

    public void setAmount(long amount) {
        this.amount = amount;
    }

    public String getShipping_date() {
		return shipping_date;
	}

	public void setShipping_date(String shipping_date) {
		this.shipping_date = shipping_date;
	}

	public String getDelivery_date() {
		return delivery_date;
	}

	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}
    
    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    
    @Override
    public String toString() {
        return "TransactionModel{" +
                "id=" + id +
                ", status=" + status +
                ", user_id=" +  user_id +
                ", user_name='" + user_name + '\'' +
                ", user_email='" + user_email + '\'' +
                ", user_phone='" + user_phone + '\'' +
                ", user_address='" + user_address + '\'' +
                ", amount=" + amount +
                ", shipping_date=" + shipping_date + '\'' +
                ", delivery_dates=" + delivery_date + '\'' +
                ", payment='" + payment + '\'' +
                ", message='" + message + '\'' +
                '}';
    }
}
