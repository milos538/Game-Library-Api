package com.stojicic.milos.GameLibrary.model;
import javax.persistence.*;


@Entity
@Table(name = "game", schema = "games")
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "game_id")
    private int game_id;
    @Column(name = "name")
    private String name;
    @Column(name = "release_date")
    private String release_date;
    @Column(name = "desc")
    private String desc;
    @Column(name = "image")
    private String image;
    @Column(name = "soled_copies")
    private int soled_copies;
    @Column(name = "author")
    private String author;


    @Override
    public String toString() {
        return "Game{" +
                "game_id=" + game_id +
                ", name='" + name + '\'' +
                ", release_date=" + release_date +
                ", desc='" + desc + '\'' +
                ", image='" + image + '\'' +
                ", soled_copies=" + soled_copies +
                ", author='" + author + '\'' +
                '}';
    }

    public Game() {
    }

    public int getGame_id() {
        return game_id;
    }
    public void setGame_id(int game_id) {
        this.game_id = game_id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getRelease_date() {
        return release_date;
    }
    public void setRelease_date(String release_date) {
        this.release_date = release_date;
    }
    public String getDesc() {
        return desc;
    }
    public void setDesc(String desc) {
        this.desc = desc;
    }
    public String getImage() {
        return image;
    }
    public void setImage(String image) {
        this.image = image;
    }
    public int getSoled_copies() {
        return soled_copies;
    }
    public void setSoled_copies(int soled_copies) {
        this.soled_copies = soled_copies;
    }
    public String getAuthor() {
        return author;
    }
    public void setAuthor(String author) {
        this.author = author;
    }
}




