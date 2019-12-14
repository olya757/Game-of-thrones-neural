package ru.vsu.gameofthrones.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@org.springframework.stereotype.Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String helloWorld() {
        return "main";
    }
}
