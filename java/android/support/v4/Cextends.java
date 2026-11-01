package android.support.v4;

import java.util.IdentityHashMap;
import java.util.List;
import java.util.UUID;
import org.antlr.v4.runtime.atn.ATNDeserializer;
import org.antlr.v4.runtime.atn.Ccatch;
import org.antlr.v4.runtime.atn.Celse;

/* renamed from: android.support.v4.extends, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cextends {

    /* renamed from: for, reason: not valid java name */
    @Deprecated
    public static final int f1616for = ATNDeserializer.f28431if;

    /* renamed from: new, reason: not valid java name */
    @Deprecated
    public static final UUID f1617new = ATNDeserializer.f28430goto;

    /* renamed from: try, reason: not valid java name */
    public static final au f1618try;

    /* renamed from: do, reason: not valid java name */
    public final Cstatic f1619do;

    /* renamed from: if, reason: not valid java name */
    public final ef1 f1620if;

    static {
        au auVar = new au(new Cthrows());
        f1618try = auVar;
        auVar.f236do = Integer.MAX_VALUE;
    }

    public Cextends(Cstatic cstatic, ef1 ef1Var) {
        this.f1619do = cstatic;
        this.f1620if = ef1Var;
    }

    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public static int m2060break(char c) {
        return ATNDeserializer.m31835catch(c);
    }

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public static int m2061catch(char[] cArr, int i) {
        return ATNDeserializer.m31836class(cArr, i);
    }

    @Deprecated
    /* renamed from: class, reason: not valid java name */
    public static long m2062class(char[] cArr, int i) {
        return ATNDeserializer.m31837const(cArr, i);
    }

    @Deprecated
    /* renamed from: const, reason: not valid java name */
    public static UUID m2063const(char[] cArr, int i) {
        return ATNDeserializer.m31839final(cArr, i);
    }

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public static void m2064do(boolean z) {
        new ATNDeserializer().m31842do(z);
    }

    @Deprecated
    /* renamed from: if, reason: not valid java name */
    public static void m2065if(boolean z, String str) {
        new ATNDeserializer().m31845if(z, str);
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    public static Cstatic m2066new(char[] cArr) {
        return new ATNDeserializer().m31843for(cArr);
    }

    @Deprecated
    /* renamed from: this, reason: not valid java name */
    public static Cfinally m2067this(int i, int i2) {
        return new ATNDeserializer().m31841break(i, i2);
    }

    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public static Ccatch m2068try(Cstatic cstatic, int i, int i2, int i3, int i4, int i5, int i6, List<sn0> list) {
        return new ATNDeserializer().m31848try(cstatic, i, i2, i3, i4, i5, i6, list);
    }

    /* renamed from: case, reason: not valid java name */
    public Celse m2069case(Celse celse) {
        Celse celseM31877goto;
        ef1 ef1Var = this.f1620if;
        if (ef1Var == null) {
            return celse;
        }
        synchronized (ef1Var) {
            celseM31877goto = Celse.m31877goto(celse, this.f1620if, new IdentityHashMap());
        }
        return celseM31877goto;
    }

    /* renamed from: else, reason: not valid java name */
    public ef1 m2070else() {
        return this.f1620if;
    }

    /* renamed from: for, reason: not valid java name */
    public void mo2071for() {
        throw new UnsupportedOperationException("This ATN simulator does not support clearing the DFA.");
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract void mo2072goto();
}
