package com.amigoscode;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@SpringBootApplication
@RestController
public class SpringBootExampleApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringBootExampleApplication.class, args);
    }





//    @GetMapping("/hello")
//    public GreetResponse hello() {
//        return new GreetResponse("Hello, World!", List.of("Java", "Kotlin", "JavaScript"), new Person("John", 20,39.999));
//    }
//
//
//    record Person(String name, int age, double savings) {
//    }
//
//    record GreetResponse(String greet, List<String> favProgrammingLanguages, Person person) {
//    }


}
