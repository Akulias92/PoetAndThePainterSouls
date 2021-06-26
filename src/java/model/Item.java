
package model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author lukak
 */
@Entity
public class Item {
    
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private int id;
    
    private String naslov,autor,opis,datum;
    
    @ManyToOne(cascade=CascadeType.ALL)
    @JoinColumn(name="kategorija_id")
    private Category kategorija;

    public Item() {
    }

    public Item(String naslov, String autor, String opis, String datum, String slika, Category kategorija) {
        this.naslov = naslov;
        this.autor = autor;
        this.opis = opis;
        this.datum = datum;
        this.kategorija = kategorija;
    }

    public Item(String naslov, String autor, String opis, String datum, Category kategorija) {
        this.naslov = naslov;
        this.autor = autor;
        this.opis = opis;
        this.datum = datum;
        this.kategorija = kategorija;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNaslov() {
        return naslov;
    }

    public void setNaslov(String naslov) {
        this.naslov = naslov;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }



    public Category getKategorija() {
        return kategorija;
    }

    public void setKategorija(Category kategorija) {
        this.kategorija = kategorija;
    }

    @Override
    public String toString() {
        return "Item{" + "id=" + id + ", naslov=" + naslov + ", autor=" + autor + ", opis=" + opis + ", datum=" + datum + ", kategorija=" + kategorija + '}';
    }
    
    
}
