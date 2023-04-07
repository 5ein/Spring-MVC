package com.multi.mvc700;

public class TourVO {
	int no;
	String area;
	String place;
	String review;
	int grade;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	@Override
	public String toString() {
		return "TourVO [no=" + no + ", area=" + area + ", place=" + place + ", review=" + review + ", grade=" + grade
				+ "]";
	}
	
}
