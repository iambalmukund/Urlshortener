package com.urlshortener.controller;

import com.urlshortener.dto.CreateUrlRequest;
import com.urlshortener.dto.CreateUrlResponse;
import com.urlshortener.service.UrlService;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.net.URI;

@Controller
@RequiredArgsConstructor
public class UrlController {

    private final UrlService service;

    @PostMapping("/api/v1/urls")
    public CreateUrlResponse create(@RequestBody CreateUrlRequest request) {

        return service.createShortUrl(request);
    }

    @GetMapping("/{code}")
    public ResponseEntity<Void> redirect(@PathVariable String code) {

        String url = service.getOriginalUrl(code);
        return ResponseEntity.status(HttpStatus.FOUND).location(URI.create(url)).build();
    }

    @GetMapping("/")
    public String home() {
        return "index";
    }


    @PostMapping("/shorten")
    public String shorten(@RequestParam String url, HttpServletRequest request, Model model) {

        String shortUrl = service.createShortUrl(new CreateUrlRequest(url), request);
        model.addAttribute("shortUrl", shortUrl);
        return "result";

    }
}
