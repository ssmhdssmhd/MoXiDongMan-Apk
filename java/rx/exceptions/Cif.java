package rx.exceptions;

import android.support.v4.s80;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import rx.plugins.Cnew;

/* renamed from: rx.exceptions.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif extends RuntimeException {
    private static final long serialVersionUID = -569558213262703934L;
    private final boolean hasValue;
    private final Object value;

    /* renamed from: rx.exceptions.if$do, reason: invalid class name */
    public static class Cdo extends RuntimeException {
        private static final long serialVersionUID = -3454462756050397899L;
        private final Object value;

        /* renamed from: rx.exceptions.if$do$do, reason: invalid class name and collision with other inner class name */
        public static final class C0505do {

            /* renamed from: do, reason: not valid java name */
            public static final Set<Class<?>> f34360do = m38328do();

            /* renamed from: do, reason: not valid java name */
            private static Set<Class<?>> m38328do() {
                HashSet hashSet = new HashSet();
                hashSet.add(Boolean.class);
                hashSet.add(Character.class);
                hashSet.add(Byte.class);
                hashSet.add(Short.class);
                hashSet.add(Integer.class);
                hashSet.add(Long.class);
                hashSet.add(Float.class);
                hashSet.add(Double.class);
                return hashSet;
            }
        }

        public Cdo(Object obj) {
            super("OnError while emitting onNext value: " + renderValue(obj));
            if (!(obj instanceof Serializable)) {
                try {
                    obj = String.valueOf(obj);
                } catch (Throwable th) {
                    obj = th.getMessage();
                }
            }
            this.value = obj;
        }

        public static String renderValue(Object obj) {
            if (obj == null) {
                return "null";
            }
            if (C0505do.f34360do.contains(obj.getClass())) {
                return obj.toString();
            }
            if (obj instanceof String) {
                return (String) obj;
            }
            if (obj instanceof Enum) {
                return ((Enum) obj).name();
            }
            String strM39125if = Cnew.m39185for().m39195if().m39125if(obj);
            if (strM39125if != null) {
                return strM39125if;
            }
            return obj.getClass().getName() + ".class";
        }

        public Object getValue() {
            return this.value;
        }
    }

    private Cif(Throwable th) {
        super(th);
        this.hasValue = false;
        this.value = null;
    }

    public static Throwable addValueAsLastCause(Throwable th, Object obj) {
        if (th == null) {
            th = new NullPointerException();
        }
        Throwable thM7298if = s80.m7298if(th);
        if ((thM7298if instanceof Cdo) && ((Cdo) thM7298if).getValue() == obj) {
            return th;
        }
        s80.m7294do(th, new Cdo(obj));
        return th;
    }

    public static Cif from(Throwable th) {
        if (th == null) {
            th = new NullPointerException();
        }
        Throwable thM7298if = s80.m7298if(th);
        return thM7298if instanceof Cdo ? new Cif(th, ((Cdo) thM7298if).getValue()) : new Cif(th);
    }

    public Object getValue() {
        return this.value;
    }

    public boolean isValueNull() {
        return this.hasValue;
    }

    private Cif(Throwable th, Object obj) {
        super(th);
        this.hasValue = true;
        if (!(obj instanceof Serializable)) {
            try {
                obj = String.valueOf(obj);
            } catch (Throwable th2) {
                obj = th2.getMessage();
            }
        }
        this.value = obj;
    }
}
