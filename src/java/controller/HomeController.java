/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.User_DAO;
import bean.Students;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author PC
 */
@Controller
public class HomeController {

    @RequestMapping(value = "/index")
    public String index(ModelMap model) {
        return "index";
    }

    @RequestMapping(value = "/succes")
    public String succes(ModelMap model) {
        User_DAO dao = new User_DAO();
        model.addAttribute("list", dao.listStudent());
        return "succes";
    }

    @RequestMapping(value = "/table")
    public String table() {
        return "table";
    }

    @RequestMapping(value = "/form")
    public String form() {
        return "form";
    }

    @RequestMapping(value = "/delete")
    public String delete(ModelMap model, @RequestParam("id") String id) {
        User_DAO dao = new User_DAO();
        dao.Delete(id);
        return "redirect: succes.htm";
    }

    @RequestMapping(value = "/insert")
    public String insert(ModelMap model, HttpServletRequest request) {
        User_DAO dao = new User_DAO();
        try {
            Students st = new Students();
            String name = request.getParameter("name");
            String mark = request.getParameter("mark");
            String major = request.getParameter("major");
            st.setName(name);
            st.setMark(mark);
            st.setMajor(major);
            dao.insert(st);
        } catch (Exception e) {
        }
        return "redirect: succes.htm";
    }

    @RequestMapping(value = "/send")
    public String Send(ModelMap model, @RequestParam("username") String username, @RequestParam("key") String password) {
        User_DAO dao = new User_DAO();
        if (dao.loginUser(username, password)) {
            model.addAttribute("list", dao.listStudent());
            return "succes";
        } else {
            model.addAttribute("mess", "LOI: Sai mat khau vui long nhap lai!");
            model.addAttribute("username", username);
            model.addAttribute("key", password);
            return "index";
        }
    }

}
