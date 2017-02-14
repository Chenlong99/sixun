package com.sixun.entity;

import java.io.Serializable;

/**
 * @author tk ��Ϣ¼��ʵ����
 */
public class News implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String photo;// ͷ��
	private String userName;// �û���
	private String realName;// ��ʵ����
	private String gender;// �Ա�
	private int phone;// �绰
	private String course;// ��ѵ�γ�
	private String school;// ѧУ
	private String profession;// רҵ
	private String education;// ѧ��
	private String introduction;// ���ҽ���

	public News() {
		super();
	}

	public News(String photo, String userName, String realName, String gender,
			int phone, String course, String school, String profession,
			String education, String introduction) {
		super();
		this.photo = photo;
		this.userName = userName;
		this.realName = realName;
		this.gender = gender;
		this.phone = phone;
		this.course = course;
		this.school = school;
		this.profession = profession;
		this.education = education;
		this.introduction = introduction;
	}

	public News(int id, String photo, String userName, String realName,
			String gender, int phone, String course, String school,
			String profession, String education, String introduction) {
		super();
		this.id = id;
		this.photo = photo;
		this.userName = userName;
		this.realName = realName;
		this.gender = gender;
		this.phone = phone;
		this.course = course;
		this.school = school;
		this.profession = profession;
		this.education = education;
		this.introduction = introduction;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Override
	public String toString() {
		return "News [id=" + id + ", photo=" + photo + ", userName=" + userName
				+ ", realName=" + realName + ", gender=" + gender + ", phone="
				+ phone + ", course=" + course + ", school=" + school
				+ ", profession=" + profession + ", education=" + education
				+ ", introduction=" + introduction + "]";
	}

	
}
