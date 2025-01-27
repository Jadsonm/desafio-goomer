package br.com.jadson.desafio_goomer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import br.com.jadson.desafio_goomer.models.Restaurante;

public interface RestauranteRepository extends JpaRepository<Restaurante, Long> {

    @Query(value = "SELECT * FROM restaurantes", nativeQuery = true)
    List<Restaurante> buscarTodos();
}
