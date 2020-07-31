package com.stojicic.milos.GameLibrary.resource;
import com.stojicic.milos.GameLibrary.model.Game;
import com.stojicic.milos.GameLibrary.repository.GamesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping(value = "/api/game")
@CrossOrigin(origins= "http://localhost:3000")
public class GamesResource {
    @Autowired
    GamesRepository gamesRepository;

    @GetMapping(value="/all")
    public List<Game> getAll(){ return gamesRepository.findAll();}

    @GetMapping(value="/{id}")
    public Game getGameWithId(@PathVariable int id){ return gamesRepository.findByGame_id(id);}

    @GetMapping(value="/search/{name}")
    public List<Game> searchGame(@PathVariable String name){ return gamesRepository.searchGame(name);}

    @GetMapping(value="/random/{number}")
    public List<Game> getRandom(@PathVariable int number){ return gamesRepository.getRandomGame(number);}

    @GetMapping(value="/{id}/country")
    public String getPopularPlayerCountryForGame(@PathVariable int id){ return gamesRepository.country(id);}

    @PostMapping(value = "/add",consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ResponseEntity<Object> addGame(@RequestParam("file") MultipartFile file, @RequestParam("name") String name, @RequestParam("release_date")
            String release_date, @RequestParam("desc") String desc, @RequestParam("soled_copies") int soled_copies,
                                          @RequestParam("author") String author) throws IOException, ParseException {
        File convertFIle = new File("..\\GameLibrary\\Assets\\games\\" + file.getOriginalFilename());
        convertFIle.createNewFile();
        FileOutputStream fout = new FileOutputStream(convertFIle);
        fout.write(file.getBytes());
        Game game = new Game();
        game.setName(name);
        game.setAuthor(author);
        game.setDesc(desc);
        game.setSoled_copies(soled_copies);
        game.setImage(file.getOriginalFilename());
        DateFormat inputFormatter = new SimpleDateFormat("yyyy-MM-dd");
        Date date = inputFormatter.parse(release_date);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        game.setRelease_date(df.format(date));
        try{
            gamesRepository.addGame(name,df.format(date),desc,file.getOriginalFilename(),soled_copies,author); //save() method returns a Flight entity after saving it.
            URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(game.getGame_id()).toUri();
            return new ResponseEntity<>("Task finished successfully!", HttpStatus.OK);
        }
        catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }

    @GetMapping(value = "/orderby/name")
    public List<Game> getGamesOrderedByName(){ return gamesRepository.findAllOrderByName();}

    @GetMapping(value = "/orderby/releaseDate")
    public List<Game> getGamesOrderedByReleaseDate(){ return gamesRepository.findAllOrderByRelease_date();}

    @GetMapping(value = "/orderby/popularity")
    public List<Game> getGamesOrderedBySoledCopies(){ return gamesRepository.findAllOrderBySoled_copies();}

    @GetMapping(value = "/genre/{id}")
    public List<Game> getGamesInGenre(@PathVariable int id){ return gamesRepository.findAllByGenre(id);}

    @GetMapping(value = "/{id}/playedMost")
    public String getPlayer(@PathVariable int id){ return gamesRepository.findPlayer(id);}

    @GetMapping(value = "/mostPlayedGenre")
    public int mostPlayedByGenre(){ return gamesRepository.mostPlayedGenre();}
}





