package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class hk1 extends ug1 {

    /* renamed from: case, reason: not valid java name */
    private static int f2432case = 2;

    /* renamed from: try, reason: not valid java name */
    private static int f2433try = 1;

    /* renamed from: do, reason: not valid java name */
    private Ccatch f2434do;

    /* renamed from: for, reason: not valid java name */
    private BigInteger f2435for;

    /* renamed from: if, reason: not valid java name */
    private BigInteger f2436if;

    /* renamed from: new, reason: not valid java name */
    private int f2437new = 0;

    public hk1(Ccatch ccatch, BigInteger bigInteger, BigInteger bigInteger2) {
        this.f2434do = ccatch;
        this.f2436if = bigInteger;
        this.f2435for = bigInteger2;
    }

    public hk1(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f2434do = Ccatch.m32790throw(enumerationMo33076super.nextElement());
        while (enumerationMo33076super.hasMoreElements()) {
            mc2 mc2VarM4903try = mc2.m4903try(enumerationMo33076super.nextElement());
            int tagNo = mc2VarM4903try.getTagNo();
            if (tagNo == 1) {
                m3052this(mc2VarM4903try);
            } else {
                if (tagNo != 2) {
                    throw new IllegalArgumentException("Unknown DERTaggedObject :" + mc2VarM4903try.getTagNo() + "-> not an Iso7816RSAPublicKeyStructure");
                }
                m3051goto(mc2VarM4903try);
            }
        }
        if (this.f2437new != 3) {
            throw new IllegalArgumentException("missing argument -> not an Iso7816RSAPublicKeyStructure");
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m3051goto(mc2 mc2Var) {
        int i = this.f2437new;
        int i2 = f2432case;
        if ((i & i2) != 0) {
            throw new IllegalArgumentException("Exponent already set");
        }
        this.f2437new = i | i2;
        this.f2435for = mc2Var.m4904case();
    }

    /* renamed from: this, reason: not valid java name */
    private void m3052this(mc2 mc2Var) {
        int i = this.f2437new;
        int i2 = f2433try;
        if ((i & i2) != 0) {
            throw new IllegalArgumentException("Modulus already set");
        }
        this.f2437new = i | i2;
        this.f2436if = mc2Var.m4904case();
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m3053case() {
        return this.f2436if;
    }

    /* renamed from: else, reason: not valid java name */
    public BigInteger m3054else() {
        return this.f2435for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f2434do);
        cimport.m3516do(new mc2(1, m3053case()));
        cimport.m3516do(new mc2(2, m3054else()));
        return new org.bouncycastle.asn1.n(cimport);
    }

    @Override // android.support.v4.ug1
    /* renamed from: try, reason: not valid java name */
    public Ccatch mo3055try() {
        return this.f2434do;
    }
}
