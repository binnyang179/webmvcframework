package me.crab179.exception;

/**
 * @author crab179
 * 自定义异常
 */
public class UserExistException extends Exception {

    public UserExistException() {
        super();
    }

    public UserExistException(String message, Throwable cause) {
        super(message, cause);
    }

    public UserExistException(String message) {
        super(message);
    }

    public UserExistException(Throwable cause) {
        super(cause);
    }
}
