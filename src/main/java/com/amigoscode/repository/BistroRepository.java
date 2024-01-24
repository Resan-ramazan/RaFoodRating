package com.amigoscode.repository;

import com.amigoscode.entity.Bistro;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BistroRepository extends JpaRepository<Bistro, Long> {
}
