package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.cms.CMSObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* loaded from: classes3.dex */
public class e3 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private b1 f1237do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f1238for;

    /* renamed from: if, reason: not valid java name */
    private w4 f1239if;

    /* renamed from: new, reason: not valid java name */
    private fr f1240new;

    public e3(b1 b1Var, w4 w4Var, sc1[] sc1VarArr, fr frVar) {
        this.f1237do = b1Var;
        this.f1239if = w4Var;
        this.f1238for = new org.bouncycastle.asn1.n(sc1VarArr);
        this.f1240new = frVar;
    }

    public e3(b1 b1Var, sc1[] sc1VarArr, fr frVar) {
        this.f1237do = b1Var;
        this.f1238for = new org.bouncycastle.asn1.n(sc1VarArr);
        this.f1240new = frVar;
    }

    public e3(fr frVar) {
        this.f1240new = frVar;
    }

    private e3(Csuper csuper) {
        if (csuper.size() < 1 || csuper.size() > 4) {
            throw new IllegalArgumentException("wrong sequence size in constructor: " + csuper.size());
        }
        for (int i = 0; i < csuper.size() - 1; i++) {
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(i);
            if (aSN1EncodableMo33075final instanceof Cimport) {
                Cimport cimportM33063catch = Cimport.m33063catch(aSN1EncodableMo33075final);
                int tagNo = cimportM33063catch.getTagNo();
                if (tagNo == 0) {
                    this.f1237do = b1.m417case(cimportM33063catch, false);
                } else if (tagNo == 1) {
                    this.f1239if = w4.m9044case(cimportM33063catch, false);
                } else {
                    if (tagNo != 2) {
                        throw new IllegalArgumentException("invalid tag no in constructor: " + cimportM33063catch.getTagNo());
                    }
                    this.f1238for = Csuper.m33130class(cimportM33063catch, false);
                }
            }
        }
        this.f1240new = fr.m2388case(csuper.mo33075final(csuper.size() - 1));
    }

    /* renamed from: case, reason: not valid java name */
    public static e3 m1635case(Object obj) {
        if (obj instanceof e3) {
            return (e3) obj;
        }
        if (obj != null) {
            return new e3(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public sc1[] m1636else() {
        Csuper csuper = this.f1238for;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        sc1[] sc1VarArr = new sc1[size];
        for (int i = 0; i != size; i++) {
            sc1VarArr[i] = sc1.m7363new(this.f1238for.mo33075final(i));
        }
        return sc1VarArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public fr m1637goto() {
        return this.f1240new;
    }

    /* renamed from: new, reason: not valid java name */
    public b1 m1638new() {
        return this.f1237do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f1237do != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f1237do));
        }
        if (this.f1239if != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f1239if));
        }
        if (this.f1238for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f1238for));
        }
        cimport.m3516do(this.f1240new);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public b1 m1639try() {
        b1 b1Var = this.f1237do;
        if (b1Var != null) {
            return b1Var;
        }
        if (!this.f1240new.m2391try().equals(CMSObjectIdentifiers.signedData)) {
            throw new IllegalStateException("cannot identify algorithm identifier for digest");
        }
        ly1 ly1VarM4797break = ly1.m4797break(this.f1240new.m2390new());
        if (ly1VarM4797break.m4805this().m2391try().equals(PKCSObjectIdentifiers.id_ct_TSTInfo)) {
            return c42.m732else(ly1VarM4797break.m4805this()).m739goto().m8704new();
        }
        throw new IllegalStateException("cannot parse time stamp");
    }
}
