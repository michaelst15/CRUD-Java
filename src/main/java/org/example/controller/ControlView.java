package org.example.controller;

import lombok.AllArgsConstructor;
import org.example.model.MahasiswaDb;
import org.example.service.DataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class ControlView {

    @Autowired
    DataService dataService;

//    @Autowired
//    public ControlView(DataService dataService) {
//        this.dataService = dataService;
//    }

    @GetMapping({"/", "/view"})
    public String view(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("view", dataService.getAllDatabaseMahasiswa());
        model.addAttribute("message", message);

        return "View";
    }

    @GetMapping("/addDataMahasiswa")
    public String addDataMahasiswa(@ModelAttribute("message") String message, Model model) {
        model.addAttribute("command", new MahasiswaDb());
        model.addAttribute("message", message);

        return "AddDataMahasiswa";
    }

    @PostMapping("/saveDataMahasiswa")
    public String saveDataMahasiswa(MahasiswaDb mahasiswaDb, RedirectAttributes redirectAttributes) {
        if(dataService.saveOrUpdateDataMahasiswa(mahasiswaDb)) {
            redirectAttributes.addFlashAttribute("message", "Save Success");
            return "redirect:/view";
        }

        redirectAttributes.addFlashAttribute("message", "Save fail");
        return "redirect:/addDataMahasiswa";
    }

    @GetMapping("/editDataMahasiswa/{nim}")
    public String editDataMahasiswa(@PathVariable Long nim,  Model model) {
        model.addAttribute("command", dataService.getDataMahasiswaById(nim));

        return "EditDataMahasiswa";
    }

    @PostMapping("/editSaveDataMahasiswa")
    public String editSaveDataMahasiswa(MahasiswaDb mahasiswaDb, RedirectAttributes redirectAttributes) {
        if(dataService.saveOrUpdateDataMahasiswa(mahasiswaDb)) {
            redirectAttributes.addFlashAttribute("message", "Edit Success");
            return "redirect:/view";
        }

        redirectAttributes.addFlashAttribute("message", "Save fail");
        return "redirect:/editDataMahasiswa/" + mahasiswaDb.getNim();
    }

    @GetMapping ( "/deleteDataMahasiswa/{nim}")
    public String deleteDataMahasiswa(@PathVariable Long nim, RedirectAttributes redirectAttributes) {
        if (dataService.deleteDataMahasiswa(nim)) {
            redirectAttributes.addFlashAttribute("message", "delete Success");
        } else {
            redirectAttributes.addFlashAttribute("message", "Delete fail");
        }
        return "redirect:/view";
    }

}
