/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.banco.datos;

import com.fpmislata.banco.negocio.SucursalBancaria;
import java.util.List;

/**
 *
 * @author alumno
 */
public interface SucursalBancariaDAO {
    
    SucursalBancaria read(int idSucursalBancaria) throws Exception;

    void insert(SucursalBancaria sucursalBancaria) throws Exception;
    
    void update(SucursalBancaria sucursalBancaria) throws Exception;

    void delete(int idSucursalBancaria) throws Exception;

    List<SucursalBancaria> findAll() throws Exception;
    
    List<SucursalBancaria> findByCodigo(String codigo) throws Exception;
}
