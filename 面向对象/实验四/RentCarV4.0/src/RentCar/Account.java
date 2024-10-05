package RentCar;

import java.io.Serializable;

public class Account implements Serializable {
    private static final long serialVersionUID = 6847685676564L;
    private int account;
    private int keyWord;

    public Account(int account, int keyWord) {
        this.account = account;
        this.keyWord = keyWord;
    }

    public Account() {
    }

    public int getAccount() {
        return account;
    }

    public void setAccount(int account) {
        this.account = account;
    }

    public int getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(int keyWord) {
        this.keyWord = keyWord;
    }

    @Override
    public boolean equals(Object o) {
//        if (this == o) return true;
//        if (o == null || getClass() != o.getClass()) return false;

        Account a = (Account) o;

        return account == a.account;
    }

    @Override
    public int hashCode() {
        return account;
    }
}
