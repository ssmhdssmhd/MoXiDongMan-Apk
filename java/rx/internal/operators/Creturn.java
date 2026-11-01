package rx.internal.operators;

import java.io.Serializable;
import rx.Observer;

/* renamed from: rx.internal.operators.return, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Creturn {

    /* renamed from: do, reason: not valid java name */
    private static final Object f35308do = new Cdo();

    /* renamed from: if, reason: not valid java name */
    private static final Object f35309if = new Cif();

    /* renamed from: rx.internal.operators.return$do, reason: invalid class name */
    public static class Cdo implements Serializable {
        private static final long serialVersionUID = 1;

        public String toString() {
            return "Notification=>Completed";
        }
    }

    /* renamed from: rx.internal.operators.return$for, reason: invalid class name */
    public static final class Cfor implements Serializable {
        private static final long serialVersionUID = 3;
        public final Throwable e;

        public Cfor(Throwable th) {
            this.e = th;
        }

        public String toString() {
            return "Notification=>Error:" + this.e;
        }
    }

    /* renamed from: rx.internal.operators.return$if, reason: invalid class name */
    public static class Cif implements Serializable {
        private static final long serialVersionUID = 2;

        public String toString() {
            return "Notification=>NULL";
        }
    }

    private Creturn() {
    }

    /* renamed from: break, reason: not valid java name */
    public static <T> Object m38682break(T t) {
        return t == null ? f35309if : t;
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m38683case(Object obj) {
        return obj == f35308do;
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> boolean m38684do(Observer<? super T> observer, Object obj) {
        if (obj == f35308do) {
            observer.onCompleted();
            return true;
        }
        if (obj == f35309if) {
            observer.onNext(null);
            return false;
        }
        if (obj == null) {
            throw new IllegalArgumentException("The lite notification can not be null");
        }
        if (obj.getClass() == Cfor.class) {
            observer.onError(((Cfor) obj).e);
            return true;
        }
        observer.onNext(obj);
        return false;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m38685else(Object obj) {
        return obj instanceof Cfor;
    }

    /* renamed from: for, reason: not valid java name */
    public static Object m38686for(Throwable th) {
        return new Cfor(th);
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m38687goto(Object obj) {
        return (obj == null || m38685else(obj) || m38683case(obj)) ? false : true;
    }

    /* renamed from: if, reason: not valid java name */
    public static Object m38688if() {
        return f35308do;
    }

    /* renamed from: new, reason: not valid java name */
    public static Throwable m38689new(Object obj) {
        return ((Cfor) obj).e;
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m38690this(Object obj) {
        return obj == f35309if;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: try, reason: not valid java name */
    public static <T> T m38691try(Object obj) {
        if (obj == f35309if) {
            return null;
        }
        return obj;
    }
}
