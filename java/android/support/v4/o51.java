package android.support.v4;

import java.math.BigInteger;
import java.util.Date;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class o51 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private final String f4425case;

    /* renamed from: do, reason: not valid java name */
    private final BigInteger f4426do;

    /* renamed from: for, reason: not valid java name */
    private final Ccase f4427for;

    /* renamed from: if, reason: not valid java name */
    private final String f4428if;

    /* renamed from: new, reason: not valid java name */
    private final Ccase f4429new;

    /* renamed from: try, reason: not valid java name */
    private final Cclass f4430try;

    public o51(BigInteger bigInteger, String str, Date date, Date date2, byte[] bArr, String str2) {
        this.f4426do = bigInteger;
        this.f4428if = str;
        this.f4427for = new org.bouncycastle.asn1.d(date);
        this.f4429new = new org.bouncycastle.asn1.d(date2);
        this.f4430try = new org.bouncycastle.asn1.j(q3.m6371final(bArr));
        this.f4425case = str2;
    }

    private o51(Csuper csuper) {
        this.f4426do = Cgoto.m33040catch(csuper.mo33075final(0)).m33044final();
        this.f4428if = org.bouncycastle.asn1.v.m33177catch(csuper.mo33075final(1)).getString();
        this.f4427for = Ccase.m32773final(csuper.mo33075final(2));
        this.f4429new = Ccase.m32773final(csuper.mo33075final(3));
        this.f4430try = Cclass.m32796catch(csuper.mo33075final(4));
        this.f4425case = csuper.size() == 6 ? org.bouncycastle.asn1.v.m33177catch(csuper.mo33075final(5)).getString() : null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static o51 m5478goto(Object obj) {
        if (obj instanceof o51) {
            return (o51) obj;
        }
        if (obj != null) {
            return new o51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m5479break() {
        return this.f4426do;
    }

    /* renamed from: case, reason: not valid java name */
    public byte[] m5480case() {
        return q3.m6371final(this.f4430try.mo5490const());
    }

    /* renamed from: else, reason: not valid java name */
    public String m5481else() {
        return this.f4428if;
    }

    /* renamed from: new, reason: not valid java name */
    public String m5482new() {
        return this.f4425case;
    }

    /* renamed from: this, reason: not valid java name */
    public Ccase m5483this() {
        return this.f4429new;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f4426do));
        cimport.m3516do(new org.bouncycastle.asn1.v(this.f4428if));
        cimport.m3516do(this.f4427for);
        cimport.m3516do(this.f4429new);
        cimport.m3516do(this.f4430try);
        String str = this.f4425case;
        if (str != null) {
            cimport.m3516do(new org.bouncycastle.asn1.v(str));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m5484try() {
        return this.f4427for;
    }
}
