package android.support.v4;

import org.bouncycastle.asn1.Ccatch;

/* loaded from: classes3.dex */
public class l40 extends b50 {

    /* renamed from: break, reason: not valid java name */
    private final Ccatch f3535break;

    /* renamed from: goto, reason: not valid java name */
    private final Ccatch f3536goto;

    /* renamed from: this, reason: not valid java name */
    private final Ccatch f3537this;

    public l40(e40 e40Var, Ccatch ccatch, Ccatch ccatch2) {
        this(e40Var, ccatch, ccatch2, null);
    }

    public l40(e40 e40Var, Ccatch ccatch, Ccatch ccatch2, Ccatch ccatch3) {
        super(ccatch, e40Var.m1646do(), e40Var.m1648if(), e40Var.m1650try(), e40Var.m1647for(), e40Var.m1645case());
        if ((e40Var instanceof b50) && !ccatch.equals(((b50) e40Var).m446goto())) {
            throw new IllegalArgumentException("named parameters do not match publicKeyParamSet value");
        }
        this.f3536goto = ccatch;
        this.f3537this = ccatch2;
        this.f3535break = ccatch3;
    }

    /* renamed from: break, reason: not valid java name */
    public Ccatch m4588break() {
        return this.f3535break;
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccatch m4589catch() {
        return this.f3536goto;
    }

    /* renamed from: this, reason: not valid java name */
    public Ccatch m4590this() {
        return this.f3537this;
    }
}
