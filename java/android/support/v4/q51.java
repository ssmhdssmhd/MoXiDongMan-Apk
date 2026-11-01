package android.support.v4;

import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Cnew;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class q51 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public static final int f5261case = 1;

    /* renamed from: else, reason: not valid java name */
    public static final int f5262else = 2;

    /* renamed from: try, reason: not valid java name */
    public static final int f5263try = 0;

    /* renamed from: do, reason: not valid java name */
    public Cnew f5264do;

    /* renamed from: for, reason: not valid java name */
    public b1 f5265for;

    /* renamed from: if, reason: not valid java name */
    public Ccatch f5266if;

    /* renamed from: new, reason: not valid java name */
    public Cinstanceof f5267new;

    public q51(int i, Ccatch ccatch, b1 b1Var, byte[] bArr) {
        this.f5264do = new Cnew(i);
        if (i == 2) {
            this.f5266if = ccatch;
        }
        this.f5265for = b1Var;
        this.f5267new = new Cinstanceof(bArr);
    }

    private q51(Csuper csuper) {
        if (csuper.size() > 4 || csuper.size() < 3) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        int i = 0;
        this.f5264do = Cnew.m33093class(csuper.mo33075final(0));
        if (csuper.size() == 4) {
            this.f5266if = Ccatch.m32790throw(csuper.mo33075final(1));
            i = 1;
        }
        this.f5265for = b1.m418try(csuper.mo33075final(i + 1));
        this.f5267new = Cinstanceof.m33068public(csuper.mo33075final(i + 2));
    }

    /* renamed from: case, reason: not valid java name */
    public static q51 m6413case(Object obj) {
        if (obj instanceof q51) {
            return (q51) obj;
        }
        if (obj != null) {
            return new q51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static q51 m6414else(Cimport cimport, boolean z) {
        return m6413case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: goto, reason: not valid java name */
    public Cinstanceof m6415goto() {
        return this.f5267new;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m6416new() {
        return this.f5265for;
    }

    /* renamed from: this, reason: not valid java name */
    public Ccatch m6417this() {
        return this.f5266if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f5264do);
        Ccatch ccatch = this.f5266if;
        if (ccatch != null) {
            cimport.m3516do(ccatch);
        }
        cimport.m3516do(this.f5265for);
        cimport.m3516do(this.f5267new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cnew m6418try() {
        return this.f5264do;
    }
}
