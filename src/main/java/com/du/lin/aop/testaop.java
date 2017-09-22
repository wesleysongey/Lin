package com.du.lin.aop;

import java.lang.reflect.Method;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

import com.du.lin.annotation.BizLog;

@Aspect
//@Component
public class testaop {
	@Pointcut("@annotation(com.du.lin.annotation.BizLog)")
	public void cuttest(){}
	
	@Around("cuttest()")
	public Object test(ProceedingJoinPoint point) throws Throwable{
		Signature sign = point.getSignature();
		MethodSignature msign = null;
		if (!(sign instanceof MethodSignature)) {
			throw new IllegalArgumentException("只可用于方法");
		}
		msign = (MethodSignature) sign;
		
		Object target = point.getTarget();
		
		Method method = target.getClass().getMethod(msign.getName(), msign.getParameterTypes());
		
		BizLog bizLog = method.getAnnotation(BizLog.class);
		
		String bizName = bizLog.value();
		
		String methodName = method.getName();
		
		System.out.println(bizName);
		System.out.println(target.getClass().getName());
		System.out.println(msign.getName());
		
		System.out.println("before  " + methodName);
		Object result = point.proceed();
		System.out.println("after   " + methodName);
		return result;
	}
	
}
