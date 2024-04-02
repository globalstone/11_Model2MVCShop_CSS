package com.model2.mvc.service.kakao.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.model2.mvc.service.domain.Kakao;
import com.model2.mvc.service.kakao.KakaoDao;
import com.model2.mvc.service.kakao.KakaoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

@Service("kakaoServiceImpl")
public class KakaoServiceImpl implements KakaoService {

    @Autowired
    @Qualifier("kakaoDaoImpl")
    private KakaoDao kakaoDao;

    public Kakao getUserInfo(String access_Token) throws Exception {
        HashMap<String, Object> userInfo = new HashMap<String, Object>();
        String reqURL = "https://kapi.kakao.com/v2/user/me";
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Authorization", "Bearer " + access_Token);
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);
            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line = "";
            String result = "";
            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);
            JsonParser parser = new JsonParser();
            JsonElement element = parser.parse(result);
            JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
            JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
            String nickname = properties.getAsJsonObject().get("nickname").getAsString();
            String email = kakao_account.getAsJsonObject().get("email").getAsString();
            userInfo.put("nickname", nickname);
            userInfo.put("email", email);
        } catch (IOException e) {
            e.printStackTrace();
        }

        // catch 아래 코드 추가.
        Kakao result = kakaoDao.findkakao(userInfo);
        // 위 코드는 먼저 정보가 저장되있는지 확인하는 코드.
        System.out.println("S:" + result);
        if(result==null) {
            // result가 null이면 정보가 저장이 안되있는거므로 정보를 저장.
            kakaoDao.kakaoinsert(userInfo);
            // 위 코드가 정보를 저장하기 위해 Repository로 보내는 코드임.
            return kakaoDao.findkakao(userInfo);
            // 위 코드는 정보 저장 후 컨트롤러에 정보를 보내는 코드임.
            //  result를 리턴으로 보내면 null이 리턴되므로 위 코드를 사용.
        } else {
            return result;
            // 정보가 이미 있기 때문에 result를 리턴함.
        }
    }
}
