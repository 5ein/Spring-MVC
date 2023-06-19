package com.multicampus.boot2;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;


@AllArgsConstructor
@ToString
@Entity(name="member2")
@Data
@NoArgsConstructor
public class MemberVO{
	
	@Id
	private Long id;
	private String pw;
	private String name;
	private String tel;

}
