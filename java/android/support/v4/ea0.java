package android.support.v4;

import java.util.Locale;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.atn.Ccase;

/* loaded from: classes3.dex */
public class ea0 extends ql1 {
    private final String predicate;
    private final int predicateIndex;
    private final int ruleIndex;

    public ea0(Cgoto cgoto) {
        this(cgoto, null);
    }

    /* renamed from: do, reason: not valid java name */
    private static String m1711do(String str, String str2) {
        return str2 != null ? str2 : String.format(Locale.getDefault(), "failed predicate: {%s}?", str);
    }

    public int getPredIndex() {
        return this.predicateIndex;
    }

    public String getPredicate() {
        return this.predicate;
    }

    public int getRuleIndex() {
        return this.ruleIndex;
    }

    public ea0(Cgoto cgoto, String str) {
        this(cgoto, str, null);
    }

    public ea0(Cgoto cgoto, String str, String str2) {
        super(m1711do(str, str2), cgoto, cgoto.mo3558goto(), cgoto.f28546break);
        d dVar = (d) cgoto.m32082this().f1619do.f6258do.get(cgoto.m32074final()).m2306catch(0);
        if (dVar instanceof Ccase) {
            Ccase ccase = (Ccase) dVar;
            this.ruleIndex = ccase.f28450final;
            this.predicateIndex = ccase.f28451super;
        } else {
            this.ruleIndex = 0;
            this.predicateIndex = 0;
        }
        this.predicate = str;
        setOffendingToken(cgoto.d());
    }
}
