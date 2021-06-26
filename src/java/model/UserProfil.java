package model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


@Entity
public class UserProfil {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    
    private String ime;
    private String zemlja;
    private String grad;
    private String datum;
    private String tekst;
    
    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="User_Id")
    private User User;
   
    public UserProfil() {
    }

    public UserProfil(String ime, String zemlja, String grad, String datum, String tekst) {
        this.ime = ime;
        this.zemlja = zemlja;
        this.grad = grad;
        this.datum = datum;
        this.tekst = tekst;
    }

    public User getUser() {
        return User;
    }

    public void setUser(User User) {
        this.User = User;
    }
    
   
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIme() {
        return ime;
    }

    public void setIme(String ime) {
        this.ime = ime;
    }

    public String getZemlja() {
        return zemlja;
    }

    public void setZemlja(String zemlja) {
        this.zemlja = zemlja;
    }

    public String getGrad() {
        return grad;
    }

    public void setGrad(String grad) {
        this.grad = grad;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public String getTekst() {
        return tekst;
    }

    public void setTekst(String tekst) {
        this.tekst = tekst;
    }

    @Override
    public String toString() {
        return "UserProfil{" + "id=" + id + ", ime=" + ime + ", zemlja=" + zemlja + ", grad=" + grad + ", datum=" + datum + ", tekst=" + tekst + ", User=" + User + '}';
    }
}
