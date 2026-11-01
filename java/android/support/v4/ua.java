package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cmc.Cif;

/* loaded from: classes3.dex */
public class ua extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private final ta f6809do;

    /* renamed from: if, reason: not valid java name */
    private final Cif f6810if;

    public ua(ta taVar) {
        this.f6809do = taVar;
        this.f6810if = null;
    }

    public ua(Cif cif) {
        this.f6809do = null;
        this.f6810if = cif;
    }

    /* renamed from: case, reason: not valid java name */
    public static ua m8310case(Object obj) {
        if (obj instanceof ua) {
            return (ua) obj;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Cgoto) {
                return new ua(ta.m7794case(aSN1Primitive));
            }
            if (aSN1Primitive instanceof Csuper) {
                return new ua(Cif.m32837try(aSN1Primitive));
            }
        }
        if (obj instanceof byte[]) {
            try {
                return m8310case(Cfinal.m33015else((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unknown encoding in getInstance()");
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m8311else() {
        return this.f6809do != null;
    }

    /* renamed from: new, reason: not valid java name */
    public ta m8312new() {
        return this.f6809do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        ta taVar = this.f6809do;
        return taVar != null ? taVar.toASN1Primitive() : this.f6810if.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public Cif m8313try() {
        return this.f6810if;
    }
}
