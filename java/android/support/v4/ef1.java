package android.support.v4;

import java.util.HashMap;
import java.util.Map;
import org.antlr.v4.runtime.atn.Celse;

/* loaded from: classes3.dex */
public class ef1 {

    /* renamed from: do, reason: not valid java name */
    public final Map<Celse, Celse> f1455do = new HashMap();

    /* renamed from: do, reason: not valid java name */
    public Celse m1870do(Celse celse) {
        z60 z60Var = Celse.f28469for;
        if (celse == z60Var) {
            return z60Var;
        }
        Celse celse2 = this.f1455do.get(celse);
        if (celse2 != null) {
            return celse2;
        }
        this.f1455do.put(celse, celse);
        return celse;
    }

    /* renamed from: for, reason: not valid java name */
    public int m1871for() {
        return this.f1455do.size();
    }

    /* renamed from: if, reason: not valid java name */
    public Celse m1872if(Celse celse) {
        return this.f1455do.get(celse);
    }
}
