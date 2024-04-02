package com.model2.mvc.service.kakao;

import com.model2.mvc.service.domain.Kakao;

import java.util.HashMap;

public interface KakaoDao {

    public void kakaoinsert(HashMap<String, Object> userInfo) throws Exception;

    public Kakao findkakao(HashMap<String, Object> userInfo) throws Exception;
}
