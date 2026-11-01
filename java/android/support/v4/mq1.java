package android.support.v4;

import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class mq1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private Csuper f4012do;

    /* renamed from: if, reason: not valid java name */
    public static final Ccatch f4008if = PKCSObjectIdentifiers.preferSignedData;

    /* renamed from: for, reason: not valid java name */
    public static final Ccatch f4006for = PKCSObjectIdentifiers.canNotDecryptAny;

    /* renamed from: new, reason: not valid java name */
    public static final Ccatch f4009new = PKCSObjectIdentifiers.sMIMECapabilitiesVersions;

    /* renamed from: try, reason: not valid java name */
    public static final Ccatch f4011try = NISTObjectIdentifiers.id_aes256_CBC;

    /* renamed from: case, reason: not valid java name */
    public static final Ccatch f4002case = NISTObjectIdentifiers.id_aes192_CBC;

    /* renamed from: else, reason: not valid java name */
    public static final Ccatch f4005else = NISTObjectIdentifiers.id_aes128_CBC;

    /* renamed from: goto, reason: not valid java name */
    public static final Ccatch f4007goto = new Ccatch("1.3.6.1.4.1.188.7.1.1.2");

    /* renamed from: this, reason: not valid java name */
    public static final Ccatch f4010this = new Ccatch("1.2.840.113533.7.66.10");

    /* renamed from: break, reason: not valid java name */
    public static final Ccatch f4001break = new Ccatch("1.3.14.3.2.7");

    /* renamed from: catch, reason: not valid java name */
    public static final Ccatch f4003catch = PKCSObjectIdentifiers.des_EDE3_CBC;

    /* renamed from: class, reason: not valid java name */
    public static final Ccatch f4004class = PKCSObjectIdentifiers.RC2_CBC;

    public mq1(Csuper csuper) {
        this.f4012do = csuper;
    }

    /* renamed from: try, reason: not valid java name */
    public static mq1 m4982try(Object obj) {
        if (obj == null || (obj instanceof mq1)) {
            return (mq1) obj;
        }
        if (obj instanceof Csuper) {
            return new mq1((Csuper) obj);
        }
        if (obj instanceof p4) {
            return new mq1((Csuper) ((p4) obj).m5875try().m33158super(0));
        }
        throw new IllegalArgumentException("unknown object in factory: " + obj.getClass().getName());
    }

    /* renamed from: new, reason: not valid java name */
    public Vector m4983new(Ccatch ccatch) {
        Enumeration enumerationMo33076super = this.f4012do.mo33076super();
        Vector vector = new Vector();
        if (ccatch == null) {
            while (enumerationMo33076super.hasMoreElements()) {
                vector.addElement(oq1.m5737try(enumerationMo33076super.nextElement()));
            }
        } else {
            while (enumerationMo33076super.hasMoreElements()) {
                oq1 oq1VarM5737try = oq1.m5737try(enumerationMo33076super.nextElement());
                if (ccatch.equals(oq1VarM5737try.m5739new())) {
                    vector.addElement(oq1VarM5737try);
                }
            }
        }
        return vector;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f4012do;
    }
}
