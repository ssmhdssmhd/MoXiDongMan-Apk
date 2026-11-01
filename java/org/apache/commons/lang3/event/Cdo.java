package org.apache.commons.lang3.event;

import android.support.v4.ee2;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: org.apache.commons.lang3.event.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo<L> implements Serializable {
    private static final long serialVersionUID = 3593265990380473632L;

    /* renamed from: do, reason: not valid java name */
    private transient L f28705do;

    /* renamed from: if, reason: not valid java name */
    private transient L[] f28706if;
    private List<L> listeners;

    /* renamed from: org.apache.commons.lang3.event.do$do, reason: invalid class name and collision with other inner class name */
    public class C0389do implements InvocationHandler {
        public C0389do() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Iterator it = Cdo.this.listeners.iterator();
            while (it.hasNext()) {
                method.invoke(it.next(), objArr);
            }
            return null;
        }
    }

    public Cdo(Class<L> cls) {
        this(cls, Thread.currentThread().getContextClassLoader());
    }

    public static <T> Cdo<T> create(Class<T> cls) {
        return new Cdo<>(cls);
    }

    /* renamed from: do, reason: not valid java name */
    private void m32365do(Class<L> cls, ClassLoader classLoader) {
        this.f28705do = cls.cast(Proxy.newProxyInstance(classLoader, new Class[]{cls}, createInvocationHandler()));
    }

    /* renamed from: if, reason: not valid java name */
    private void m32366if(Class<L> cls, ClassLoader classLoader) {
        this.f28706if = (L[]) ((Object[]) Array.newInstance((Class<?>) cls, 0));
        m32365do(cls, classLoader);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Object[] objArr = (Object[]) objectInputStream.readObject();
        this.listeners = new CopyOnWriteArrayList(objArr);
        m32366if(objArr.getClass().getComponentType(), Thread.currentThread().getContextClassLoader());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new ByteArrayOutputStream());
        for (L l : this.listeners) {
            try {
                objectOutputStream2.writeObject(l);
                arrayList.add(l);
            } catch (IOException unused) {
                objectOutputStream2 = new ObjectOutputStream(new ByteArrayOutputStream());
            }
        }
        objectOutputStream.writeObject(arrayList.toArray(this.f28706if));
    }

    public void addListener(L l) {
        ee2.m1832instanceof(l, "Listener object cannot be null.", new Object[0]);
        this.listeners.add(l);
    }

    public InvocationHandler createInvocationHandler() {
        return new C0389do();
    }

    public L fire() {
        return this.f28705do;
    }

    public int getListenerCount() {
        return this.listeners.size();
    }

    public L[] getListeners() {
        return (L[]) this.listeners.toArray(this.f28706if);
    }

    public void removeListener(L l) {
        ee2.m1832instanceof(l, "Listener object cannot be null.", new Object[0]);
        this.listeners.remove(l);
    }

    public Cdo(Class<L> cls, ClassLoader classLoader) {
        this();
        ee2.m1832instanceof(cls, "Listener interface cannot be null.", new Object[0]);
        ee2.m1832instanceof(classLoader, "ClassLoader cannot be null.", new Object[0]);
        ee2.m1839public(cls.isInterface(), "Class {0} is not an interface", cls.getName());
        m32366if(cls, classLoader);
    }

    private Cdo() {
        this.listeners = new CopyOnWriteArrayList();
    }
}
