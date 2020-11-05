package cn.edu.ujn.dao;

import cn.edu.ujn.model.Student;

public interface StudentMapper {
    int insert(Student student);

    Student selectByStuno(String stuno);

//    int deleteByPrimaryKey(Integer id);

    Student selectByLoginame(String s);

    int updateByPrimaryKey(Student student);

    int updateSafe(Student student);

    int updatePersonal(Student student);

    String selectImageByLoginame(String loginame);
}
