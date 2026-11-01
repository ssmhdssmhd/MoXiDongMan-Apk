package com.google.common.eventbus;

import android.support.v4.a32;
import android.support.v4.af1;
import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.hf2;
import android.support.v4.l1;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;

/* renamed from: com.google.common.eventbus.new, reason: invalid class name */
/* loaded from: classes2.dex */
class Cnew {

    /* renamed from: do, reason: not valid java name */
    @hf2
    private Cfor f14946do;

    /* renamed from: for, reason: not valid java name */
    private final Method f14947for;

    /* renamed from: if, reason: not valid java name */
    @af2
    public final Object f14948if;

    /* renamed from: new, reason: not valid java name */
    private final Executor f14949new;

    /* renamed from: com.google.common.eventbus.new$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Object f14950do;

        public Cdo(Object obj) {
            this.f14950do = obj;
        }

        @Override // java.lang.Runnable
        public void run() throws IllegalAccessException, IllegalArgumentException {
            try {
                Cnew.this.mo16641case(this.f14950do);
            } catch (InvocationTargetException e) {
                Cnew.this.f14946do.m16620if(e.getCause(), Cnew.this.m16638for(this.f14950do));
            }
        }
    }

    @af2
    /* renamed from: com.google.common.eventbus.new$if, reason: invalid class name */
    public static final class Cif extends Cnew {
        public /* synthetic */ Cif(Cfor cfor, Object obj, Method method, Cdo cdo) {
            this(cfor, obj, method);
        }

        @Override // com.google.common.eventbus.Cnew
        /* renamed from: case */
        public void mo16641case(Object obj) throws InvocationTargetException {
            synchronized (this) {
                super.mo16641case(obj);
            }
        }

        private Cif(Cfor cfor, Object obj, Method method) {
            super(cfor, obj, method, null);
        }
    }

    public /* synthetic */ Cnew(Cfor cfor, Object obj, Method method, Cdo cdo) {
        this(cfor, obj, method);
    }

    /* renamed from: else, reason: not valid java name */
    private static boolean m16637else(Method method) {
        return method.getAnnotation(l1.class) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public a32 m16638for(Object obj) {
        return new a32(this.f14946do, obj, this.f14948if, this.f14947for);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cnew m16640new(Cfor cfor, Object obj, Method method) {
        return m16637else(method) ? new Cnew(cfor, obj, method) : new Cif(cfor, obj, method, null);
    }

    @af2
    /* renamed from: case, reason: not valid java name */
    public void mo16641case(Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        try {
            this.f14947for.invoke(this.f14948if, af1.m205continue(obj));
        } catch (IllegalAccessException e) {
            throw new Error("Method became inaccessible: " + obj, e);
        } catch (IllegalArgumentException e2) {
            throw new Error("Method rejected target/argument: " + obj, e2);
        } catch (InvocationTargetException e3) {
            if (!(e3.getCause() instanceof Error)) {
                throw e3;
            }
            throw ((Error) e3.getCause());
        }
    }

    public final boolean equals(@b51 Object obj) {
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return this.f14948if == cnew.f14948if && this.f14947for.equals(cnew.f14947for);
    }

    public final int hashCode() {
        return ((this.f14947for.hashCode() + 31) * 31) + System.identityHashCode(this.f14948if);
    }

    /* renamed from: try, reason: not valid java name */
    public final void m16642try(Object obj) {
        this.f14949new.execute(new Cdo(obj));
    }

    private Cnew(Cfor cfor, Object obj, Method method) {
        this.f14946do = cfor;
        this.f14948if = af1.m205continue(obj);
        this.f14947for = method;
        method.setAccessible(true);
        this.f14949new = cfor.m16618do();
    }
}
