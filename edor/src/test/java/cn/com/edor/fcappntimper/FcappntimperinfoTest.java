package cn.com.edor.fcappntimper;

import cn.com.common.entity.first.Fcappntimpartinfo;
import cn.com.edor.mapper.FcappntimpartinfoMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class FcappntimperinfoTest {

    @Autowired
    private FcappntimpartinfoMapper fcappntimpartinfoMapper;

    @Test
    public void test() {
        Fcappntimpartinfo fcappntimpartinfo = new Fcappntimpartinfo();
        fcappntimpartinfo.setEnsureCode("FL0000000011123");
        fcappntimpartinfo.setImpartParamModle("11111");
        fcappntimpartinfo.setGrpNo("12000001");
        fcappntimpartinfo.setImpartCode("001");
        fcappntimpartinfo.setOperator("10000001");
        fcappntimpartinfo.setMakeDate("2024-03-29");
        fcappntimpartinfo.setMakeTime("10:21:41");
        fcappntimpartinfo.setModifyDate("2024-03-29");
        fcappntimpartinfo.setModifyTime("10:21:41");
        fcappntimpartinfoMapper.insert(fcappntimpartinfo);
    }


}
