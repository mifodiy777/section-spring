package ru.innopolis.mvcsecurity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Кирилл on 02.11.2016.
 */
@Controller
public class SecurityController {

    /**
     * Стартовая страница
     *
     * @return стартовая страница
     */
    @RequestMapping(value = {"/index", "/"}, method = RequestMethod.GET)
    public String start() {
        return "index";
    }

    /**
     * Форма авторизации
     *
     * @param error  msg об ошибке
     * @param logout msg о выходе из сессии
     * @param model
     * @return форма
     */
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(@RequestParam(value = "error", required = false) String error,
                        @RequestParam(value = "logout", required = false) String logout,
                        Model model) {
        if (error != null) {
            model.addAttribute("error", "Неправильный логин или пароль!");
        }
        if (logout != null) {
            model.addAttribute("msg", "Вы вышли");
        }
        return "login";
    }
}
