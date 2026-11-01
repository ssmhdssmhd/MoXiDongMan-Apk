package net.minidev.asm;

import android.support.v4.Cthrow;
import android.support.v4.k8;
import android.support.v4.o;
import android.support.v4.q31;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: net.minidev.asm.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo<T> {

    /* renamed from: for, reason: not valid java name */
    private static ConcurrentHashMap<Class<?>, Cdo<?>> f28178for = new ConcurrentHashMap<>();

    /* renamed from: do, reason: not valid java name */
    private HashMap<String, o> f28179do;

    /* renamed from: if, reason: not valid java name */
    private o[] f28180if;

    /* renamed from: do, reason: not valid java name */
    private static void m31541do(Cdo<?> cdo, HashMap<String, String> map) {
        if (map == null) {
            return;
        }
        HashMap map2 = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            o oVar = ((Cdo) cdo).f28179do.get(entry.getValue());
            if (oVar != null) {
                map2.put(entry.getValue(), oVar);
            }
        }
        ((Cdo) cdo).f28179do.putAll(map2);
    }

    /* renamed from: new, reason: not valid java name */
    public static <P> Cdo<P> m31542new(Class<P> cls) {
        return m31544try(cls, null);
    }

    /* renamed from: this, reason: not valid java name */
    private static LinkedList<Class<?>> m31543this(Class<?> cls) {
        LinkedList<Class<?>> linkedList = new LinkedList<>();
        while (cls != null && !cls.equals(Object.class)) {
            linkedList.addLast(cls);
            for (Class<?> cls2 : cls.getInterfaces()) {
                linkedList.addLast(cls2);
            }
            cls = cls.getSuperclass();
        }
        linkedList.addLast(Object.class);
        return linkedList;
    }

    /* renamed from: try, reason: not valid java name */
    public static <P> Cdo<P> m31544try(Class<P> cls, FieldFilter fieldFilter) throws ClassNotFoundException, SecurityException {
        String strConcat;
        Cdo<P> cdo = (Cdo) f28178for.get(cls);
        if (cdo != null) {
            return cdo;
        }
        o[] oVarArrM7928try = Cthrow.m7928try(cls, fieldFilter);
        String name = cls.getName();
        if (name.startsWith("java.util.")) {
            strConcat = "net.minidev.asm." + name + "AccAccess";
        } else {
            strConcat = name.concat("AccAccess");
        }
        Cfor cfor = new Cfor(cls.getClassLoader());
        Class<?> clsM31563for = null;
        try {
            clsM31563for = cfor.loadClass(strConcat);
        } catch (ClassNotFoundException unused) {
        }
        LinkedList<Class<?>> linkedListM31543this = m31543this(cls);
        if (clsM31563for == null) {
            Cif cif = new Cif(cls, oVarArrM7928try, cfor);
            Iterator<Class<?>> it = linkedListM31543this.iterator();
            while (it.hasNext()) {
                cif.m31564if(k8.f3324do.get(it.next()));
            }
            clsM31563for = cif.m31563for();
        }
        try {
            Cdo<P> cdo2 = (Cdo) clsM31563for.newInstance();
            cdo2.m31549const(oVarArrM7928try);
            f28178for.putIfAbsent(cls, cdo2);
            Iterator<Class<?>> it2 = linkedListM31543this.iterator();
            while (it2.hasNext()) {
                m31541do(cdo2, k8.f3325if.get(it2.next()));
            }
            return cdo2;
        } catch (Exception e) {
            throw new RuntimeException("Error constructing accessor class: " + strConcat, e);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public abstract T m31545break();

    /* renamed from: case, reason: not valid java name */
    public o[] m31546case() {
        return this.f28180if;
    }

    /* renamed from: catch, reason: not valid java name */
    public abstract void m31547catch(T t, int i, Object obj);

    /* renamed from: class, reason: not valid java name */
    public void m31548class(T t, String str, Object obj) {
        int iM31550else = m31550else(str);
        if (iM31550else != -1) {
            m31547catch(t, iM31550else, obj);
            return;
        }
        throw new q31(String.valueOf(str) + " in " + t.getClass() + " to put value : " + obj);
    }

    /* renamed from: const, reason: not valid java name */
    public void m31549const(o[] oVarArr) {
        this.f28180if = oVarArr;
        this.f28179do = new HashMap<>();
        int length = oVarArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            o oVar = oVarArr[i];
            oVar.f4390new = i2;
            this.f28179do.put(oVar.m5430for(), oVar);
            i++;
            i2++;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public int m31550else(String str) {
        o oVar = this.f28179do.get(str);
        if (oVar == null) {
            return -1;
        }
        return oVar.f4390new;
    }

    /* renamed from: for, reason: not valid java name */
    public Object m31551for(T t, String str) {
        return m31553if(t, m31550else(str));
    }

    /* renamed from: goto, reason: not valid java name */
    public HashMap<String, o> m31552goto() {
        return this.f28179do;
    }

    /* renamed from: if, reason: not valid java name */
    public abstract Object m31553if(T t, int i);
}
