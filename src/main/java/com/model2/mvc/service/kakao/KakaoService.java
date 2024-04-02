package com.model2.mvc.service.kakao;

import com.model2.mvc.service.domain.Kakao;

public interface KakaoService {

    public Kakao getUserInfo(String access_Token) throws Exception;


}
