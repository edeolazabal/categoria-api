package com.upc.democloud.servicio;

import com.upc.democloud.model.Categoria;
import com.upc.democloud.repository.CategoriaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoriaService {

    @Autowired
    CategoriaRepository categoriaRepository;
    public List<Categoria> list() {
        return categoriaRepository.findAll();
    }
    public Categoria save(Categoria categoria) {
        return categoriaRepository.save(categoria);
    }
}
