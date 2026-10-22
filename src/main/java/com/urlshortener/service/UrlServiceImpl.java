package com.urlshortener.service;

import com.urlshortener.dto.CreateUrlRequest;
import com.urlshortener.dto.CreateUrlResponse;
import com.urlshortener.entity.UrlMapping;
import com.urlshortener.repository.UrlRepository;
import com.urlshortener.util.ShortCodeGenerator;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Service;
import lombok.RequiredArgsConstructor;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;

@Service
@RequiredArgsConstructor
public class UrlServiceImpl implements UrlService {

    private final UrlRepository repository;

    @Override
    public CreateUrlResponse createShortUrl(CreateUrlRequest request) {
        String code = ShortCodeGenerator.generate();

        UrlMapping mapping = UrlMapping.builder().shortCode(code).originalUrl(request.url()).createdAt(LocalDateTime.now()).build();
        repository.save(mapping);
        return new CreateUrlResponse("http://localhost:8080/" + code);
    }


    @Override
    @Transactional(readOnly = true)
    public String getOriginalUrl(String shortCode) {
        return repository.findByShortCode(shortCode).orElseThrow().getOriginalUrl();
    }

    @Override
    public String createShortUrl(CreateUrlRequest request, HttpServletRequest httpRequest) {

        String code = ShortCodeGenerator.generate();
        UrlMapping mapping = UrlMapping.builder().shortCode(code).originalUrl(request.url()).createdAt(LocalDateTime.now()).build();
        repository.save(mapping);

        String baseUrl = httpRequest.getScheme() + "://" + httpRequest.getServerName() + ":" + httpRequest.getServerPort();
        return baseUrl + "/" + code;

    }
}
