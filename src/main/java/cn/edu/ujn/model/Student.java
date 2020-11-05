package cn.edu.ujn.model;

import java.util.Date;

public class Student {
    private int stu_guid;
    private String stuno;//学号
    private String stuname;//学生真名
    private String loginame;//学生登录名
    private String loginpwd;//学生登陆密码
    private int stutype;//学生类别0导师制学生，1研究生，2班内学生（班主任），3编制外学生
    private String oldname;//曾用名
    private String classname;//班级
    private String gender;
    private String email;
    private String phone;//手机号
    private String photo;
    private String Introduction;
    private String nation;
    private String country;
    private String origin;
    private String nowaddress;
    private String zipcode;
    private String Personid;
    private Date birthday;
    private String question;
    private String answer;
    private String openid;
    private String qqno;
    private String fathername;
    private String fatherphone;
    private String mothername;
    private String mothephone;
    private String whereabouts;
    private String Roommateinfo;
    private String PersonImages;
    private String personPageno;
    private String reserve1;
    private String reserve2;
    private String reserve3;
    private String reserve4;
    private String reserve5;
    private int status;
    private int checked;
    private int deleted;
    private Date deleted_at;
    private String creator;
    private Date creatime;
    private String modifier;
    private Date modifytime;
    private String synguid;

    public int getStu_guid() {
        return stu_guid;
    }

    public void setStu_guid(int stu_guid) {
        this.stu_guid = stu_guid;
    }

    public String getStuno() {
        return stuno;
    }

    public void setStuno(String stuno) {
        this.stuno = stuno;
    }

    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    public String getLoginame() {
        return loginame;
    }

    public void setLoginame(String loginame) {
        this.loginame = loginame;
    }

    public String getLoginpwd() {
        return loginpwd;
    }

    public void setLoginpwd(String loginpwd) {
        this.loginpwd = loginpwd;
    }

    public int getStutype() {
        return stutype;
    }

    public void setStutype(int stutype) {
        this.stutype = stutype;
    }

    public String getOldname() {
        return oldname;
    }

    public void setOldname(String oldname) {
        this.oldname = oldname;
    }

    public String getClassname() {
        return classname;
    }

    public void setClassname(String classname) {
        this.classname = classname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getIntroduction() {
        return Introduction;
    }

    public void setIntroduction(String introduction) {
        Introduction = introduction;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getNowaddress() {
        return nowaddress;
    }

    public void setNowaddress(String nowaddress) {
        this.nowaddress = nowaddress;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }

    public String getPersonid() {
        return Personid;
    }

    public void setPersonid(String personid) {
        Personid = personid;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public String getQqno() {
        return qqno;
    }

    public void setQqno(String qqno) {
        this.qqno = qqno;
    }

    public String getFathername() {
        return fathername;
    }

    public void setFathername(String fathername) {
        this.fathername = fathername;
    }

    public String getFatherphone() {
        return fatherphone;
    }

    public void setFatherphone(String fatherphone) {
        this.fatherphone = fatherphone;
    }

    public String getMothername() {
        return mothername;
    }

    public void setMothername(String mothername) {
        this.mothername = mothername;
    }

    public String getMothephone() {
        return mothephone;
    }

    public void setMothephone(String mothephone) {
        this.mothephone = mothephone;
    }

    public String getWhereabouts() {
        return whereabouts;
    }

    public void setWhereabouts(String whereabouts) {
        this.whereabouts = whereabouts;
    }

    public String getRoommateinfo() {
        return Roommateinfo;
    }

    public void setRoommateinfo(String roommateinfo) {
        Roommateinfo = roommateinfo;
    }

    public String getPersonImages() {
        return PersonImages;
    }

    public void setPersonImages(String personImages) {
        PersonImages = personImages;
    }

    public String getPersonPageno() {
        return personPageno;
    }

    public void setPersonPageno(String personPageno) {
        this.personPageno = personPageno;
    }

    public String getReserve1() {
        return reserve1;
    }

    public void setReserve1(String reserve1) {
        this.reserve1 = reserve1;
    }

    public String getReserve2() {
        return reserve2;
    }

    public void setReserve2(String reserve2) {
        this.reserve2 = reserve2;
    }

    public String getReserve3() {
        return reserve3;
    }

    public void setReserve3(String reserve3) {
        this.reserve3 = reserve3;
    }

    public String getReserve4() {
        return reserve4;
    }

    public void setReserve4(String reserve4) {
        this.reserve4 = reserve4;
    }

    public String getReserve5() {
        return reserve5;
    }

    public void setReserve5(String reserve5) {
        this.reserve5 = reserve5;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getChecked() {
        return checked;
    }

    public void setChecked(int checked) {
        this.checked = checked;
    }

    public int getDeleted() {
        return deleted;
    }

    public void setDeleted(int deleted) {
        this.deleted = deleted;
    }

    public Date getDeleted_at() {
        return deleted_at;
    }

    public void setDeleted_at(Date deleted_at) {
        this.deleted_at = deleted_at;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Date getCreatime() {
        return creatime;
    }

    public void setCreatime(Date creatime) {
        this.creatime = creatime;
    }

    public String getModifier() {
        return modifier;
    }

    public void setModifier(String modifier) {
        this.modifier = modifier;
    }

    public Date getModifytime() {
        return modifytime;
    }

    public void setModifytime(Date modifytime) {
        this.modifytime = modifytime;
    }

    public String getSynguid() {
        return synguid;
    }

    public void setSynguid(String synguid) {
        this.synguid = synguid;
    }

    public Student() {
    }

}
