package com.example.deploy;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("nurtas")
    public String nurtas(){
        return "Нуртас манки";
    }


    @GetMapping("nurbo")
    public String nurbo(){
        return "Нурбо манки";
    }
}
