package ru.iu3.backend.controllers;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ru.iu3.backend.models.User;
import ru.iu3.backend.repositories.UserRepository;
import ru.iu3.backend.tools.Utils;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/auth")
public class LoginController {
    @Autowired
    private UserRepository userRepository;

    @PostMapping("/login")
    public ResponseEntity<Object> login(@RequestBody Map<String, String> credentials) {
        String login = credentials.get("login");
        String pwd = credentials.get("password");
        if (!pwd.isEmpty() && !login.isEmpty()) {
            Optional<User> uu = userRepository.findByLogin(login);
            if (uu.isPresent()) {
                User u2 = uu.get();
                String hash1 = u2.password;
                String salt = u2.salt;
                String hash2 = Utils.ComputeHash(pwd, salt);
                if (hash1.toLowerCase().equals(hash2.toLowerCase())) {
                    String token = UUID.randomUUID().toString();
                    u2.token = token;
                    u2.activity = LocalDateTime.now();
                    User u3 = userRepository.saveAndFlush(u2);
                    return new ResponseEntity<>(u3, HttpStatus.OK);
                }
            }
        }
        return new ResponseEntity<>(HttpStatus.UNAUTHORIZED);
    }

    @GetMapping("/logout")
    public ResponseEntity logout(@RequestHeader(value = "Authorization", required = false) String token) {
        if (token != null && !token.isEmpty()) {
            token = StringUtils.removeStart(token, "Bearer").trim();
            Optional uu = userRepository.findByToken(token);
            if (uu.isPresent()) {
                User u = (User)uu.get();
                u.token = null;
                userRepository.save(u);
                return new ResponseEntity(HttpStatus.OK);
            }
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }
}