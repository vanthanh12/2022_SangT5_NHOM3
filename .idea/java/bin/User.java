package bin;

import java.io.Serializable;

public class User implements Serializable {
    private int id;
    private String username;
    private String password;
    private int groupId;
    private int permission;

    public User() {
    }

    public User(int id, String username, String password, int groupId, int permission) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.groupId = groupId;
        this.permission = permission;
    }

    public User(String username, String password, int groupId, int permission) {
        this.username = username;
        this.password = password;
        this.groupId = groupId;
        this.permission = permission;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getGroupId() {
        return groupId;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public int getPermission() {
        return permission;
    }

    public void setPermission(int permission) {
        this.permission = permission;
    }
}
