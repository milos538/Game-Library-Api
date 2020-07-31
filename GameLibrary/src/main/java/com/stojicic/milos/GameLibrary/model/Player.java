package com.stojicic.milos.GameLibrary.model;

import javax.persistence.*;

@Entity
@Table(name = "player", schema = "games")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "player_id")
    private int player_id;
    @Column(name = "username")
    private String username;
    @Column(name = "date_registered")
    private String date_registered;
    @Column(name = "country")
    private String country;
    @Column(name = "birthday")
    private String birthday;

    public Player() {
    }


    public int getPlayer_id() {
        return player_id;
    }

    public void setPlayer_id(int player_id) {
        this.player_id = player_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDate_registered() {
        return date_registered;
    }

    public void setDate_registered(String date_registered) {
        this.date_registered = date_registered;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    @Override
    public String toString() {
        return "Player{" +
                "player_id=" + player_id +
                ", username='" + username + '\'' +
                ", date_registered=" + date_registered +
                ", country='" + country + '\'' +
                ", birthday=" + birthday +
                '}';
    }
}
