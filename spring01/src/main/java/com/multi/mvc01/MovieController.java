package com.multi.mvc01;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MovieController {
	
	@RequestMapping("movie")
	public String movie(String movie) {
		System.out.println("브라우저로 전달받은 값은 " + movie);
		
//		if (movie.equals("드라마")) {
//			return "drama";
//		}else if (movie.equals("코미디")) {
//			return "comidy";
//		}else if (movie.equals("액션")) {
//			return "action";
//		}else {
//			return "no";
//		}
		
		//switch문으로 해봄!
		String s ="";
		switch (movie) {
		case "드라마":
			s = "drama";
			break;
		case "코미디":
			s = "comedy";
			break;
		case "액션":
			s =  "action";
			break;
		default:
			s = "no1";
			break;
		}
		return s;
		
	}
}
