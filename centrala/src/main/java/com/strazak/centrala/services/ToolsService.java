package com.strazak.centrala.services;

import com.strazak.centrala.models.Tools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.strazak.centrala.repositories.ToolsRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ToolsService {
    @Autowired
    private ToolsRepository repository;

    public List<Tools> findAll(){
        return repository.findAll();
    }

    public Tools save(Tools tools){
        return repository.save(tools);
    }

    public void deleteById(Long id){
        repository.deleteById(id);
    }

    public Optional<Tools> findById(Long id){
        return repository.findById(id);
    }

    public void update(Tools tool){repository.save(tool);}
}
