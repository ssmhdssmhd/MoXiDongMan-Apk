package android.support.v4;

import java.math.BigInteger;
import java.util.Date;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccase;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class u51 extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private final String f6767case;

    /* renamed from: do, reason: not valid java name */
    private final BigInteger f6768do;

    /* renamed from: for, reason: not valid java name */
    private final Ccase f6769for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f6770if;

    /* renamed from: new, reason: not valid java name */
    private final Ccase f6771new;

    /* renamed from: try, reason: not valid java name */
    private final p51 f6772try;

    public u51(b1 b1Var, Date date, Date date2, p51 p51Var, String str) {
        this.f6768do = BigInteger.valueOf(1L);
        this.f6770if = b1Var;
        this.f6769for = new org.bouncycastle.asn1.d(date);
        this.f6771new = new org.bouncycastle.asn1.d(date2);
        this.f6772try = p51Var;
        this.f6767case = str;
    }

    private u51(Csuper csuper) {
        this.f6768do = Cgoto.m33040catch(csuper.mo33075final(0)).m33044final();
        this.f6770if = b1.m418try(csuper.mo33075final(1));
        this.f6769for = Ccase.m32773final(csuper.mo33075final(2));
        this.f6771new = Ccase.m32773final(csuper.mo33075final(3));
        this.f6772try = p51.m5879new(csuper.mo33075final(4));
        this.f6767case = csuper.size() == 6 ? org.bouncycastle.asn1.v.m33177catch(csuper.mo33075final(5)).getString() : null;
    }

    /* renamed from: case, reason: not valid java name */
    public static u51 m8246case(Object obj) {
        if (obj instanceof u51) {
            return (u51) obj;
        }
        if (obj != null) {
            return new u51(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public BigInteger m8247break() {
        return this.f6768do;
    }

    /* renamed from: else, reason: not valid java name */
    public b1 m8248else() {
        return this.f6770if;
    }

    /* renamed from: goto, reason: not valid java name */
    public Ccase m8249goto() {
        return this.f6771new;
    }

    /* renamed from: new, reason: not valid java name */
    public String m8250new() {
        return this.f6767case;
    }

    /* renamed from: this, reason: not valid java name */
    public p51 m8251this() {
        return this.f6772try;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(this.f6768do));
        cimport.m3516do(this.f6770if);
        cimport.m3516do(this.f6769for);
        cimport.m3516do(this.f6771new);
        cimport.m3516do(this.f6772try);
        String str = this.f6767case;
        if (str != null) {
            cimport.m3516do(new org.bouncycastle.asn1.v(str));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Ccase m8252try() {
        return this.f6769for;
    }
}
