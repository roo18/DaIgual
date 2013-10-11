/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fpmislata.banco.datos;

import com.fpmislata.banco.negocio.CuentaBancaria;
import java.util.List;

/**
 *
 * @author alumno
 */
public interface CuentaBancariaDAO {
    CuentaBancaria read(int idCuentaBancaria) throws Exception;

    void insert(CuentaBancaria cuentaBancaria) throws Exception;
    
    void update(CuentaBancaria cuentaBancaria) throws Exception;

    void delete(int idCuentaBancaria) throws Exception;

    List<CuentaBancaria> findAll() throws Exception;
    
    List<CuentaBancaria> findByCodigo(String codigo) throws Exception;
}
