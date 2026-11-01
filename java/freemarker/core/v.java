package freemarker.core;

import android.support.v4.h52;
import android.support.v4.mc;
import freemarker.template.Cdo;
import freemarker.template.Cstatic;

/* loaded from: classes.dex */
public class v {

    /* renamed from: for, reason: not valid java name */
    public static final int f24243for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f24244new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f24245try = 2;

    /* renamed from: do, reason: not valid java name */
    private final Object f24246do = new Object();

    /* renamed from: if, reason: not valid java name */
    private final int f24247if;

    public v(int i) {
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.f24247if = i;
    }

    /* renamed from: else, reason: not valid java name */
    private d0 m28323else() {
        d0 d0VarW1 = d0.w1();
        if (d0VarW1 != null) {
            return d0VarW1;
        }
        throw new IllegalStateException("No current environment");
    }

    /* renamed from: goto, reason: not valid java name */
    private t m28324goto(d0 d0Var) throws Error {
        int i = this.f24247if;
        if (i == 0) {
            return d0Var;
        }
        if (i == 1) {
            return d0Var.m28271synchronized();
        }
        if (i == 2) {
            return d0Var.m28271synchronized().m28271synchronized();
        }
        throw new mc();
    }

    /* renamed from: break, reason: not valid java name */
    public final void m28325break(Object obj, h52 h52Var) {
        if (this.f24247if != 1) {
            throw new UnsupportedOperationException("This is not a template-scope attribute");
        }
        h52Var.l0(this.f24246do, obj);
    }

    /* renamed from: case, reason: not valid java name */
    public final Object m28326case(Cstatic cstatic) {
        if (this.f24247if == 1) {
            return cstatic.m28278while(this.f24246do, this);
        }
        throw new UnsupportedOperationException("This is not a template-scope attribute");
    }

    /* renamed from: catch, reason: not valid java name */
    public final void m28327catch(Object obj, d0 d0Var) {
        m28324goto(d0Var).l0(this.f24246do, obj);
    }

    /* renamed from: class, reason: not valid java name */
    public final void m28328class(Object obj, Cdo cdo) {
        if (this.f24247if != 2) {
            throw new UnsupportedOperationException("This is not a configuration-scope attribute");
        }
        cdo.l0(this.f24246do, obj);
    }

    /* renamed from: const, reason: not valid java name */
    public final void m28329const(Object obj, Cstatic cstatic) {
        if (this.f24247if != 1) {
            throw new UnsupportedOperationException("This is not a template-scope attribute");
        }
        cstatic.l0(this.f24246do, obj);
    }

    /* renamed from: do, reason: not valid java name */
    public Object mo28330do() {
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public Object m28331for(h52 h52Var) {
        if (this.f24247if == 1) {
            return h52Var.m28278while(this.f24246do, this);
        }
        throw new UnsupportedOperationException("This is not a template-scope attribute");
    }

    /* renamed from: if, reason: not valid java name */
    public final Object m28332if() {
        return m28324goto(m28323else()).m28278while(this.f24246do, this);
    }

    /* renamed from: new, reason: not valid java name */
    public final Object m28333new(d0 d0Var) {
        return m28324goto(d0Var).m28278while(this.f24246do, this);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m28334this(Object obj) {
        m28324goto(m28323else()).l0(this.f24246do, obj);
    }

    /* renamed from: try, reason: not valid java name */
    public final Object m28335try(Cdo cdo) {
        if (this.f24247if == 2) {
            return cdo.m28278while(this.f24246do, this);
        }
        throw new UnsupportedOperationException("This is not a template-scope attribute");
    }
}
