package com.multicampus.boot2;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAOInterface extends JpaRepository<MemberVO, Long> {
//아무것도 구현하지 않아요.! 
	
}
