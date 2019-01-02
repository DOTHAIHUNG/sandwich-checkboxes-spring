package controllers;

import model.Choose;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ChooseController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView choose() {
        Choose choose = new Choose();
        choose.setFavoriteComdiments((new String[]{"Lettuce", "Tomato", "Mustard", "Sprouts"}));
        ModelAndView modelAndView = new ModelAndView("index", "command", choose);
        return modelAndView;
    }

    @RequestMapping(value = "/choose", method = RequestMethod.POST)
    public String addInSandwich(@ModelAttribute("SpringWeb") Choose choose, ModelMap model){
        model.addAttribute("favoriteComdiments", choose.getFavoriteComdiments());
        return "sandwich";
    }

    @ModelAttribute("favoriteComdimentsList")
    public List<String> getFavoriteComdimentsList(){
        List<String> favoriteComdimentsList = new ArrayList <String>();
        favoriteComdimentsList.add("Lettuce");
        favoriteComdimentsList.add("Tomato");
        favoriteComdimentsList.add("Mustard");
        favoriteComdimentsList.add("Sprouts");
        return favoriteComdimentsList;
    }
}
