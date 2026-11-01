package android.support.v4;

import java.math.BigInteger;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class t91 extends Cbreak {

    /* renamed from: try, reason: not valid java name */
    private static final b1 f6452try = new b1(PKCSObjectIdentifiers.id_hmacWithSHA1, org.bouncycastle.asn1.h.f29080do);

    /* renamed from: do, reason: not valid java name */
    private final Cclass f6453do;

    /* renamed from: for, reason: not valid java name */
    private final Cgoto f6454for;

    /* renamed from: if, reason: not valid java name */
    private final Cgoto f6455if;

    /* renamed from: new, reason: not valid java name */
    private final b1 f6456new;

    private t91(Csuper csuper) {
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f6453do = (Cclass) enumerationMo33076super.nextElement();
        this.f6455if = (Cgoto) enumerationMo33076super.nextElement();
        if (enumerationMo33076super.hasMoreElements()) {
            Object objNextElement = enumerationMo33076super.nextElement();
            if (objNextElement instanceof Cgoto) {
                this.f6454for = Cgoto.m33040catch(objNextElement);
                objNextElement = enumerationMo33076super.hasMoreElements() ? enumerationMo33076super.nextElement() : null;
            } else {
                this.f6454for = null;
            }
            if (objNextElement != null) {
                this.f6456new = b1.m418try(objNextElement);
                return;
            }
        } else {
            this.f6454for = null;
        }
        this.f6456new = null;
    }

    public t91(byte[] bArr, int i) {
        this(bArr, i, 0);
    }

    public t91(byte[] bArr, int i, int i2) {
        this(bArr, i, i2, null);
    }

    public t91(byte[] bArr, int i, int i2, b1 b1Var) {
        this.f6453do = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
        this.f6455if = new Cgoto(i);
        this.f6454for = i2 > 0 ? new Cgoto(i2) : null;
        this.f6456new = b1Var;
    }

    public t91(byte[] bArr, int i, b1 b1Var) {
        this(bArr, i, 0, b1Var);
    }

    /* renamed from: new, reason: not valid java name */
    public static t91 m7786new(Object obj) {
        if (obj instanceof t91) {
            return (t91) obj;
        }
        if (obj != null) {
            return new t91(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public BigInteger m7787case() {
        Cgoto cgoto = this.f6454for;
        if (cgoto != null) {
            return cgoto.m33044final();
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m7788else() {
        b1 b1Var = this.f6456new;
        return b1Var != null ? b1Var : f6452try;
    }

    /* renamed from: goto, reason: not valid java name */
    public byte[] m7789goto() {
        return this.f6453do.mo5490const();
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m7790this() {
        b1 b1Var = this.f6456new;
        return b1Var == null || b1Var.equals(f6452try);
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6453do);
        cimport.m3516do(this.f6455if);
        Cgoto cgoto = this.f6454for;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        b1 b1Var = this.f6456new;
        if (b1Var != null && !b1Var.equals(f6452try)) {
            cimport.m3516do(this.f6456new);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public BigInteger m7791try() {
        return this.f6455if.m33044final();
    }
}
