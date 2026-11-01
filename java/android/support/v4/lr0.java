package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.x509.Cif;

/* loaded from: classes3.dex */
public class lr0 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public static final int f3742break = 32768;

    /* renamed from: case, reason: not valid java name */
    public static final int f3743case = 8;

    /* renamed from: else, reason: not valid java name */
    public static final int f3744else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f3745for = 64;

    /* renamed from: goto, reason: not valid java name */
    public static final int f3746goto = 2;

    /* renamed from: if, reason: not valid java name */
    public static final int f3747if = 128;

    /* renamed from: new, reason: not valid java name */
    public static final int f3748new = 32;

    /* renamed from: this, reason: not valid java name */
    public static final int f3749this = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f3750try = 16;

    /* renamed from: do, reason: not valid java name */
    private Cinstanceof f3751do;

    public lr0(int i) {
        this.f3751do = new Cinstanceof(i);
    }

    private lr0(Cinstanceof cinstanceof) {
        this.f3751do = cinstanceof;
    }

    /* renamed from: case, reason: not valid java name */
    public static lr0 m4748case(Object obj) {
        if (obj instanceof lr0) {
            return (lr0) obj;
        }
        if (obj != null) {
            return new lr0(Cinstanceof.m33068public(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static lr0 m4749new(y90 y90Var) {
        return m4748case(y90Var.m9791this(Cif.f29310case));
    }

    /* renamed from: else, reason: not valid java name */
    public int m4750else() {
        return this.f3751do.m33060throw();
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m4751goto(int i) {
        return (this.f3751do.m33058import() & i) == i;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f3751do;
    }

    public String toString() {
        StringBuilder sb;
        int i;
        byte[] bArrM33057const = this.f3751do.m33057const();
        if (bArrM33057const.length == 1) {
            sb = new StringBuilder();
            sb.append("KeyUsage: 0x");
            i = bArrM33057const[0] & 255;
        } else {
            sb = new StringBuilder();
            sb.append("KeyUsage: 0x");
            i = (bArrM33057const[0] & 255) | ((bArrM33057const[1] & 255) << 8);
        }
        sb.append(Integer.toHexString(i));
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m4752try() {
        return this.f3751do.m33057const();
    }
}
