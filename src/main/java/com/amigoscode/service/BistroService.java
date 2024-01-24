package com.amigoscode.service;

import com.amigoscode.entity.Bistro;

import java.util.List;

public interface BistroService {
    List<Bistro> getAllBistros();

    Bistro saveBistro(Bistro bistro);

    Bistro getBistroById(Long id);

    Bistro updateBistro(Bistro bistro);

    void deleteBistroByid(Long id);

}
