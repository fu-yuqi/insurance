package cn.com.edor.mq;

import org.apache.rocketmq.client.producer.SendResult;
import org.apache.rocketmq.spring.core.RocketMQTemplate;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.messaging.Message;
import org.springframework.messaging.support.MessageBuilder;


@SpringBootTest
public class RocketMqSendMessageTest {

    @Autowired
    private RocketMQTemplate rocketMQTemplate;

    @Test
    public void sendMessageTest() {
        String topic = "test-topic";
        Message<String> msg = MessageBuilder.withPayload("Hello,RocketMQ").build();
        rocketMQTemplate.send(topic, msg);
    }

}
