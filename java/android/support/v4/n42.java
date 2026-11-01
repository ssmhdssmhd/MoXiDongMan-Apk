package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class n42 extends Cbreak implements ASN1Choice {

    /* renamed from: for, reason: not valid java name */
    public static final int f4115for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f4116new = 1;

    /* renamed from: try, reason: not valid java name */
    public static final int f4117try = 2;

    /* renamed from: do, reason: not valid java name */
    private final int f4118do = 1;

    /* renamed from: if, reason: not valid java name */
    private final ASN1Encodable f4119if;

    public n42(jg jgVar) {
        this.f4119if = jgVar;
    }

    public n42(l42 l42Var) {
        this.f4119if = l42Var;
    }

    private n42(Csuper csuper) {
        this.f4119if = csuper;
    }

    /* renamed from: new, reason: not valid java name */
    public static n42 m5085new(Object obj) {
        if (obj instanceof n42) {
            return (n42) obj;
        }
        if (obj == null) {
            return null;
        }
        if (!(obj instanceof ASN1Encodable)) {
            if (obj instanceof byte[]) {
                try {
                    return m5085new(Cfinal.m33015else((byte[]) obj));
                } catch (IOException unused) {
                    throw new IllegalArgumentException("unknown encoding in getInstance()");
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
        }
        Cimport cimportM33063catch = Cimport.m33063catch(((ASN1Encodable) obj).toASN1Primitive());
        int tagNo = cimportM33063catch.getTagNo();
        if (tagNo == 0) {
            return new n42(l42.m4592try(cimportM33063catch, false));
        }
        if (tagNo == 1) {
            return new n42(jg.m3855else(cimportM33063catch, false));
        }
        if (tagNo == 2) {
            return new n42(Csuper.m33130class(cimportM33063catch, false));
        }
        throw new IllegalArgumentException("unknown tag in getInstance(): " + cimportM33063catch.getTagNo());
    }

    public int getTagNo() {
        return this.f4118do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return new org.bouncycastle.asn1.u(false, this.f4118do, this.f4119if);
    }

    /* renamed from: try, reason: not valid java name */
    public ASN1Encodable m5086try() {
        return this.f4119if;
    }
}
