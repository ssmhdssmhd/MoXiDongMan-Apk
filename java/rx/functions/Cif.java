package rx.functions;

/* renamed from: rx.functions.if, reason: invalid class name */
/* loaded from: classes4.dex */
public final class Cif {

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$break, reason: invalid class name */
    public static class Cbreak<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func4 f34386do;

        public Cbreak(Func4 func4) {
            this.f34386do = func4;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 4) {
                return (R) this.f34386do.call(objArr[0], objArr[1], objArr[2], objArr[3]);
            }
            throw new IllegalArgumentException("Func4 expecting 4 arguments.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$case, reason: invalid class name */
    public static class Ccase<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func0 f34387do;

        public Ccase(Func0 func0) {
            this.f34387do = func0;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 0) {
                return (R) this.f34387do.call();
            }
            throw new IllegalArgumentException("Func0 expecting 0 arguments.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$catch, reason: invalid class name */
    public static class Ccatch<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func5 f34388do;

        public Ccatch(Func5 func5) {
            this.f34388do = func5;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 5) {
                return (R) this.f34388do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4]);
            }
            throw new IllegalArgumentException("Func5 expecting 5 arguments.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$class, reason: invalid class name */
    public static class Cclass<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func6 f34389do;

        public Cclass(Func6 func6) {
            this.f34389do = func6;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 6) {
                return (R) this.f34389do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5]);
            }
            throw new IllegalArgumentException("Func6 expecting 6 arguments.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$const, reason: invalid class name */
    public static class Cconst<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func7 f34390do;

        public Cconst(Func7 func7) {
            this.f34390do = func7;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 7) {
                return (R) this.f34390do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6]);
            }
            throw new IllegalArgumentException("Func7 expecting 7 arguments.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$do, reason: invalid class name */
    public static class Cdo<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func9 f34391do;

        public Cdo(Func9 func9) {
            this.f34391do = func9;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 9) {
                return (R) this.f34391do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7], objArr[8]);
            }
            throw new IllegalArgumentException("Func9 expecting 9 arguments.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$else, reason: invalid class name */
    public static class Celse<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func1 f34392do;

        public Celse(Func1 func1) {
            this.f34392do = func1;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 1) {
                return (R) this.f34392do.call(objArr[0]);
            }
            throw new IllegalArgumentException("Func1 expecting 1 argument.");
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$final, reason: invalid class name */
    public static class Cfinal<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func8 f34393do;

        public Cfinal(Func8 func8) {
            this.f34393do = func8;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 8) {
                return (R) this.f34393do.call(objArr[0], objArr[1], objArr[2], objArr[3], objArr[4], objArr[5], objArr[6], objArr[7]);
            }
            throw new IllegalArgumentException("Func8 expecting 8 arguments.");
        }
    }

    /* renamed from: rx.functions.if$for, reason: invalid class name */
    public static class Cfor implements FuncN<Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action1 f34394do;

        public Cfor(Action1 action1) {
            this.f34394do = action1;
        }

        @Override // rx.functions.FuncN
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Object... objArr) {
            if (objArr.length != 1) {
                throw new IllegalArgumentException("Action1 expecting 1 argument.");
            }
            this.f34394do.call(objArr[0]);
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$goto, reason: invalid class name */
    public static class Cgoto<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func2 f34395do;

        public Cgoto(Func2 func2) {
            this.f34395do = func2;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 2) {
                return (R) this.f34395do.call(objArr[0], objArr[1]);
            }
            throw new IllegalArgumentException("Func2 expecting 2 arguments.");
        }
    }

    /* renamed from: rx.functions.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0507if implements FuncN<Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action0 f34396do;

        public C0507if(Action0 action0) {
            this.f34396do = action0;
        }

        @Override // rx.functions.FuncN
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Object... objArr) {
            if (objArr.length != 0) {
                throw new IllegalArgumentException("Action0 expecting 0 arguments.");
            }
            this.f34396do.call();
            return null;
        }
    }

    /* renamed from: rx.functions.if$new, reason: invalid class name */
    public static class Cnew implements FuncN<Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action2 f34397do;

        public Cnew(Action2 action2) {
            this.f34397do = action2;
        }

        @Override // rx.functions.FuncN
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Object... objArr) {
            if (objArr.length != 2) {
                throw new IllegalArgumentException("Action3 expecting 2 arguments.");
            }
            this.f34397do.call(objArr[0], objArr[1]);
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [R] */
    /* renamed from: rx.functions.if$this, reason: invalid class name */
    public static class Cthis<R> implements FuncN<R> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Func3 f34398do;

        public Cthis(Func3 func3) {
            this.f34398do = func3;
        }

        @Override // rx.functions.FuncN
        public R call(Object... objArr) {
            if (objArr.length == 3) {
                return (R) this.f34398do.call(objArr[0], objArr[1], objArr[2]);
            }
            throw new IllegalArgumentException("Func3 expecting 3 arguments.");
        }
    }

    /* renamed from: rx.functions.if$try, reason: invalid class name */
    public static class Ctry implements FuncN<Void> {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Action3 f34399do;

        public Ctry(Action3 action3) {
            this.f34399do = action3;
        }

        @Override // rx.functions.FuncN
        /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
        public Void call(Object... objArr) {
            if (objArr.length != 3) {
                throw new IllegalArgumentException("Action3 expecting 3 arguments.");
            }
            this.f34399do.call(objArr[0], objArr[1], objArr[2]);
            return null;
        }
    }

    private Cif() {
        throw new IllegalStateException("No instances!");
    }

    /* renamed from: break, reason: not valid java name */
    public static <T0, T1, T2, T3, T4, R> FuncN<R> m38354break(Func5<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? extends R> func5) {
        return new Ccatch(func5);
    }

    /* renamed from: case, reason: not valid java name */
    public static <T0, R> FuncN<R> m38355case(Func1<? super T0, ? extends R> func1) {
        return new Celse(func1);
    }

    /* renamed from: catch, reason: not valid java name */
    public static <T0, T1, T2, T3, T4, T5, R> FuncN<R> m38356catch(Func6<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> func6) {
        return new Cclass(func6);
    }

    /* renamed from: class, reason: not valid java name */
    public static <T0, T1, T2, T3, T4, T5, T6, R> FuncN<R> m38357class(Func7<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> func7) {
        return new Cconst(func7);
    }

    /* renamed from: const, reason: not valid java name */
    public static <T0, T1, T2, T3, T4, T5, T6, T7, R> FuncN<R> m38358const(Func8<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> func8) {
        return new Cfinal(func8);
    }

    /* renamed from: do, reason: not valid java name */
    public static FuncN<Void> m38359do(Action0 action0) {
        return new C0507if(action0);
    }

    /* renamed from: else, reason: not valid java name */
    public static <T0, T1, R> FuncN<R> m38360else(Func2<? super T0, ? super T1, ? extends R> func2) {
        return new Cgoto(func2);
    }

    /* renamed from: final, reason: not valid java name */
    public static <T0, T1, T2, T3, T4, T5, T6, T7, T8, R> FuncN<R> m38361final(Func9<? super T0, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> func9) {
        return new Cdo(func9);
    }

    /* renamed from: for, reason: not valid java name */
    public static <T0, T1> FuncN<Void> m38362for(Action2<? super T0, ? super T1> action2) {
        return new Cnew(action2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static <T0, T1, T2, R> FuncN<R> m38363goto(Func3<? super T0, ? super T1, ? super T2, ? extends R> func3) {
        return new Cthis(func3);
    }

    /* renamed from: if, reason: not valid java name */
    public static <T0> FuncN<Void> m38364if(Action1<? super T0> action1) {
        return new Cfor(action1);
    }

    /* renamed from: new, reason: not valid java name */
    public static <T0, T1, T2> FuncN<Void> m38365new(Action3<? super T0, ? super T1, ? super T2> action3) {
        return new Ctry(action3);
    }

    /* renamed from: this, reason: not valid java name */
    public static <T0, T1, T2, T3, R> FuncN<R> m38366this(Func4<? super T0, ? super T1, ? super T2, ? super T3, ? extends R> func4) {
        return new Cbreak(func4);
    }

    /* renamed from: try, reason: not valid java name */
    public static <R> FuncN<R> m38367try(Func0<? extends R> func0) {
        return new Ccase(func0);
    }
}
