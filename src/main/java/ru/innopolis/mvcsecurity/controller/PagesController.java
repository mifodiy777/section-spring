package ru.innopolis.mvcsecurity.controller;

import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Кирилл on 07.11.2016.
 */
@Controller
public class PagesController {

    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "adminPage", method = RequestMethod.GET)
    public String getAdminPage() {
        return "adminPage";
    }

    @Secured("ROLE_USER")
    @RequestMapping(value = "userPage", method = RequestMethod.GET)
    public String getUserPage() {
        return "userPage";
    }
}
