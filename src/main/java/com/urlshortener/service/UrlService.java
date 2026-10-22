package com.urlshortener.service;

import com.urlshortener.dto.CreateUrlRequest;
import com.urlshortener.dto.CreateUrlResponse;
import jakarta.servlet.http.HttpServletRequest;

public interface UrlService {

    CreateUrlResponse createShortUrl(CreateUrlRequest request);

    String createShortUrl(CreateUrlRequest request, HttpServletRequest httpRequest);

    String getOriginalUrl(String shortCode);
}
