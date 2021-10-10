import express from "express";
import fs from "fs";


const app = express();
const PORT = 8000;

app.get("/", (req, res) => {
   res.send("This is music streaming server");
});

app.get("/music", (req, res) => {
    //console.log(req.headers);
    const range: string | undefined = req.headers.range;
    if(range === undefined){
        res.status(400).send("Requires Range header");
    }else{

        let dir = __dirname
        let temp = dir.slice(0,-3)+ "music/15s_sample.mp3";
        //console.log(temp);
        const musicPath = temp;
        const musicSize = fs.statSync(musicPath).size;

        //console.log(musicSize);

        const CHUNK_SIZE = 10 ** 6; // 1mb
       
        const start = Number(range.replace(/\D/g, ""));
        const end = Math.min(start + CHUNK_SIZE, musicSize -1);

        const contentLength = end-start + 1;

        const headers = {
            "Content-Range": `bytes ${start}-${end}/${musicSize}`,
            "Accept-Ranges": "bytes",
        //    "Content-Length": contentLength,
            "Content-Length" : contentLength,
            "Content-Type": "audio/mpeg"
        };

        res.writeHead(206, headers);

        let musicStream = fs.createReadStream(musicPath,{start, end});

        musicStream.pipe(res);
    }


});

app.get("/music/:artist/:song",(req,res) =>{
    console.log(req.headers);
    console.log(typeof req.params.artist);
    console.log(typeof req.params.song);

    const artist = req.params.artist.replace(/ /g, "_");
    const song = req.params.song.replace(/ /g, "_");

    console.log(artist);

    const range: string | undefined = req.headers.range;
    if(range === undefined){
        res.status(400).send("requires Range header");
    }else{
        let dir = __dirname;
        const location = dir.slice(0,-3) + `music/${artist}/${song}.mp3`;
        const musicSize = fs.statSync(location).size;

        const CHUNK_SIZE = 10 ** 6; // 1mb
       
        const start = Number(range.replace(/\D/g, ""));
        const end = Math.min(start + CHUNK_SIZE, musicSize -1);

        const contentLength = end-start + 1;

        const headers = {
            "Content-Range": `bytes ${start}-${end}/${musicSize}`,
            "Accept-Ranges": "bytes",
        //    "Content-Length": contentLength,
            "Content-Length" : contentLength,
            "Content-Type": "audio/mpeg"
        };

        res.writeHead(206, headers);

        let musicStream = fs.createReadStream(location,{start, end});
        
        console.log("hello musicStream")
        console.log("musciStream: ", musicStream)
        console.log(Array.isArray(musicStream) )

        musicStream.pipe(res);
    }
});


app.listen(PORT, ()=>{
    console.log("Music Streaming server is running on https://localhost:" + PORT);
});
