package com.upc.democloud.repository;

import com.upc.democloud.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CategoriaRepository extends JpaRepository<Categoria, Long> {
    // List<Categoria> lista();
    // Categoria salvar(Categoria categoria);

}
