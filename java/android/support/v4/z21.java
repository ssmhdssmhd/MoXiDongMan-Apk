package android.support.v4;

import org.bouncycastle.asn1.Cif;
import org.bouncycastle.asn1.Cinstanceof;

/* loaded from: classes3.dex */
public class z21 extends Cinstanceof {

    /* renamed from: break, reason: not valid java name */
    public static final int f8426break = 2;

    /* renamed from: case, reason: not valid java name */
    public static final int f8427case = 32;

    /* renamed from: catch, reason: not valid java name */
    public static final int f8428catch = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f8429else = 16;

    /* renamed from: goto, reason: not valid java name */
    public static final int f8430goto = 8;

    /* renamed from: new, reason: not valid java name */
    public static final int f8431new = 128;

    /* renamed from: this, reason: not valid java name */
    public static final int f8432this = 4;

    /* renamed from: try, reason: not valid java name */
    public static final int f8433try = 64;

    public z21(int i) {
        super(Cif.m33055final(i), Cif.m33056while(i));
    }

    public z21(Cinstanceof cinstanceof) {
        super(cinstanceof.m33057const(), cinstanceof.m33060throw());
    }

    @Override // org.bouncycastle.asn1.Cif
    public String toString() {
        return "NetscapeCertType: 0x" + Integer.toHexString(this.f29091do[0] & 255);
    }
}
