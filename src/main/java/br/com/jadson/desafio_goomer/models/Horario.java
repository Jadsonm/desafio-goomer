package br.com.jadson.desafio_goomer.models;

import java.time.LocalTime;

import br.com.jadson.desafio_goomer.models.enums.DiaSemana;
import jakarta.persistence.Embeddable;

@Embeddable
public class Horario {
    private DiaSemana dia;

    private LocalTime horarioInicio;
    
    private LocalTime horarioFim;
}
