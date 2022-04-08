package com.strazak.centrala.services;

import com.strazak.centrala.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.strazak.centrala.repositories.UserRepository;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    @Autowired
    UserRepository repository;

    public void save(User user){
        repository.save(user);
    }

    public void update(User user){
        repository.save(user);
    }


    public List<User> findAll() {
        return repository.findAll();
    }

    public Optional<User> findById(Long id) {
        return repository.findById(id);
    }

    public Optional<User> findByEmail(String email) {
        return repository.findByEmail(email);
    }

    public List<User> findAllFirefighters(){return repository.findAllFirefighters();}
}
