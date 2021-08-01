package net.enLearn.helper;

/**
 * Created by Kalana on 01/08/2021
 */

public class Response {

    private String status;
    private Object data;

    public Response() {
    }

    public Response(String status) {
        this.status = status;
    }

    public Response(String status, Object object) {
        this.status = status;
        this.data = object;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }
}
