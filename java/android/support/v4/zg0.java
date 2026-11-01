package android.support.v4;

import com.google.zxing.client.result.Celse;

/* loaded from: classes2.dex */
public final class zg0 extends oc1 {

    /* renamed from: for, reason: not valid java name */
    private final double f8543for;

    /* renamed from: if, reason: not valid java name */
    private final double f8544if;

    /* renamed from: new, reason: not valid java name */
    private final double f8545new;

    /* renamed from: try, reason: not valid java name */
    private final String f8546try;

    public zg0(double d, double d2, double d3, String str) {
        super(Celse.GEO);
        this.f8544if = d;
        this.f8543for = d2;
        this.f8545new = d3;
        this.f8546try = str;
    }

    /* renamed from: case, reason: not valid java name */
    public String m10187case() {
        StringBuilder sb = new StringBuilder();
        sb.append("geo:");
        sb.append(this.f8544if);
        sb.append(',');
        sb.append(this.f8543for);
        if (this.f8545new > 0.0d) {
            sb.append(',');
            sb.append(this.f8545new);
        }
        if (this.f8546try != null) {
            sb.append('?');
            sb.append(this.f8546try);
        }
        return sb.toString();
    }

    @Override // android.support.v4.oc1
    /* renamed from: do */
    public String mo804do() {
        StringBuilder sb = new StringBuilder(20);
        sb.append(this.f8544if);
        sb.append(", ");
        sb.append(this.f8543for);
        if (this.f8545new > 0.0d) {
            sb.append(", ");
            sb.append(this.f8545new);
            sb.append('m');
        }
        if (this.f8546try != null) {
            sb.append(" (");
            sb.append(this.f8546try);
            sb.append(')');
        }
        return sb.toString();
    }

    /* renamed from: else, reason: not valid java name */
    public double m10188else() {
        return this.f8544if;
    }

    /* renamed from: goto, reason: not valid java name */
    public double m10189goto() {
        return this.f8543for;
    }

    /* renamed from: this, reason: not valid java name */
    public String m10190this() {
        return this.f8546try;
    }

    /* renamed from: try, reason: not valid java name */
    public double m10191try() {
        return this.f8545new;
    }
}
