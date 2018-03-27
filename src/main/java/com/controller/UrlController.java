package com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class UrlController {

    private static final Logger logger = LoggerFactory.getLogger(UrlController.class);

    @ResponseBody
    @RequestMapping(value = "/send", method = RequestMethod.POST)
    public String getURL(@RequestBody String urlVideo)
            throws Exception {
        logger.debug(urlVideo);
        return urlVideo;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String start()
            throws Exception {
        return "start";
    }

}
