package rx.internal.util;

import rx.functions.Func1;

/* renamed from: rx.internal.util.this, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cthis {

    /* renamed from: rx.internal.util.this$do, reason: invalid class name */
    public enum Cdo implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // rx.functions.Func1
        public Boolean call(Object obj) {
            return Boolean.FALSE;
        }
    }

    /* renamed from: rx.internal.util.this$for, reason: invalid class name */
    public enum Cfor implements Func1<Object, Object> {
        INSTANCE;

        @Override // rx.functions.Func1
        public Object call(Object obj) {
            return obj;
        }
    }

    /* renamed from: rx.internal.util.this$if, reason: invalid class name */
    public enum Cif implements Func1<Object, Boolean> {
        INSTANCE;

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // rx.functions.Func1
        public Boolean call(Object obj) {
            return Boolean.TRUE;
        }
    }

    private Cthis() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: do, reason: not valid java name */
    public static <T> Func1<? super T, Boolean> m38928do() {
        return Cdo.INSTANCE;
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Func1<T, T> m38929for() {
        return Cfor.INSTANCE;
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> Func1<? super T, Boolean> m38930if() {
        return Cif.INSTANCE;
    }
}
