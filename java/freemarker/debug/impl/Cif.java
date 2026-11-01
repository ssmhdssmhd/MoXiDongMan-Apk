package freemarker.debug.impl;

import freemarker.core.d0;
import freemarker.template.Cstatic;
import freemarker.template.utility.Cconst;
import java.rmi.RemoteException;
import java.util.Collections;
import java.util.List;

/* renamed from: freemarker.debug.impl.if, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final Cif f24398do = m28441do();

    /* renamed from: freemarker.debug.impl.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0248if extends Cif {
        private C0248if() {
        }

        @Override // freemarker.debug.impl.Cif
        /* renamed from: else */
        public void mo28418else() {
        }

        @Override // freemarker.debug.impl.Cif
        /* renamed from: for */
        public List mo28419for(String str) {
            return Collections.EMPTY_LIST;
        }

        @Override // freemarker.debug.impl.Cif
        /* renamed from: this */
        public boolean mo28424this(d0 d0Var, String str, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // freemarker.debug.impl.Cif
        /* renamed from: try */
        public void mo28426try(Cstatic cstatic) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static void m28440case() {
        f24398do.mo28418else();
    }

    /* renamed from: do, reason: not valid java name */
    private static Cif m28441do() {
        return Cconst.m29258for("freemarker.debug.password", null) == null ? new C0248if() : new Ccatch();
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m28442goto(d0 d0Var, String str, int i) throws RemoteException {
        return f24398do.mo28424this(d0Var, str, i);
    }

    /* renamed from: if, reason: not valid java name */
    public static List m28443if(String str) {
        return f24398do.mo28419for(str);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m28444new(Cstatic cstatic) {
        f24398do.mo28426try(cstatic);
    }

    /* renamed from: else */
    public abstract void mo28418else();

    /* renamed from: for */
    public abstract List mo28419for(String str);

    /* renamed from: this */
    public abstract boolean mo28424this(d0 d0Var, String str, int i) throws RemoteException;

    /* renamed from: try */
    public abstract void mo28426try(Cstatic cstatic);
}
