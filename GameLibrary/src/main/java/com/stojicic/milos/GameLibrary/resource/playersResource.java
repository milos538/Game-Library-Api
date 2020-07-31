package com.stojicic.milos.GameLibrary.resource;

import com.stojicic.milos.GameLibrary.model.Player;
import com.stojicic.milos.GameLibrary.repository.playersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "/api/player")
@CrossOrigin(origins= "http://localhost:3000")
public class playersResource {

    @Autowired
    com.stojicic.milos.GameLibrary.repository.playersRepository playersRepository;

    @GetMapping(value="/all")
    public List<Player> getAll(){
        return playersRepository.findAll();
    }

    @GetMapping(value="/{id}")
    public Player getPlayerWithId(@PathVariable int id){ return playersRepository.findByGame_id(id);}

    @GetMapping(value="/{id}/games")
    public List<Object> getPlayerGames(@PathVariable int id){ return playersRepository.getGamesFromPlayer(id);}

    @GetMapping(value="/search/{name}")
    public List<Player> searchPlayer(@PathVariable String name){ return playersRepository.searchPlayer(name);}

    @PostMapping(value = "/add")
    public ResponseEntity<Object> addPlayer(@RequestParam("username") String username, @RequestParam("date_registered") String date_registered, @RequestParam("country") String country, @RequestParam("birthday") String birthday) throws ParseException {
        Player player = new Player();
        player.setUsername(username);
        player.setCountry(country);
        player.setBirthday(birthday);
        player.setDate_registered(date_registered);
        DateFormat inputFormatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = inputFormatter.parse(birthday);
        Date date2 = inputFormatter.parse(date_registered);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        player.setBirthday(df.format(date1));
        player.setDate_registered(df.format(date2));
        try{
            playersRepository.addPlayer(username, country, df.format(date1), df.format(date2));
            return new ResponseEntity<>("Task finished successfully!", HttpStatus.OK);
        }
        catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @PostMapping(value = "/addGame")
    public ResponseEntity<Object> addGameToPlayer(@RequestParam("hoursPlayed") int hoursPlayed, @RequestParam("gameId") int gameId, @RequestParam("playerId") int playerId) {
        try {
            playersRepository.addGameToPlayer(hoursPlayed,gameId,playerId);
            return new ResponseEntity<>("Task finished successfully!", HttpStatus.OK);
        }
        catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @GetMapping(value="/averageTime")
    public float averageTime(){ return playersRepository.averageTime();}

    @GetMapping(value="/{id}/playingTime")
    public float averagePlayerTime(@PathVariable int id){ return playersRepository.playerPlayingTime(id);}
}
