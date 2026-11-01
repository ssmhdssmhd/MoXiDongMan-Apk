package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;

/* loaded from: classes3.dex */
public class hh2 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public static final int f2407break = 32768;

    /* renamed from: case, reason: not valid java name */
    public static final int f2408case = 8;

    /* renamed from: else, reason: not valid java name */
    public static final int f2409else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f2410for = 64;

    /* renamed from: goto, reason: not valid java name */
    public static final int f2411goto = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f2412if = 128;

    /* renamed from: new, reason: not valid java name */
    public static final int f2413new = 32;

    /* renamed from: this, reason: not valid java name */
    public static final int f2414this = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f2415try = 16;

    /* renamed from: do, reason: not valid java name */
    private int f2416do;

    public hh2(int i) {
        this.f2416do = 0;
        this.f2416do = i;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new lr0(this.f2416do).toASN1Primitive();
    }
}
