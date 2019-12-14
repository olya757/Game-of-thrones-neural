package ru.vsu.gameofthrones.controllers;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@org.springframework.stereotype.Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String helloWorld() {
        return "main";
    }

    @RequestMapping(value = "/analyze", method = RequestMethod.POST)
    public ResponseEntity<String> analyze(@RequestParam("file") MultipartFile image) {
        try {
            HttpEntity<byte[]> request = new HttpEntity<>(image.getBytes());
            ResponseEntity<String> response = new RestTemplate().postForEntity("localhost:5000", request, String.class);
            String res = response.getBody();
            return new ResponseEntity<>(String.format("{ \"result\":\"%s\"}", res), HttpStatus.OK);
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

}
