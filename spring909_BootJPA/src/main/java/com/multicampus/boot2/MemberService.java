package com.multicampus.boot2;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	private MemberDAOInterface memberRepository;
	
	public MemberVO save(MemberVO vo) {
		MemberVO vo2 = memberRepository.save(vo);
		return vo2;
	}
	
	public void delete(MemberVO vo) {
		memberRepository.delete(vo);
	}
	
	public Optional<MemberVO> findById(Long id){
		Optional<MemberVO> vo = memberRepository.findById(id);
		System.out.println("service result>> " + vo);
		return vo;
	}	
	
	public List<MemberVO> findAll() {
		List<MemberVO> list = memberRepository.findAll();
		System.out.println("service result>> " + list);
		return list;
	}
	
	public MemberVO update(MemberVO vo) {
		MemberVO vo2 = memberRepository.findById(vo.getId()).orElseThrow(() -> {
			return new IllegalArgumentException("id>> " + vo.getId() +"가 존재하지 않습니다.");
		});
		vo2.setPw(vo.getTel());
		System.out.println("service update result>> " + vo2);
		MemberVO vo3 = memberRepository.save(vo2);
		System.out.println("service save result>> " + vo3);
		return vo3;
	}
}
