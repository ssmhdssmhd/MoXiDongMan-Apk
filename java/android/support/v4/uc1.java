package android.support.v4;

import java.util.Arrays;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cfor;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class uc1 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private fe1[] f6827do;

    /* renamed from: for, reason: not valid java name */
    private boolean f6828for;

    /* renamed from: if, reason: not valid java name */
    private boolean f6829if;

    /* renamed from: new, reason: not valid java name */
    private boolean f6830new;

    public uc1(fe1[] fe1VarArr) {
        this.f6829if = false;
        this.f6828for = false;
        this.f6830new = false;
        this.f6827do = m8364new(fe1VarArr);
    }

    public uc1(fe1[] fe1VarArr, boolean z, boolean z2, boolean z3) {
        this.f6829if = false;
        this.f6828for = false;
        this.f6830new = false;
        this.f6827do = m8364new(fe1VarArr);
        this.f6829if = z;
        this.f6828for = z2;
        this.f6830new = z3;
    }

    /* renamed from: class, reason: not valid java name */
    private void m8359class(boolean z) {
        this.f6828for = z;
    }

    /* renamed from: const, reason: not valid java name */
    private void m8360const(boolean z) {
        this.f6830new = z;
    }

    /* renamed from: else, reason: not valid java name */
    public static uc1 m8361else(Object obj) {
        if (obj instanceof uc1) {
            return (uc1) obj;
        }
        if (obj == null) {
            return null;
        }
        Csuper csuperM33129catch = Csuper.m33129catch(obj);
        uc1 uc1Var = new uc1(m8365try(Csuper.m33129catch(csuperM33129catch.mo33075final(0))));
        for (int i = 1; i < csuperM33129catch.size(); i++) {
            ASN1Encodable aSN1EncodableMo33075final = csuperM33129catch.mo33075final(i);
            if (aSN1EncodableMo33075final instanceof Cfor) {
                uc1Var.m8362final(Cfor.m33019const(aSN1EncodableMo33075final).m33022throw());
            } else if (aSN1EncodableMo33075final instanceof Cimport) {
                Cimport cimportM33063catch = Cimport.m33063catch(aSN1EncodableMo33075final);
                int tagNo = cimportM33063catch.getTagNo();
                if (tagNo == 0) {
                    uc1Var.m8359class(Cfor.m33020final(cimportM33063catch, false).m33022throw());
                } else {
                    if (tagNo != 1) {
                        throw new IllegalArgumentException("Unknown tag encountered: " + cimportM33063catch.getTagNo());
                    }
                    uc1Var.m8360const(Cfor.m33020final(cimportM33063catch, false).m33022throw());
                }
            } else {
                continue;
            }
        }
        return uc1Var;
    }

    /* renamed from: final, reason: not valid java name */
    private void m8362final(boolean z) {
        this.f6829if = z;
    }

    /* renamed from: goto, reason: not valid java name */
    public static uc1 m8363goto(Cimport cimport, boolean z) {
        return m8361else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    private fe1[] m8364new(fe1[] fe1VarArr) {
        int length = fe1VarArr.length;
        fe1[] fe1VarArr2 = new fe1[length];
        System.arraycopy(fe1VarArr, 0, fe1VarArr2, 0, length);
        return fe1VarArr2;
    }

    /* renamed from: try, reason: not valid java name */
    private static fe1[] m8365try(Csuper csuper) {
        int size = csuper.size();
        fe1[] fe1VarArr = new fe1[size];
        for (int i = 0; i != size; i++) {
            fe1VarArr[i] = fe1.m2258new(csuper.mo33075final(i));
        }
        return fe1VarArr;
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m8366break() {
        return this.f6830new;
    }

    /* renamed from: case, reason: not valid java name */
    public fe1[] m8367case() {
        return m8364new(this.f6827do);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m8368catch() {
        return this.f6829if;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m8369this() {
        return this.f6828for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        Cimport cimport2 = new Cimport();
        int i = 0;
        while (true) {
            fe1[] fe1VarArr = this.f6827do;
            if (i == fe1VarArr.length) {
                break;
            }
            cimport2.m3516do(fe1VarArr[i]);
            i++;
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        boolean z = this.f6829if;
        if (z) {
            cimport.m3516do(Cfor.m33021super(z));
        }
        if (this.f6828for) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, Cfor.m33021super(this.f6828for)));
        }
        if (this.f6830new) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, Cfor.m33021super(this.f6830new)));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        return "PathProcInput: {\nacceptablePolicySet: " + Arrays.asList(this.f6827do) + "\ninhibitPolicyMapping: " + this.f6829if + "\nexplicitPolicyReqd: " + this.f6828for + "\ninhibitAnyPolicy: " + this.f6830new + "\n}\n";
    }
}
