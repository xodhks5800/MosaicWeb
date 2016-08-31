package org.zerock.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAdvice {
	
//	static Logger log = LoggerFactory.getLogger(LoggingAdvice.class);
	
	// 실제호출된 메소드 이전에 끼워넣는 advice 
	@Before("execution(* org.zerock.aop.test.*.*(..))") //Before Advice / Pointcut
	public void beforeLogging(JoinPoint jp){
		Logger log = LoggerFactory.getLogger(jp.getTarget().getClass());
		log.info("###################");
		log.info("##### START.. #####");
		log.info("###################");

	}

	// 실제호출된 메소드 이후에 끼워넣는 advice                     
	@After("execution(* org.zerock.aop.test.*.*(..))") // After Advice
	public void afterLogging(JoinPoint jp) {
		Logger log = LoggerFactory.getLogger(jp.getTarget().getClass());
		log.info("###################");
		log.info("##### END .. ######");
		log.info("###################");
	}
	
	// 실제호출된 메소드 양쪽에 끼워넣는 Advice는 around advice
}
