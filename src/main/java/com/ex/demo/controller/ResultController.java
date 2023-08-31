package com.ex.demo.controller;

import com.ex.demo.dto.DemoDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ResultController {
    @GetMapping("/result1")
    public String result1(Model model){
        String value1 = "안녕하세요";
        // 화면에 출력할 데이터를 모델에 담아감. m1은 그릇, value1에는 모든 데이터를 받을 수 있다.(addAtt..에 마우스 올려보면 오브젝트라고 나옴)
        model.addAttribute("m1", value1);
        return "result1";
    }

    @GetMapping("/result2")
    public String result2(Model model){
        DemoDTO demoDTO = new DemoDTO();
        demoDTO.setParam1("param1에 담긴 값");
        demoDTO.setParam2("param2에 담긴 값");
        model.addAttribute("demo", demoDTO);
        return "result2";
    }

    @GetMapping("/result3")
    public String result3(Model model){
        List<DemoDTO> demoDTOList = new ArrayList<>();

        for(int i=0; i<=10; i++) {
            DemoDTO demoDTO = new DemoDTO();
            demoDTO.setParam1("param1값 " + i);
            demoDTO.setParam2("param2값 " + i);
            demoDTOList.add(demoDTO);
        }
        System.out.println("demoDTOList = " + demoDTOList);
        model.addAttribute("demoList", demoDTOList);
        return "result3";
    }
}
