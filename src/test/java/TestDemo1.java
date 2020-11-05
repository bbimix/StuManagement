import cn.edu.ujn.model.Student;
import cn.edu.ujn.services.IStudentService;
import cn.edu.ujn.services.impl.StudentServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TestDemo1 {

    @Autowired
    IStudentService studentService;



    @Test
    public void test01(){

    }
}
