package cn.edu.ujn.controller;

import cn.edu.ujn.model.Student;
import cn.edu.ujn.model.testAJAX;
import cn.edu.ujn.services.IStudentService;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;
import java.util.UUID;

@Controller
public class StudentController {

    @Autowired
    IStudentService studentService;

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    private String doSave(@RequestParam("stuno") String stuno, @RequestParam("stuname") String sname, @RequestParam("loginame") String username, @RequestParam("loginpwd") String password, @RequestParam("stutype") int stutype, @RequestParam("gender") String gender) throws UnsupportedEncodingException {
        Student student = new Student();
        System.out.println(sname);
        student.setStuno(stuno);
        student.setStuname(sname);
        student.setLoginame(username);
        student.setLoginpwd(password);
        student.setStutype(stutype);
        student.setGender(gender);
        Student student1 = studentService.selectByStuno(stuno);
        System.out.println(student1);
        if (student1 != null) return "pages/fail";
        Integer integer = studentService.insertStudent(student);
        System.out.println("integer = " + integer);
        if (integer == 1) return "pages/welcome";
        else return "pages/fail";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    private ModelAndView doLogin(@RequestParam("loginame") String username, @RequestParam("loginpwd") String password, HttpServletRequest request) throws UnsupportedEncodingException {
        Student student = studentService.selectByLoginame(username);
        ModelAndView modelAndView = new ModelAndView();
        request.getSession().setAttribute("currentUser", student);
        if (student == null)
            modelAndView.setViewName("pages/fail");
//        else
        modelAndView.setViewName("pages/homepage");
        return new ModelAndView("redirect:/pages/homepage.jsp");
    }

    @RequestMapping(value = "/homepageupdate", method = RequestMethod.POST)
    private ModelAndView doUpdate(@RequestParam("loginame") String loginame, @RequestParam("phone") String phone, @RequestParam("openid") String openid,
                                  @RequestParam("qqno") String qqno, @RequestParam("email") String email, @RequestParam("classname") String classname,
                                  @RequestParam("stutype") int stutype, @RequestParam("stuname") String stuname, @RequestParam MultipartFile photo,
                                  @RequestParam("gender") String gender, HttpServletRequest request) throws UnsupportedEncodingException {
        Student student = new Student();
        student = studentService.selectByLoginame(loginame);
        student.setClassname(classname);
        student.setQqno(qqno);
        student.setOpenid(openid);
        student.setStutype(stutype);
        student.setEmail(email);
        student.setPhone(phone);
        student.setStuname(stuname);
        student.setGender(gender);
        if (!photo.isEmpty()) {
            System.out.println("Enter The File Method!!!");
            String path = request.getServletContext().getRealPath("web/pic/");
            File dir = new File(path);

            if (!dir.isDirectory())
                dir.mkdir();
            //给文件一个新的名字
            String filename = UUID.randomUUID().toString().replaceAll("-", "");

            //获取文件的扩展名
            String ext = FilenameUtils.getExtension(photo.getOriginalFilename());
            student.setPhoto(filename + "." + ext);
            try {
                //把文件存到指定的位置
                photo.transferTo(new File(path + filename + "." + ext));
            } catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        int i = studentService.updateStudent(student);
        System.out.println(i);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("currentUser", student);
        modelAndView.setViewName("pages/homepage");
        return modelAndView;
    }

    @RequestMapping("/updateSafe")
    private ModelAndView doUpdateSafe(HttpServletRequest request, @RequestParam("question") String question, @RequestParam("answer") String answer) {
        ModelAndView modelAndView = new ModelAndView();
        String loginame = request.getParameter("loginame");
        Student student = studentService.selectByLoginame(loginame);
        student.setAnswer(answer);
        student.setQuestion(question);
        int i = studentService.updateSafe(student);
        modelAndView.addObject("currentUser", student);
        modelAndView.setViewName("pages/homepage");
        return modelAndView;
    }

    @RequestMapping(value = "/updatePersonal", method = RequestMethod.POST, produces = {"application/json;charset=UTF-8"})
    private ModelAndView doUpdatePersonal(@RequestParam String country, @RequestParam String nation,
                                          @RequestParam String origin, @RequestParam String whereabouts,
                                          @RequestParam String fathername, @RequestParam String fatherphone,
                                          @RequestParam String mothername, @RequestParam String mothephone,
                                          @RequestParam String roommateinfo, @RequestParam String nowaddress,HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        Student student = studentService.selectByLoginame(request.getParameter("loginame"));
        student.setCountry(country);
        student.setNation(nation);
        student.setOrigin(origin);
        student.setWhereabouts(whereabouts);
        student.setNowaddress(nation);
        student.setFathername(fathername);
        student.setFatherphone(fatherphone);
        student.setMothername(mothername);
        student.setMothephone(mothephone);
        student.setMothephone(mothephone);
        student.setNowaddress(nowaddress);
        student.setRoommateinfo(roommateinfo);
        studentService.updatePersonal(student);
        student = studentService.selectByLoginame(request.getParameter("loginame"));
        request.getSession().setAttribute("currentUser", student);
        modelAndView.setViewName("pages/homepage");
        return  modelAndView;
    }


    @RequestMapping("/uploadfile")
    private String doUploadFile(@RequestParam MultipartFile pic, HttpServletRequest request) {
        String path = request.getServletContext().getRealPath("web/pic/");
        System.out.println(path);
        File dir = new File(path);
        if (!dir.isDirectory())
            dir.mkdir();
        //给文件一个新的名字
        String filename = UUID.randomUUID().toString().replaceAll("-", "");

        //获取文件的扩展名
        String ext = FilenameUtils.getExtension(pic.getOriginalFilename());
        try {
            //把文件存到指定的位置
            pic.transferTo(new File(path + filename + "." + ext));
        } catch (IllegalStateException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        Student student = new Student();
//        student.setPhoto();
        return "pages/uploadFile";
    }


    @RequestMapping("/hometosafe")
    private ModelAndView doHomeToSafe(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView();
        String loginame = request.getParameter("loginame");
        Student student = new Student();
        student = studentService.selectByLoginame(loginame);
        modelAndView.addObject("currentStudent", student);
        modelAndView.setViewName("pages/accountsafe");
        return modelAndView;
    }


}
