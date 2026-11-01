package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ke1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f3376do;

    public ke1(BigInteger bigInteger) {
        this(new Cgoto(bigInteger));
    }

    public ke1(Cgoto cgoto) {
        this(new org.bouncycastle.asn1.n(new org.bouncycastle.asn1.n(cgoto)));
    }

    private ke1(Csuper csuper) {
        this.f3376do = csuper;
    }

    public ke1(BigInteger[] bigIntegerArr) {
        this(m4384else(bigIntegerArr));
    }

    public ke1(Cgoto[] cgotoArr) {
        this(new org.bouncycastle.asn1.n(m4385goto(cgotoArr)));
    }

    /* renamed from: case, reason: not valid java name */
    public static ke1 m4383case(Object obj) {
        if (obj instanceof ke1) {
            return (ke1) obj;
        }
        if (obj != null) {
            return new ke1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    private static Cgoto[] m4384else(BigInteger[] bigIntegerArr) {
        int length = bigIntegerArr.length;
        Cgoto[] cgotoArr = new Cgoto[length];
        for (int i = 0; i != length; i++) {
            cgotoArr[i] = new Cgoto(bigIntegerArr[i]);
        }
        return cgotoArr;
    }

    /* renamed from: goto, reason: not valid java name */
    private static org.bouncycastle.asn1.n[] m4385goto(Cgoto[] cgotoArr) {
        int length = cgotoArr.length;
        org.bouncycastle.asn1.n[] nVarArr = new org.bouncycastle.asn1.n[length];
        for (int i = 0; i != length; i++) {
            nVarArr[i] = new org.bouncycastle.asn1.n(cgotoArr[i]);
        }
        return nVarArr;
    }

    /* renamed from: this, reason: not valid java name */
    private static Cgoto[] m4386this(Csuper csuper) {
        int size = csuper.size();
        Cgoto[] cgotoArr = new Cgoto[size];
        for (int i = 0; i != size; i++) {
            cgotoArr[i] = Cgoto.m33040catch(csuper.mo33075final(i));
        }
        return cgotoArr;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger[] m4387new() {
        int size = this.f3376do.size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i != size; i++) {
            bigIntegerArr[i] = Cgoto.m33040catch(Csuper.m33129catch(this.f3376do.mo33075final(i)).mo33075final(0)).m33044final();
        }
        return bigIntegerArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f3376do;
    }

    /* renamed from: try, reason: not valid java name */
    public Cgoto[][] m4388try() {
        int size = this.f3376do.size();
        Cgoto[][] cgotoArr = new Cgoto[size][];
        for (int i = 0; i != size; i++) {
            cgotoArr[i] = m4386this((Csuper) this.f3376do.mo33075final(i));
        }
        return cgotoArr;
    }
}
