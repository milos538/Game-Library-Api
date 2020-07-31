package com.stojicic.milos.GameLibrary.repository;

import com.stojicic.milos.GameLibrary.model.Player;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Repository
public interface playersRepository extends JpaRepository<Player,Long> {

    @Query(value = "SELECT * FROM player WHERE player_id = ?1",nativeQuery = true)
    Player findByGame_id(int id);

    @Query(value = "SELECT game.name, game.release_date, game.desc, game.game_id, game.image, game.soled_copies, game.author, player_game.hours_played FROM games.player_game JOIN game WHERE player_game.game_id = game.game_id AND player_game.player_id = ?1",nativeQuery = true)
    List<Object> getGamesFromPlayer(int id);

    @Query(value = "SELECT * FROM player WHERE player.username LIKE ?1% ",nativeQuery = true)
    List<Player> searchPlayer(String name);

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO player_game (player_game.hours_played, player_game.game_id, player_game.player_id) VALUES (?1,?2,?3)",nativeQuery = true)
    void addGameToPlayer(int hoursPlayed, int gameId, int playerId);

    @Modifying
    @Transactional
    @Query(value = "INSERT INTO player (player.username, player.country,player.birthday,player.date_registered) VALUES (?1,?2,?3,?4)",nativeQuery = true)
    void addPlayer(String username, String country, String birthday, String registred);

    @Query(value = "SELECT AVG(hours_played) FROM games.player_game",nativeQuery = true)
    float averageTime();

    @Query(value = "SELECT SUM(hours_played) AS SUMA FROM games.player_game WHERE player_id = ?1",nativeQuery = true)
    float playerPlayingTime(int id);

















}
