package cn.edu.ujn.services.impl;

import cn.edu.ujn.dao.StudentMapper;
import cn.edu.ujn.model.Student;
import cn.edu.ujn.services.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements IStudentService {

    @Autowired
    StudentMapper studentMapper;

    @Override
    public Integer insertStudent(Student student) {
        int i = studentMapper.insert(student);
        return i;
    }
    @Override
    public Student selectByLoginame(String s){
        Student student = studentMapper.selectByLoginame(s);
        return student;
    }

    @Override
    public Student selectByStuno(String stuno) {
        Student student = studentMapper.selectByStuno(stuno);
        return student;
    }

    @Override
    public Integer updateStudent(Student student) {
        int i = studentMapper.updateByPrimaryKey(student);
        return i;
    }

    @Override
    public String selectImageByLoginame(String loginame) {
        String photo = studentMapper.selectImageByLoginame(loginame);
        return photo;
    }

    @Override
    public Integer updateSafe(Student student) {
        int i =studentMapper.updateSafe(student);
        return i;
    }

    @Override
    public Integer updatePersonal(Student student) {
        int i =studentMapper.updatePersonal(student);
        return i;
    }

}
