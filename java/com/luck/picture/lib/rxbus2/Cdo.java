package com.luck.picture.lib.rxbus2;

import android.support.v4.b32;
import android.support.v4.td;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.Cgoto;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: com.luck.picture.lib.rxbus2.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: case, reason: not valid java name */
    private static volatile Cdo f18850case = null;

    /* renamed from: try, reason: not valid java name */
    public static final String f18851try = "RXBUS_LOG";

    /* renamed from: do, reason: not valid java name */
    private Map<Class, List<Disposable>> f18852do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private Map<Object, List<Class>> f18854if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    private Map<Class, List<b32>> f18853for = new HashMap();

    /* renamed from: new, reason: not valid java name */
    private final Cgoto<Object> f18855new = io.reactivex.subjects.Ctry.m29840else().m29814try();

    /* renamed from: com.luck.picture.lib.rxbus2.do$do, reason: invalid class name and collision with other inner class name */
    public class C0180do implements Function<Ctry, Object> {
        public C0180do() {
        }

        @Override // io.reactivex.functions.Function
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Object apply(Ctry ctry) throws Exception {
            return ctry.m23276new();
        }
    }

    /* renamed from: com.luck.picture.lib.rxbus2.do$for, reason: invalid class name */
    public class Cfor implements Consumer<Object> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ b32 f18857do;

        public Cfor(b32 b32Var) {
            this.f18857do = b32Var;
        }

        @Override // io.reactivex.functions.Consumer
        public void accept(Object obj) throws Exception {
            Cdo.this.m23254case(this.f18857do, obj);
        }
    }

    /* renamed from: com.luck.picture.lib.rxbus2.do$if, reason: invalid class name */
    public class Cif implements Predicate<Ctry> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f18859do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Class f18861if;

        public Cif(int i, Class cls) {
            this.f18859do = i;
            this.f18861if = cls;
        }

        @Override // io.reactivex.functions.Predicate
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public boolean test(Ctry ctry) throws Exception {
            return ctry.m23274for() == this.f18859do && this.f18861if.isInstance(ctry.m23276new());
        }
    }

    /* renamed from: com.luck.picture.lib.rxbus2.do$new, reason: invalid class name */
    public static /* synthetic */ class Cnew {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ int[] f18862do;

        static {
            int[] iArr = new int[com.luck.picture.lib.rxbus2.Cnew.values().length];
            f18862do = iArr;
            try {
                iArr[com.luck.picture.lib.rxbus2.Cnew.MAIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f18862do[com.luck.picture.lib.rxbus2.Cnew.NEW_THREAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f18862do[com.luck.picture.lib.rxbus2.Cnew.CURRENT_THREAD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* renamed from: com.luck.picture.lib.rxbus2.do$try, reason: invalid class name */
    public class Ctry {

        /* renamed from: do, reason: not valid java name */
        private int f18863do;

        /* renamed from: if, reason: not valid java name */
        private Object f18865if;

        public /* synthetic */ Ctry(Cdo cdo, int i, Object obj, C0180do c0180do) {
            this(i, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: for, reason: not valid java name */
        public int m23274for() {
            return this.f18863do;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: new, reason: not valid java name */
        public Object m23276new() {
            return this.f18865if;
        }

        /* renamed from: case, reason: not valid java name */
        public void m23277case(Object obj) {
            this.f18865if = obj;
        }

        /* renamed from: try, reason: not valid java name */
        public void m23278try(int i) {
            this.f18863do = i;
        }

        public Ctry() {
        }

        private Ctry(int i, Object obj) {
            this.f18863do = i;
            this.f18865if = obj;
        }
    }

    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    private io.reactivex.Cfor m23253break(io.reactivex.Cfor cfor, b32 b32Var) {
        io.reactivex.Ctry ctryM29358for;
        int i = Cnew.f18862do[b32Var.f329if.ordinal()];
        if (i == 1) {
            ctryM29358for = io.reactivex.android.schedulers.Cdo.m29358for();
        } else if (i == 2) {
            ctryM29358for = io.reactivex.schedulers.Cdo.m29774try();
        } else {
            if (i != 3) {
                throw new IllegalStateException("Unknown thread mode: " + b32Var.f329if);
            }
            ctryM29358for = io.reactivex.schedulers.Cdo.m29773this();
        }
        return cfor.t3(ctryM29358for);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: case, reason: not valid java name */
    public void m23254case(b32 b32Var, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        List<b32> list = this.f18853for.get(obj.getClass());
        if (list == null || list.size() <= 0) {
            return;
        }
        for (b32 b32Var2 : list) {
            if (((com.luck.picture.lib.rxbus2.Cfor) b32Var2.f327do.getAnnotation(com.luck.picture.lib.rxbus2.Cfor.class)).code() == b32Var.f331try && b32Var.f330new.equals(b32Var2.f330new) && b32Var.f327do.equals(b32Var2.f327do)) {
                b32Var2.m435do(obj);
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Cdo m23256else() {
        Cdo cdo = f18850case;
        if (f18850case == null) {
            synchronized (Cdo.class) {
                cdo = f18850case;
                if (f18850case == null) {
                    cdo = new Cdo();
                    f18850case = cdo;
                }
            }
        }
        return cdo;
    }

    /* renamed from: final, reason: not valid java name */
    private <T> io.reactivex.Cfor<T> m23257final(int i, Class<T> cls) {
        return this.f18855new.toFlowable(io.reactivex.Cif.BUFFER).w3(Ctry.class).v1(new Cif(i, cls)).S2(new C0180do()).j(cls);
    }

    /* renamed from: for, reason: not valid java name */
    private void m23258for(b32 b32Var) {
        int i = b32Var.f331try;
        m23262try(b32Var.f330new.getClass(), m23253break(i == -1 ? m23269super(b32Var.f328for) : m23257final(i, b32Var.f328for), b32Var).subscribe(new Cfor(b32Var)));
    }

    /* renamed from: if, reason: not valid java name */
    private void m23259if(Object obj, Class cls) {
        List<Class> arrayList = this.f18854if.get(obj);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f18854if.put(obj, arrayList);
        }
        if (arrayList.contains(cls)) {
            return;
        }
        arrayList.add(cls);
    }

    /* renamed from: new, reason: not valid java name */
    private void m23260new(Class cls, b32 b32Var) {
        List<b32> arrayList = this.f18853for.get(cls);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f18853for.put(cls, arrayList);
        }
        if (arrayList.contains(b32Var)) {
            return;
        }
        arrayList.add(b32Var);
    }

    /* renamed from: throw, reason: not valid java name */
    private void m23261throw(Class cls) {
        List<Disposable> list = this.f18852do.get(cls);
        if (list != null) {
            Iterator<Disposable> it = list.iterator();
            while (it.hasNext()) {
                Disposable next = it.next();
                if (next != null && !next.isDisposed()) {
                    next.dispose();
                    it.remove();
                }
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    private void m23262try(Class cls, Disposable disposable) {
        List<Disposable> arrayList = this.f18852do.get(cls);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f18852do.put(cls, arrayList);
        }
        if (arrayList.contains(disposable)) {
            return;
        }
        arrayList.add(disposable);
    }

    /* renamed from: while, reason: not valid java name */
    private void m23263while(Object obj, Class cls) {
        List<b32> list = this.f18853for.get(cls);
        if (list != null) {
            Iterator<b32> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().f330new.equals(obj)) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public void m23264catch(Object obj) throws SecurityException {
        for (Method method : obj.getClass().getDeclaredMethods()) {
            if (method.isAnnotationPresent(com.luck.picture.lib.rxbus2.Cfor.class)) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes != null && parameterTypes.length == 1) {
                    Class<?> cls = parameterTypes[0];
                    m23259if(obj, cls);
                    com.luck.picture.lib.rxbus2.Cfor cfor = (com.luck.picture.lib.rxbus2.Cfor) method.getAnnotation(com.luck.picture.lib.rxbus2.Cfor.class);
                    b32 b32Var = new b32(obj, method, cls, cfor.code(), cfor.threadMode());
                    m23260new(cls, b32Var);
                    m23258for(b32Var);
                } else if (parameterTypes == null || parameterTypes.length == 0) {
                    m23259if(obj, td.class);
                    com.luck.picture.lib.rxbus2.Cfor cfor2 = (com.luck.picture.lib.rxbus2.Cfor) method.getAnnotation(com.luck.picture.lib.rxbus2.Cfor.class);
                    b32 b32Var2 = new b32(obj, method, td.class, cfor2.code(), cfor2.threadMode());
                    m23260new(td.class, b32Var2);
                    m23258for(b32Var2);
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m23265class(int i) {
        this.f18855new.onNext(new Ctry(this, i, new td(), null));
    }

    /* renamed from: const, reason: not valid java name */
    public void m23266const(int i, Object obj) {
        this.f18855new.onNext(new Ctry(this, i, obj, null));
    }

    /* renamed from: goto, reason: not valid java name */
    public synchronized boolean m23267goto(Object obj) {
        return this.f18854if.containsKey(obj);
    }

    /* renamed from: import, reason: not valid java name */
    public void m23268import(Object obj) {
        List<Class> list = this.f18854if.get(obj);
        if (list != null) {
            for (Class cls : list) {
                m23261throw(obj.getClass());
                m23263while(obj, cls);
            }
            this.f18854if.remove(obj);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public <T> io.reactivex.Cfor<T> m23269super(Class<T> cls) {
        return (io.reactivex.Cfor<T>) this.f18855new.toFlowable(io.reactivex.Cif.BUFFER).w3(cls);
    }

    /* renamed from: this, reason: not valid java name */
    public void m23270this(Object obj) {
        this.f18855new.onNext(obj);
    }
}
