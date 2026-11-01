package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class g50 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f2055do;

    public g50(int i, BigInteger bigInteger) {
        byte[] bArrM36309do = Cdo.m36309do((i + 7) / 8, bigInteger);
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(1L));
        cimport.m3516do(new org.bouncycastle.asn1.j(bArrM36309do));
        this.f2055do = new org.bouncycastle.asn1.n(cimport);
    }

    public g50(int i, BigInteger bigInteger, ASN1Encodable aSN1Encodable) {
        this(i, bigInteger, null, aSN1Encodable);
    }

    public g50(int i, BigInteger bigInteger, Cinstanceof cinstanceof, ASN1Encodable aSN1Encodable) {
        byte[] bArrM36309do = Cdo.m36309do((i + 7) / 8, bigInteger);
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(1L));
        cimport.m3516do(new org.bouncycastle.asn1.j(bArrM36309do));
        if (aSN1Encodable != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, aSN1Encodable));
        }
        if (cinstanceof != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 1, cinstanceof));
        }
        this.f2055do = new org.bouncycastle.asn1.n(cimport);
    }

    public g50(BigInteger bigInteger) {
        this(bigInteger.bitLength(), bigInteger);
    }

    public g50(BigInteger bigInteger, ASN1Encodable aSN1Encodable) {
        this(bigInteger, (Cinstanceof) null, aSN1Encodable);
    }

    public g50(BigInteger bigInteger, Cinstanceof cinstanceof, ASN1Encodable aSN1Encodable) {
        this(bigInteger.bitLength(), bigInteger, cinstanceof, aSN1Encodable);
    }

    private g50(Csuper csuper) {
        this.f2055do = csuper;
    }

    /* renamed from: case, reason: not valid java name */
    private Cfinal m2576case(int i) {
        Enumeration enumerationMo33076super = this.f2055do.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1Encodable) enumerationMo33076super.nextElement();
            if (aSN1Encodable instanceof Cimport) {
                Cimport cimport = (Cimport) aSN1Encodable;
                if (cimport.getTagNo() == i) {
                    return cimport.m33065const().toASN1Primitive();
                }
            }
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    public static g50 m2577new(Object obj) {
        if (obj instanceof g50) {
            return (g50) obj;
        }
        if (obj != null) {
            return new g50(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cfinal m2578else() {
        return m2576case(0);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cinstanceof m2579goto() {
        return (Cinstanceof) m2576case(1);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f2055do;
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m2580try() {
        return new BigInteger(1, ((Cclass) this.f2055do.mo33075final(1)).mo5490const());
    }
}
