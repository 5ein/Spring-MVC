package com.multi.mvc902;

import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class WebSocketController {
	
	@MessageMapping("/chat2") //채팅 내용 받을 때 사용하는 주소
	@SendTo("/topic/messages2")
	public OutputMessage2 send2(Message message) { //from: guest, text:1
		System.out.println("받은 데이터>> " + message);
		OutputMessage2 out = new OutputMessage2();
		String menu = "";
        switch (message.getText()) {
        case "1":
            menu = "챗 봇>> 10) 운동화    11) 모자    12) 가방";
            break;
        case "2":
            menu = "챗 봇>> 20) 배송조회    21) 주문완료상품조회";
            break;
        case "20":
            menu = "챗 봇>> DB에서 가지고 온 배송 상황 목록 \n" +
                        "상품명: 르꼬뿌    배송상황: 물건 준비중";
            break;
        case "10":
            menu = "챗 봇>> 100) 나이커    200) 르꼬뿌    300) 라코스또";
            break;
        case "100":
            menu = "챗 봇>> 1000) 나이커 운동화 세부 메뉴    1) 다시 처음 메뉴";
            break;
        case "1000":
            menu = "챗 봇>> 1001)나이커빨강(1만원)   1002)나이커파랑(2만원)   1003)나이커보라(3만원)   100)이전 메뉴로";
            break;
        default:
            menu = "챗 봇>>선택한 번호는 없는 메뉴입니다. 다시 입력해주세요.";
            break;
        }
		out.setMenu(menu);
		return out;
	}
	
//	@MessageMapping("/chat2")
//	@SendTo("/topic/messages2")
//	public OutputMessage2 send2(Message message) {
//		String menu = "";
//		switch (message.getText()) {
//		case "1":
//			menu = "여행지는 어디로 정하셨나요?>>  10) 산		20) 바다";
//			break;
//		case "2":
//			menu = "여행은 다음기회에..";
//			break;
//		case "10":
//			menu = "여행지는 :산  다음선택지로 이동: 교통을 입력해주세요";
//			break;
//		case "20":
//			menu = "여행지는 : 바다 다음선택지로 이동: 교통을 입력해주세요";
//			break;
//		case "교통":
//			menu = "교통수단>>  1000) 자동차	2000) 걸어다님";
//			break;
//		case "1000":
//			menu = "챗 봇>> 자동차를 타셨군요! ,다음선택지로 이동: 활동을 입력해주세요";
//			break;
//		case "2000":
//			menu = "챗 봇>> 걸어다님  ,다음선택지로 이동: 활동을 입력해주세요";
//			break;
//		case "활동":
//			menu = "챗 봇>> 활동) 활동정인것이 좋음   휴식)휴식";
//			break;
//		case "활동적":
//			menu ="활동적이네요 ,처음단계로 돌아가려면 1을 입력";
//			break;
//		case "휴식":
//			menu ="쉬고싶어요  ,처음단계로 돌아가려면 1을 입력";
//			break;
//		default:
//			menu = "챗 봇>>선택한 선택지는 없는 메뉴입니다. 다시 입력해주세요.";
//			break;
//		}
//		OutputMessage2 outputMessage2 = new OutputMessage2(menu);
//		return outputMessage2;
//	}

	@MessageMapping("/chat") //채팅 내용 받을 때 사용하는 주소
	@SendTo("/topic/messages") //가입한 주소 브라우저에 return message를 json으로 변환해서 보내줌.
	public OutputMessage send(Message message) {
		System.out.println("받은 데이터>> " + message);
		OutputMessage out = new OutputMessage();
		out.setFrom(message.getFrom());
		out.setText(message.getText());
		Date date = new Date();
		out.setTime(date.getHours() + ":" + date.getMinutes());
		return out;
	}
}
