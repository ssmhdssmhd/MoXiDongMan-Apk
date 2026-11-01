package com.sun.script.util;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.security.AccessControlContext;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import javax.script.Invocable;
import javax.script.ScriptException;

/* loaded from: classes2.dex */
public class InterfaceImplementor {
    private Invocable engine;

    public final class InterfaceImplementorInvocationHandler implements InvocationHandler {
        private AccessControlContext accCtxt;
        private Object thiz;

        public InterfaceImplementorInvocationHandler(Object obj, AccessControlContext accessControlContext) {
            this.thiz = obj;
            this.accCtxt = accessControlContext;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, final Method method, Object[] objArr) throws Throwable {
            final Object[] objArrConvertArguments = InterfaceImplementor.this.convertArguments(method, objArr);
            return InterfaceImplementor.this.convertResult(method, AccessController.doPrivileged(new PrivilegedExceptionAction<Object>() { // from class: com.sun.script.util.InterfaceImplementor.InterfaceImplementorInvocationHandler.1
                @Override // java.security.PrivilegedExceptionAction
                public Object run() throws Exception {
                    return InterfaceImplementorInvocationHandler.this.thiz == null ? InterfaceImplementor.this.engine.invokeFunction(method.getName(), objArrConvertArguments) : InterfaceImplementor.this.engine.invokeMethod(InterfaceImplementorInvocationHandler.this.thiz, method.getName(), objArrConvertArguments);
                }
            }, this.accCtxt));
        }
    }

    public InterfaceImplementor(Invocable invocable) {
        this.engine = invocable;
    }

    public Object[] convertArguments(Method method, Object[] objArr) throws ScriptException {
        return objArr;
    }

    public Object convertResult(Method method, Object obj) throws ScriptException {
        return obj;
    }

    public <T> T getInterface(Object obj, Class<T> cls) throws ScriptException {
        if (cls == null || !cls.isInterface()) {
            throw new IllegalArgumentException("interface Class expected");
        }
        if (!isImplemented(obj, cls)) {
            return null;
        }
        return cls.cast(Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InterfaceImplementorInvocationHandler(obj, AccessController.getContext())));
    }

    public boolean isImplemented(Object obj, Class<?> cls) {
        return true;
    }
}
