package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class fw extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private zv f2009do;

    /* renamed from: if, reason: not valid java name */
    private bw f2010if;

    public fw(bw bwVar) {
        this.f2010if = bwVar;
    }

    public fw(zv zvVar) {
        this.f2009do = zvVar;
    }

    /* renamed from: case, reason: not valid java name */
    public static fw m2442case(Object obj) {
        if (obj == null || (obj instanceof fw)) {
            return (fw) obj;
        }
        if (obj instanceof byte[]) {
            try {
                return m2442case(Cfinal.m33015else((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("failed to construct sequence from byte[]: " + e.getMessage());
            }
        }
        if (obj instanceof Csuper) {
            return new fw(zv.m10287goto(obj));
        }
        if (obj instanceof Cimport) {
            return new fw(bw.m656try(Cimport.m33063catch(obj), false));
        }
        throw new IllegalArgumentException("Couldn't convert from object to DVCSResponse: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public static fw m2443else(Cimport cimport, boolean z) {
        return m2442case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public zv m2444new() {
        return this.f2009do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        zv zvVar = this.f2009do;
        return zvVar != null ? zvVar.toASN1Primitive() : new org.bouncycastle.asn1.u(false, 0, this.f2010if);
    }

    public String toString() {
        StringBuilder sb;
        String string;
        if (this.f2009do != null) {
            sb = new StringBuilder();
            sb.append("DVCSResponse {\ndvCertInfo: ");
            string = this.f2009do.toString();
        } else {
            sb = new StringBuilder();
            sb.append("DVCSResponse {\ndvErrorNote: ");
            string = this.f2010if.toString();
        }
        sb.append(string);
        sb.append("}\n");
        return sb.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public bw m2445try() {
        return this.f2010if;
    }
}
