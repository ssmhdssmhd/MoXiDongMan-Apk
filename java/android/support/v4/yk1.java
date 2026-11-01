package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class yk1 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private byte[] f8256case;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f8257do;

    /* renamed from: for, reason: not valid java name */
    private Cgoto f8258for;

    /* renamed from: if, reason: not valid java name */
    private Ccatch f8259if;

    /* renamed from: new, reason: not valid java name */
    private byte[][] f8260new;

    /* renamed from: try, reason: not valid java name */
    private byte[][] f8261try;

    public yk1(int i, short[][] sArr, short[][] sArr2, short[] sArr3) {
        this.f8257do = new Cgoto(0L);
        this.f8258for = new Cgoto(i);
        this.f8260new = cl1.m963for(sArr);
        this.f8261try = cl1.m963for(sArr2);
        this.f8256case = cl1.m961do(sArr3);
    }

    private yk1(Csuper csuper) {
        if (csuper.mo33075final(0) instanceof Cgoto) {
            this.f8257do = Cgoto.m33040catch(csuper.mo33075final(0));
        } else {
            this.f8259if = Ccatch.m32790throw(csuper.mo33075final(0));
        }
        this.f8258for = Cgoto.m33040catch(csuper.mo33075final(1));
        Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(2));
        this.f8260new = new byte[csuperM33129catch.size()][];
        for (int i = 0; i < csuperM33129catch.size(); i++) {
            this.f8260new[i] = Cclass.m32796catch(csuperM33129catch.mo33075final(i)).mo5490const();
        }
        Csuper csuper2 = (Csuper) csuper.mo33075final(3);
        this.f8261try = new byte[csuper2.size()][];
        for (int i2 = 0; i2 < csuper2.size(); i2++) {
            this.f8261try[i2] = Cclass.m32796catch(csuper2.mo33075final(i2)).mo5490const();
        }
        this.f8256case = Cclass.m32796catch(((Csuper) csuper.mo33075final(4)).mo33075final(0)).mo5490const();
    }

    /* renamed from: goto, reason: not valid java name */
    public static yk1 m9882goto(Object obj) {
        if (obj instanceof yk1) {
            return (yk1) obj;
        }
        if (obj != null) {
            return new yk1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public short[][] m9883case() {
        return cl1.m966new(this.f8261try);
    }

    /* renamed from: else, reason: not valid java name */
    public int m9884else() {
        return this.f8258for.m33044final().intValue();
    }

    /* renamed from: new, reason: not valid java name */
    public short[][] m9885new() {
        return cl1.m966new(this.f8260new);
    }

    /* renamed from: this, reason: not valid java name */
    public Cgoto m9886this() {
        return this.f8257do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        ASN1Encodable aSN1Encodable = this.f8257do;
        if (aSN1Encodable == null) {
            aSN1Encodable = this.f8259if;
        }
        cimport.m3516do(aSN1Encodable);
        cimport.m3516do(this.f8258for);
        Cimport cimport2 = new Cimport();
        int i = 0;
        int i2 = 0;
        while (true) {
            byte[][] bArr = this.f8260new;
            if (i2 >= bArr.length) {
                break;
            }
            cimport2.m3516do(new org.bouncycastle.asn1.j(bArr[i2]));
            i2++;
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        Cimport cimport3 = new Cimport();
        while (true) {
            byte[][] bArr2 = this.f8261try;
            if (i >= bArr2.length) {
                cimport.m3516do(new org.bouncycastle.asn1.n(cimport3));
                Cimport cimport4 = new Cimport();
                cimport4.m3516do(new org.bouncycastle.asn1.j(this.f8256case));
                cimport.m3516do(new org.bouncycastle.asn1.n(cimport4));
                return new org.bouncycastle.asn1.n(cimport);
            }
            cimport3.m3516do(new org.bouncycastle.asn1.j(bArr2[i]));
            i++;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public short[] m9887try() {
        return cl1.m965if(this.f8256case);
    }
}
