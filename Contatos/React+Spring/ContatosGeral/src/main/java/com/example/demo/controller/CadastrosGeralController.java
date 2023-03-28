package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.CadastrosModel;

@CrossOrigin
@RestController
@RequestMapping("Cadastro")
public class CadastrosGeralController {
    @GetMapping
    public List<CadastrosModel> getcadas(){
        List<CadastrosModel>lista_Ctn = new ArrayList<CadastrosModel>();
        lista_Ctn.add(new CadastrosModel(50, "Emerson_Edinaldo", "01415060", "Emersonedinaldosl@gmail.com"));
        lista_Ctn.add(new CadastrosModel(93, "Brazinno", "16516166", "brazinno@gmail.com"));
        lista_Ctn.add(new CadastrosModel(65, "Mia khalifa", "62456415846", "Mia_khalifa@gmail.com"));
        lista_Ctn.add(new CadastrosModel(72, "Alexis Texas", "165988561", "Alexis_Texas@gmail.com"));
        return lista_Ctn;
    }

}