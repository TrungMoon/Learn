package com.laptrinhjavaweb.dto.response;

public class ResponseDTO {

    private Object data;
    private String message;
    private String detail;

    public String getMessage() {return message; }

    public void setMessage(String message) {this.message = message; }

    public String getDetail() {return detail; }

    public void setDetail(String data) {this.detail = detail; }

    public Object getData() {return data; }

    public void setData(Object data) {this.data = data; }
}
