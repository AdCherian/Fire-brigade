package com.strazak.centrala.services;

import com.strazak.centrala.models.Actions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.strazak.centrala.repositories.ActionsRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ActionsService {
    @Autowired
    private ActionsRepository repository;

    public List<Actions> findAll() {
        return repository.findAll();
    }

    public Actions save(Actions actions){
        return repository.save(actions);
    }

    public void deleteById(Long id){
        repository.deleteById(id);
    }

    public Optional<Actions> findById(Long id){
        return repository.findById(id);
    }
}
