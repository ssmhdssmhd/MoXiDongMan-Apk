package android.support.v4;

import org.antlr.v4.runtime.Cthis;
import org.antlr.v4.runtime.atn.Cbreak;
import org.antlr.v4.runtime.atn.Celse;

/* renamed from: android.support.v4.switch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cswitch {

    /* renamed from: case, reason: not valid java name */
    private static final int f6322case = 1073741824;

    /* renamed from: do, reason: not valid java name */
    public final Cfinally f6323do;

    /* renamed from: for, reason: not valid java name */
    public Celse f6324for;

    /* renamed from: if, reason: not valid java name */
    public final int f6325if;

    /* renamed from: new, reason: not valid java name */
    public int f6326new;

    /* renamed from: try, reason: not valid java name */
    public final Cbreak f6327try;

    public Cswitch(Cswitch cswitch) {
        this.f6323do = cswitch.f6323do;
        this.f6325if = cswitch.f6325if;
        this.f6324for = cswitch.f6324for;
        this.f6327try = cswitch.f6327try;
        this.f6326new = cswitch.f6326new;
    }

    /* renamed from: do */
    public boolean mo4097do(Cswitch cswitch) {
        Celse celse;
        Celse celse2;
        if (this == cswitch) {
            return true;
        }
        return cswitch != null && this.f6323do.f1854if == cswitch.f6323do.f1854if && this.f6325if == cswitch.f6325if && ((celse = this.f6324for) == (celse2 = cswitch.f6324for) || (celse != null && celse.equals(celse2))) && this.f6327try.equals(cswitch.f6327try) && m7628for() == cswitch.m7628for();
    }

    public boolean equals(Object obj) {
        if (obj instanceof Cswitch) {
            return mo4097do((Cswitch) obj);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m7628for() {
        return (this.f6326new & 1073741824) != 0;
    }

    public int hashCode() {
        return y01.m9664do(y01.m9663case(y01.m9663case(y01.m9668try(y01.m9668try(y01.m9667new(7), this.f6323do.f1854if), this.f6325if), this.f6324for), this.f6327try), 4);
    }

    /* renamed from: if, reason: not valid java name */
    public final int m7629if() {
        return this.f6326new & (-1073741825);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m7630new(boolean z) {
        if (z) {
            this.f6326new |= 1073741824;
        } else {
            this.f6326new &= -1073741825;
        }
    }

    public String toString() {
        return m7631try(null, true);
    }

    /* renamed from: try, reason: not valid java name */
    public String m7631try(Cthis<?, ?> cthis, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(this.f6323do);
        if (z) {
            sb.append(",");
            sb.append(this.f6325if);
        }
        if (this.f6324for != null) {
            sb.append(",[");
            sb.append(this.f6324for.toString());
            sb.append("]");
        }
        Cbreak cbreak = this.f6327try;
        if (cbreak != null && cbreak != Cbreak.f28443do) {
            sb.append(",");
            sb.append(this.f6327try);
        }
        if (m7629if() > 0) {
            sb.append(",up=");
            sb.append(m7629if());
        }
        sb.append(')');
        return sb.toString();
    }

    public Cswitch(Cfinally cfinally, int i, Celse celse) {
        this(cfinally, i, celse, Cbreak.f28443do);
    }

    public Cswitch(Cfinally cfinally, int i, Celse celse, Cbreak cbreak) {
        this.f6323do = cfinally;
        this.f6325if = i;
        this.f6324for = celse;
        this.f6327try = cbreak;
    }

    public Cswitch(Cswitch cswitch, Cfinally cfinally) {
        this(cswitch, cfinally, cswitch.f6324for, cswitch.f6327try);
    }

    public Cswitch(Cswitch cswitch, Cfinally cfinally, Cbreak cbreak) {
        this(cswitch, cfinally, cswitch.f6324for, cbreak);
    }

    public Cswitch(Cswitch cswitch, Cbreak cbreak) {
        this(cswitch, cswitch.f6323do, cswitch.f6324for, cbreak);
    }

    public Cswitch(Cswitch cswitch, Cfinally cfinally, Celse celse) {
        this(cswitch, cfinally, celse, cswitch.f6327try);
    }

    public Cswitch(Cswitch cswitch, Cfinally cfinally, Celse celse, Cbreak cbreak) {
        this.f6323do = cfinally;
        this.f6325if = cswitch.f6325if;
        this.f6324for = celse;
        this.f6327try = cbreak;
        this.f6326new = cswitch.f6326new;
    }
}
