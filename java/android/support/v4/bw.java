package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class bw extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private xa1 f545do;

    /* renamed from: if, reason: not valid java name */
    private tg0 f546if;

    public bw(xa1 xa1Var) {
        this(xa1Var, null);
    }

    public bw(xa1 xa1Var, tg0 tg0Var) {
        this.f545do = xa1Var;
        this.f546if = tg0Var;
    }

    private bw(Csuper csuper) {
        this.f545do = xa1.m9444try(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f546if = tg0.m7877try(csuper.mo33075final(1));
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static bw m655new(Object obj) {
        if (obj instanceof bw) {
            return (bw) obj;
        }
        if (obj != null) {
            return new bw(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static bw m656try(Cimport cimport, boolean z) {
        return m655new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public tg0 m657case() {
        return this.f546if;
    }

    /* renamed from: else, reason: not valid java name */
    public xa1 m658else() {
        return this.f545do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f545do);
        tg0 tg0Var = this.f546if;
        if (tg0Var != null) {
            cimport.m3516do(tg0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("DVCSErrorNotice {\ntransactionStatus: ");
        sb.append(this.f545do);
        sb.append("\n");
        if (this.f546if != null) {
            str = "transactionIdentifier: " + this.f546if + "\n";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("}\n");
        return sb.toString();
    }
}
