package com.strazak.centrala.repositories;

import com.strazak.centrala.models.Actions;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActionsRepository extends JpaRepository<Actions, Long> {
}
