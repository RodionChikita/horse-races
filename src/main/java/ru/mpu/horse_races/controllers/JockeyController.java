package ru.mpu.horse_races.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import ru.mpu.horse_races.services.JockeyService;

@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/jockey")
public class JockeyController {
    private final JockeyService jockeyService;
}
