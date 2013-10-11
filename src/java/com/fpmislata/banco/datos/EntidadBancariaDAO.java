/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.banco.datos;

import com.fpmislata.banco.negocio.EntidadBancaria;
import java.util.List;

/**
 *
 * @author alumno
 */
public interface EntidadBancariaDAO {
    
    EntidadBancaria read(int idEntidadBancaria) throws Exception;

    void insert(EntidadBancaria entidadBancaria) throws Exception;
    
    void update(EntidadBancaria entidadBancaria) throws Exception;

    void delete(int idEntidadBancaria) throws Exception;

    List<EntidadBancaria> findAll() throws Exception;
    
    List<EntidadBancaria> findByCodigo(String codigo) throws Exception;

}
