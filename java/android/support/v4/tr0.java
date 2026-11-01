package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.icao.ICAOObjectIdentifiers;

/* loaded from: classes3.dex */
public class tr0 extends Cbreak implements ICAOObjectIdentifiers {

    /* renamed from: try, reason: not valid java name */
    public static final int f6642try = 16;

    /* renamed from: do, reason: not valid java name */
    private Cgoto f6643do;

    /* renamed from: for, reason: not valid java name */
    private sw[] f6644for;

    /* renamed from: if, reason: not valid java name */
    private b1 f6645if;

    /* renamed from: new, reason: not valid java name */
    private ur0 f6646new;

    public tr0(b1 b1Var, sw[] swVarArr) {
        this.f6643do = new Cgoto(0L);
        this.f6643do = new Cgoto(0L);
        this.f6645if = b1Var;
        this.f6644for = m8059try(swVarArr);
        m8058new(swVarArr.length);
    }

    public tr0(b1 b1Var, sw[] swVarArr, ur0 ur0Var) {
        this.f6643do = new Cgoto(0L);
        this.f6643do = new Cgoto(1L);
        this.f6645if = b1Var;
        this.f6644for = m8059try(swVarArr);
        this.f6646new = ur0Var;
        m8058new(swVarArr.length);
    }

    private tr0(Csuper csuper) {
        this.f6643do = new Cgoto(0L);
        if (csuper == null || csuper.size() == 0) {
            throw new IllegalArgumentException("null or empty sequence passed.");
        }
        Enumeration enumerationMo33076super = csuper.mo33076super();
        this.f6643do = Cgoto.m33040catch(enumerationMo33076super.nextElement());
        this.f6645if = b1.m418try(enumerationMo33076super.nextElement());
        Csuper csuperM33129catch = Csuper.m33129catch(enumerationMo33076super.nextElement());
        if (this.f6643do.m33044final().intValue() == 1) {
            this.f6646new = ur0.m8633new(enumerationMo33076super.nextElement());
        }
        m8058new(csuperM33129catch.size());
        this.f6644for = new sw[csuperM33129catch.size()];
        for (int i = 0; i < csuperM33129catch.size(); i++) {
            this.f6644for[i] = sw.m7619case(csuperM33129catch.mo33075final(i));
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static tr0 m8057goto(Object obj) {
        if (obj instanceof tr0) {
            return (tr0) obj;
        }
        if (obj != null) {
            return new tr0(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: new, reason: not valid java name */
    private void m8058new(int i) {
        if (i < 2 || i > 16) {
            throw new IllegalArgumentException("wrong size in DataGroupHashValues : not in (2..16)");
        }
    }

    /* renamed from: try, reason: not valid java name */
    private sw[] m8059try(sw[] swVarArr) {
        int length = swVarArr.length;
        sw[] swVarArr2 = new sw[length];
        System.arraycopy(swVarArr, 0, swVarArr2, 0, length);
        return swVarArr2;
    }

    /* renamed from: break, reason: not valid java name */
    public ur0 m8060break() {
        return this.f6646new;
    }

    /* renamed from: case, reason: not valid java name */
    public sw[] m8061case() {
        return m8059try(this.f6644for);
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m8062else() {
        return this.f6645if;
    }

    /* renamed from: this, reason: not valid java name */
    public int m8063this() {
        return this.f6643do.m33044final().intValue();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6643do);
        cimport.m3516do(this.f6645if);
        Cimport cimport2 = new Cimport();
        int i = 0;
        while (true) {
            sw[] swVarArr = this.f6644for;
            if (i >= swVarArr.length) {
                break;
            }
            cimport2.m3516do(swVarArr[i]);
            i++;
        }
        cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
        ur0 ur0Var = this.f6646new;
        if (ur0Var != null) {
            cimport.m3516do(ur0Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
