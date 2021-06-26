package model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class User  {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private String ime;
    private String prezime;
    private String email;
    private String korisnicko;
    private String sifra;
    private String pol;
    private String saglasnost;
    
    @OneToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="UserProfil_Id")
    private UserProfil UserProfil;
    
    public User() {
    }

    public User(String ime, String prezime, String email, String korisnicko, String sifra, String pol, String saglasnost) {
        this.ime = ime;
        this.prezime = prezime;
        this.email = email;
        this.korisnicko = korisnicko;
        this.sifra = sifra;
        this.pol = pol;
        this.saglasnost = saglasnost;
    }

    public UserProfil getUserProfil() {
        return UserProfil;
    }

    public void setUserProfil(UserProfil UserProfil) {
        this.UserProfil = UserProfil;
    }
    
    public User(String korisnicko) {
        this.korisnicko = korisnicko;
    }

    public User(String korisnicko, String sifra) {
        this.korisnicko = korisnicko;
        this.sifra = sifra;
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

    public String getPrezime() {
        return prezime;
    }

    public void setPrezime(String prezime) {
        this.prezime = prezime;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getKorisnicko() {
        return korisnicko;
    }

    public void setKorisnicko(String korisnicko) {
        this.korisnicko = korisnicko;
    }

    public String getSifra() {
        return sifra;
    }

    public void setSifra(String sifra) {
        this.sifra = sifra;
    }

    public String getPol() {
        return pol;
    }

    public void setPol(String pol) {
        this.pol = pol;
    }

    public String getSaglasnost() {
        return saglasnost;
    }

    public void setSaglasnost(String saglasnost) {
        this.saglasnost = saglasnost;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", ime=" + ime + ", prezime=" + prezime + ", email=" + email + ", korisnicko=" + korisnicko + ", sifra=" + sifra + ", pol=" + pol + ", saglasnost=" + saglasnost + ", UserProfil=" + UserProfil + '}';
    }

   
   

}
