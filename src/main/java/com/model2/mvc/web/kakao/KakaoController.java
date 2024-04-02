package com.model2.mvc.web.kakao;

import com.model2.mvc.service.domain.Kakao;
import com.model2.mvc.service.kakao.KakaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/kakao/*")
public class KakaoController {

    @Autowired
    @Qualifier("kakaoServiceImpl")
    private KakaoService ms;

    @RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
    public String kakaoLogin(@RequestParam(value = "code", required = false) String code, Model model,
                             HttpSession session) throws Exception{
        System.out.println("#########" + code);
        String access_Token = ms.getAccessToken(code);
        Kakao userInfo = ms.getUserInfo(access_Token);
        Kakao number = ms.kakaoNumber(userInfo);
        session.invalidate();
        session.setAttribute("kakaoN", userInfo.getK_name());
        session.setAttribute("kakaoE", userInfo.getK_email());
        session.setAttribute("kakaoNumber", number.getK_number());
        return "member/memberMain";
    }


}
