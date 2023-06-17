package com.upc.democloud.controller;

import com.upc.democloud.model.Categoria;
import com.upc.democloud.servicio.CategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin()
@RestController
@RequestMapping("/categoria")
public class CategoriaController {

    @Autowired
    CategoriaService categoriaService;

    @GetMapping()
    public ResponseEntity<List<Categoria>> list() {
        return new ResponseEntity<List<Categoria>>(categoriaService.list(), HttpStatus.OK);
    }
    @PostMapping()
    public ResponseEntity<Categoria> save(@RequestBody Categoria categoria) {
        return new ResponseEntity<Categoria>( categoriaService.save(categoria), HttpStatus.CREATED);
    }
}
