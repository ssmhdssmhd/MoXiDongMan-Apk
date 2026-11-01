package rx.functions;

import android.support.v4.y61;

/* renamed from: rx.functions.do, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final Cconst f34361do = new Cconst();

    /* JADX INFO: Add missing generic type declarations: [T4, T5, T6, R, T7, T1, T2, T3] */
    /* renamed from: rx.functions.do$break, reason: invalid class name */
    public static class Cbreak<R, T1, T2, T3, T4, T5, T6, T7> implements Func7<T1, T2, T3, T4, T5, T6, T7, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action7 f34362do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34363if;

        public Cbreak(Action7 action7, Object obj) {
            this.f34362do = action7;
            this.f34363if = obj;
        }

        @Override // rx.functions.Func7
        public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
            this.f34362do.call(t1, t2, t3, t4, t5, t6, t7);
            return (R) this.f34363if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R, T1, T2, T3] */
    /* renamed from: rx.functions.do$case, reason: invalid class name */
    public static class Ccase<R, T1, T2, T3> implements Func3<T1, T2, T3, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action3 f34364do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34365if;

        public Ccase(Action3 action3, Object obj) {
            this.f34364do = action3;
            this.f34365if = obj;
        }

        @Override // rx.functions.Func3
        public R call(T1 t1, T2 t2, T3 t3) {
            this.f34364do.call(t1, t2, t3);
            return (R) this.f34365if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T4, T5, T6, R, T7, T8, T1, T2, T3] */
    /* renamed from: rx.functions.do$catch, reason: invalid class name */
    public static class Ccatch<R, T1, T2, T3, T4, T5, T6, T7, T8> implements Func8<T1, T2, T3, T4, T5, T6, T7, T8, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action8 f34366do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34367if;

        public Ccatch(Action8 action8, Object obj) {
            this.f34366do = action8;
            this.f34367if = obj;
        }

        @Override // rx.functions.Func8
        public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
            this.f34366do.call(t1, t2, t3, t4, t5, t6, t7, t8);
            return (R) this.f34367if;
        }
    }

    /* renamed from: rx.functions.do$class, reason: invalid class name */
    public static final class Cclass<T> implements Action1<T> {

        /* renamed from: do, reason: not valid java name */
        public final Action0 f34368do;

        public Cclass(Action0 action0) {
            this.f34368do = action0;
        }

        @Override // rx.functions.Action1
        public void call(T t) {
            this.f34368do.call();
        }
    }

    /* renamed from: rx.functions.do$const, reason: invalid class name */
    public static final class Cconst<T0, T1, T2, T3, T4, T5, T6, T7, T8> implements Action0, Action1<T0>, Action2<T0, T1>, Action3<T0, T1, T2>, Action4<T0, T1, T2, T3>, Action5<T0, T1, T2, T3, T4>, Action6<T0, T1, T2, T3, T4, T5>, Action7<T0, T1, T2, T3, T4, T5, T6>, Action8<T0, T1, T2, T3, T4, T5, T6, T7>, Action9<T0, T1, T2, T3, T4, T5, T6, T7, T8>, ActionN {
        @Override // rx.functions.Action0
        public void call() {
        }

        @Override // rx.functions.Action1
        public void call(T0 t0) {
        }

        @Override // rx.functions.Action2
        public void call(T0 t0, T1 t1) {
        }

        @Override // rx.functions.Action3
        public void call(T0 t0, T1 t1, T2 t2) {
        }

        @Override // rx.functions.Action4
        public void call(T0 t0, T1 t1, T2 t2, T3 t3) {
        }

        @Override // rx.functions.Action5
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4) {
        }

        @Override // rx.functions.Action6
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
        }

        @Override // rx.functions.Action7
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
        }

        @Override // rx.functions.Action8
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7) {
        }

        @Override // rx.functions.Action9
        public void call(T0 t0, T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8) {
        }

        @Override // rx.functions.ActionN
        public void call(Object... objArr) {
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T4, T5, T6, R, T7, T8, T9, T1, T2, T3] */
    /* renamed from: rx.functions.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0506do<R, T1, T2, T3, T4, T5, T6, T7, T8, T9> implements Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action9 f34369do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34370if;

        public C0506do(Action9 action9, Object obj) {
            this.f34369do = action9;
            this.f34370if = obj;
        }

        @Override // rx.functions.Func9
        public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6, T7 t7, T8 t8, T9 t9) {
            this.f34369do.call(t1, t2, t3, t4, t5, t6, t7, t8, t9);
            return (R) this.f34370if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T4, R, T1, T2, T3] */
    /* renamed from: rx.functions.do$else, reason: invalid class name */
    public static class Celse<R, T1, T2, T3, T4> implements Func4<T1, T2, T3, T4, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action4 f34371do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34372if;

        public Celse(Action4 action4, Object obj) {
            this.f34371do = action4;
            this.f34372if = obj;
        }

        @Override // rx.functions.Func4
        public R call(T1 t1, T2 t2, T3 t3, T4 t4) {
            this.f34371do.call(t1, t2, t3, t4);
            return (R) this.f34372if;
        }
    }

    /* renamed from: rx.functions.do$final, reason: invalid class name */
    public enum Cfinal implements Action1<Throwable> {
        INSTANCE;

        @Override // rx.functions.Action1
        public void call(Throwable th) {
            throw new y61(th);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.do$for, reason: invalid class name */
    public static class Cfor<R> implements Func0<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f34374do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34375if;

        public Cfor(Action0 action0, Object obj) {
            this.f34374do = action0;
            this.f34375if = obj;
        }

        @Override // rx.functions.Func0, java.util.concurrent.Callable
        public R call() {
            this.f34374do.call();
            return (R) this.f34375if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T4, T5, R, T1, T2, T3] */
    /* renamed from: rx.functions.do$goto, reason: invalid class name */
    public static class Cgoto<R, T1, T2, T3, T4, T5> implements Func5<T1, T2, T3, T4, T5, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action5 f34376do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34377if;

        public Cgoto(Action5 action5, Object obj) {
            this.f34376do = action5;
            this.f34377if = obj;
        }

        @Override // rx.functions.Func5
        public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5) {
            this.f34376do.call(t1, t2, t3, t4, t5);
            return (R) this.f34377if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.do$if, reason: invalid class name */
    public static class Cif<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ActionN f34378do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34379if;

        public Cif(ActionN actionN, Object obj) {
            this.f34378do = actionN;
            this.f34379if = obj;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            this.f34378do.call(objArr);
            return (R) this.f34379if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R, T1] */
    /* renamed from: rx.functions.do$new, reason: invalid class name */
    public static class Cnew<R, T1> implements Func1<T1, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34380do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34381if;

        public Cnew(Action1 action1, Object obj) {
            this.f34380do = action1;
            this.f34381if = obj;
        }

        @Override // rx.functions.Func1
        public R call(T1 t1) {
            this.f34380do.call(t1);
            return (R) this.f34381if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T4, T5, T6, R, T1, T2, T3] */
    /* renamed from: rx.functions.do$this, reason: invalid class name */
    public static class Cthis<R, T1, T2, T3, T4, T5, T6> implements Func6<T1, T2, T3, T4, T5, T6, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action6 f34382do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34383if;

        public Cthis(Action6 action6, Object obj) {
            this.f34382do = action6;
            this.f34383if = obj;
        }

        @Override // rx.functions.Func6
        public R call(T1 t1, T2 t2, T3 t3, T4 t4, T5 t5, T6 t6) {
            this.f34382do.call(t1, t2, t3, t4, t5, t6);
            return (R) this.f34383if;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R, T1, T2] */
    /* renamed from: rx.functions.do$try, reason: invalid class name */
    public static class Ctry<R, T1, T2> implements Func2<T1, T2, R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action2 f34384do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Object f34385if;

        public Ctry(Action2 action2, Object obj) {
            this.f34384do = action2;
            this.f34385if = obj;
        }

        @Override // rx.functions.Func2
        public R call(T1 t1, T2 t2) {
            this.f34384do.call(t1, t2);
            return (R) this.f34385if;
        }
    }

    private Cdo() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: break, reason: not valid java name */
    public static <T1, T2, T3> Func3<T1, T2, T3, Void> m38329break(Action3<T1, T2, T3> action3) {
        return m38331catch(action3, null);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T1> Func1<T1, Void> m38330case(Action1<T1> action1) {
        return m38336else(action1, null);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T1, T2, T3, R> Func3<T1, T2, T3, R> m38331catch(Action3<T1, T2, T3> action3, R r) {
        return new Ccase(action3, r);
    }

    /* renamed from: class, reason: not valid java name */
    public static <T1, T2, T3, T4> Func4<T1, T2, T3, T4, Void> m38332class(Action4<T1, T2, T3, T4> action4) {
        return m38333const(action4, null);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T1, T2, T3, T4, R> Func4<T1, T2, T3, T4, R> m38333const(Action4<T1, T2, T3, T4> action4, R r) {
        return new Celse(action4, r);
    }

    /* renamed from: default, reason: not valid java name */
    public static <R> FuncN<R> m38334default(ActionN actionN, R r) {
        return new Cif(actionN, r);
    }

    /* renamed from: do, reason: not valid java name */
    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8> Cconst<T0, T1, T2, T3, T4, T5, T6, T7, T8> m38335do() {
        return f34361do;
    }

    /* renamed from: else, reason: not valid java name */
    public static <T1, R> Func1<T1, R> m38336else(Action1<T1> action1, R r) {
        return new Cnew(action1, r);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T1, T2, T3, T4, T5> Func5<T1, T2, T3, T4, T5, Void> m38337final(Action5<T1, T2, T3, T4, T5> action5) {
        return m38347super(action5, null);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T> Action1<T> m38338for(Action0 action0) {
        return new Cclass(action0);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T1, T2> Func2<T1, T2, Void> m38339goto(Action2<T1, T2> action2) {
        return m38349this(action2, null);
    }

    /* renamed from: if, reason: not valid java name */
    public static Action1<Throwable> m38340if() {
        return Cfinal.INSTANCE;
    }

    /* renamed from: import, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7> Func7<T1, T2, T3, T4, T5, T6, T7, Void> m38341import(Action7<T1, T2, T3, T4, T5, T6, T7> action7) {
        return m38342native(action7, null);
    }

    /* renamed from: native, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, R> Func7<T1, T2, T3, T4, T5, T6, T7, R> m38342native(Action7<T1, T2, T3, T4, T5, T6, T7> action7, R r) {
        return new Cbreak(action7, r);
    }

    /* renamed from: new, reason: not valid java name */
    public static Func0<Void> m38343new(Action0 action0) {
        return m38352try(action0, null);
    }

    /* renamed from: public, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8> Func8<T1, T2, T3, T4, T5, T6, T7, T8, Void> m38344public(Action8<T1, T2, T3, T4, T5, T6, T7, T8> action8) {
        return m38345return(action8, null);
    }

    /* renamed from: return, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Func8<T1, T2, T3, T4, T5, T6, T7, T8, R> m38345return(Action8<T1, T2, T3, T4, T5, T6, T7, T8> action8, R r) {
        return new Ccatch(action8, r);
    }

    /* renamed from: static, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9> Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, Void> m38346static(Action9<T1, T2, T3, T4, T5, T6, T7, T8, T9> action9) {
        return m38348switch(action9, null);
    }

    /* renamed from: super, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, R> Func5<T1, T2, T3, T4, T5, R> m38347super(Action5<T1, T2, T3, T4, T5> action5, R r) {
        return new Cgoto(action5, r);
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Func9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> m38348switch(Action9<T1, T2, T3, T4, T5, T6, T7, T8, T9> action9, R r) {
        return new C0506do(action9, r);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T1, T2, R> Func2<T1, T2, R> m38349this(Action2<T1, T2> action2, R r) {
        return new Ctry(action2, r);
    }

    /* renamed from: throw, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6> Func6<T1, T2, T3, T4, T5, T6, Void> m38350throw(Action6<T1, T2, T3, T4, T5, T6> action6) {
        return m38353while(action6, null);
    }

    /* renamed from: throws, reason: not valid java name */
    public static FuncN<Void> m38351throws(ActionN actionN) {
        return m38334default(actionN, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static <R> Func0<R> m38352try(Action0 action0, R r) {
        return new Cfor(action0, r);
    }

    /* renamed from: while, reason: not valid java name */
    public static <T1, T2, T3, T4, T5, T6, R> Func6<T1, T2, T3, T4, T5, T6, R> m38353while(Action6<T1, T2, T3, T4, T5, T6> action6, R r) {
        return new Cthis(action6, r);
    }
}
