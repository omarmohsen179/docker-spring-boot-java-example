package com.example.demo.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/assessments")
public class AssessmentController {

    @GetMapping("/all")
    public ResponseEntity<String> getAllAssessments() {
        return new ResponseEntity<>("works 0100", HttpStatus.OK);
    }

}
