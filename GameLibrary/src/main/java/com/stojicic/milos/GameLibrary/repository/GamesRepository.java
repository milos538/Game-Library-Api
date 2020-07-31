package com.stojicic.milos.GameLibrary.repository;


import com.stojicic.milos.GameLibrary.model.Game;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public interface GamesRepository extends JpaRepository<Game,Long> {

    @Query(value = "SELECT * FROM game",nativeQuery = true)
    List<Game> findAll();

    @Query(value = "SELECT * FROM game WHERE game_id = ?1",nativeQuery = true)
    Game findByGame_id(int id);

    @Query(value = "SELECT * FROM game WHERE game.name LIKE ?1%",nativeQuery = true)
    List<Game> searchGame(String name);

    @Query(value = "SELECT * FROM game ORDER BY RAND() LIMIT ?1",nativeQuery = true)
    List<Game> getRandomGame(int number);

    @Query(value = "SELECT country,COUNT(*) AS playerNumber FROM player_game JOIN player " +
            "WHERE player_game.player_id = player.player_id AND game_id = ?1 GROUP BY country ORDER BY playerNumber DESC LIMIT 1;",nativeQuery = true)
    String country(int number);

    @Modifying
    @Transactional
    @Query(value="INSERT INTO game (game.name, release_date, game.desc, image,soled_copies,author) VALUES (?1,?2, ?3, ?4,?5,?6)",nativeQuery = true)
    void addGame(String name, String release_date, String desc, String image, int soled_copies, String author);

    @Query(value = "SELECT * FROM game ORDER BY game.name",nativeQuery = true)
    List<Game> findAllOrderByName();

    @Query(value = "SELECT * FROM game ORDER BY game.soled_copies DESC",nativeQuery = true)
    List<Game> findAllOrderBySoled_copies();

    @Query(value = "SELECT * FROM game ORDER BY game.release_date",nativeQuery = true)
    List<Game> findAllOrderByRelease_date();

    @Query(value = "SELECT game.game_id,game.name,game.desc,game.author,game.image,game.soled_copies," +
            "game.release_date FROM game JOIN genre_game WHERE game.game_id = genre_game.game_id AND genre_id = ?1",nativeQuery = true)
    List<Game> findAllByGenre(int id);

    @Query(value = "SELECT player.username FROM games.player_game JOIN player WHERE" +
            " player_game.player_id = player.player_id AND game_id = ?1 ORDER BY hours_played DESC LIMIT 1;",nativeQuery = true)
    String findPlayer(int gameId);

    @Query(value= "SELECT genre_id,COUNT(genre_id) AS gameNumber FROM games.genre_game GROUP BY genre_id ORDER BY gameNumber DESC LIMIT 1;",nativeQuery = true)
    int mostPlayedGenre();

}


