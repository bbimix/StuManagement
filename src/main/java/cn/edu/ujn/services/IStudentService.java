package cn.edu.ujn.services;

import cn.edu.ujn.model.Student;

public interface IStudentService {
    public Integer insertStudent(Student student);

    public Student selectByLoginame(String s);

    public Student selectByStuno(String stuno);

    public Integer updateStudent(Student student);

    public String selectImageByLoginame(String loginame);

    public Integer updateSafe(Student student);

    public Integer updatePersonal(Student student);

}
