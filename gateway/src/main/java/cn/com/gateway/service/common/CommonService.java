package cn.com.gateway.service.common;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CommonService {
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    public void saveByNewTransaction(Runnable runnable){runnable.run();};
}
