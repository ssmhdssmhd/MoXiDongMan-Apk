package android.support.v4;

import java.util.ArrayList;
import java.util.List;
import org.slf4j.helpers.MessageFormatter;

/* loaded from: classes3.dex */
public class ix {

    /* renamed from: break, reason: not valid java name */
    public long f2911break;

    /* renamed from: case, reason: not valid java name */
    public long f2912case;

    /* renamed from: catch, reason: not valid java name */
    public dw0 f2913catch;

    /* renamed from: do, reason: not valid java name */
    public final int f2916do;

    /* renamed from: else, reason: not valid java name */
    public dw0 f2917else;

    /* renamed from: for, reason: not valid java name */
    public long f2919for;

    /* renamed from: goto, reason: not valid java name */
    public long f2920goto;

    /* renamed from: if, reason: not valid java name */
    public long f2921if;

    /* renamed from: import, reason: not valid java name */
    public long f2922import;

    /* renamed from: native, reason: not valid java name */
    public long f2923native;

    /* renamed from: new, reason: not valid java name */
    public long f2924new;

    /* renamed from: public, reason: not valid java name */
    public long f2925public;

    /* renamed from: this, reason: not valid java name */
    public long f2927this;

    /* renamed from: throw, reason: not valid java name */
    public long f2928throw;

    /* renamed from: try, reason: not valid java name */
    public long f2929try;

    /* renamed from: while, reason: not valid java name */
    public long f2930while;

    /* renamed from: class, reason: not valid java name */
    public final List<ir> f2914class = new ArrayList();

    /* renamed from: const, reason: not valid java name */
    public final List<i80> f2915const = new ArrayList();

    /* renamed from: final, reason: not valid java name */
    public final List<m1> f2918final = new ArrayList();

    /* renamed from: super, reason: not valid java name */
    public final List<df1> f2926super = new ArrayList();

    public ix(int i) {
        this.f2916do = i;
    }

    public String toString() {
        return "{decision=" + this.f2916do + ", contextSensitivities=" + this.f2914class.size() + ", errors=" + this.f2915const.size() + ", ambiguities=" + this.f2918final.size() + ", SLL_lookahead=" + this.f2924new + ", SLL_ATNTransitions=" + this.f2928throw + ", SLL_DFATransitions=" + this.f2930while + ", LL_Fallback=" + this.f2922import + ", LL_lookahead=" + this.f2920goto + ", LL_ATNTransitions=" + this.f2923native + MessageFormatter.DELIM_STOP;
    }
}
