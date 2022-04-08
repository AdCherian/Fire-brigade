package com.strazak.centrala.repositories;

import com.strazak.centrala.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    Optional<User> findByEmail(String username);

    @Query("select user from User user where user.role='FIREFIGHTER'")
    List<User> findAllFirefighters();
}
