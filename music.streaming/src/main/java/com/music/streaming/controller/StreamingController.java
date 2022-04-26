package com.music.streaming.controller;

import com.music.streaming.service.StreamingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/stream")
public class StreamingController{

    @Autowired
    private StreamingService streamingService;


    @GetMapping(value = "video/{title}", produces = "vidoe/mp4")
    public Mono<Resource> getVideos(@PathVariable String title, @RequestHeader String range){
        System.out.println("range in bytes() : " + range);
        return streamingService.getVideo(title);
    }
}
