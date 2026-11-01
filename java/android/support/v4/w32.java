package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Ctry;

/* loaded from: classes3.dex */
public class w32 extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    public Cinstanceof f7382break;

    /* renamed from: case, reason: not valid java name */
    public t62 f7383case;

    /* renamed from: catch, reason: not valid java name */
    public Cinstanceof f7384catch;

    /* renamed from: class, reason: not valid java name */
    public y90 f7385class;

    /* renamed from: do, reason: not valid java name */
    public Csuper f7386do;

    /* renamed from: else, reason: not valid java name */
    public t62 f7387else;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f7388for;

    /* renamed from: goto, reason: not valid java name */
    public tg2 f7389goto;

    /* renamed from: if, reason: not valid java name */
    public Cgoto f7390if;

    /* renamed from: new, reason: not valid java name */
    public b1 f7391new;

    /* renamed from: this, reason: not valid java name */
    public Ctry f7392this;

    /* renamed from: try, reason: not valid java name */
    public tg2 f7393try;

    /* JADX WARN: Removed duplicated region for block: B:23:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private w32(Csuper csuper) {
        int i;
        boolean z;
        boolean z2;
        int size;
        this.f7386do = csuper;
        if (csuper.mo33075final(0) instanceof Cimport) {
            this.f7390if = Cgoto.m33041class((Cimport) csuper.mo33075final(0), true);
            i = 0;
        } else {
            this.f7390if = new Cgoto(0L);
            i = -1;
        }
        if (this.f7390if.m33044final().equals(BigInteger.valueOf(0L))) {
            z = true;
        } else {
            if (this.f7390if.m33044final().equals(BigInteger.valueOf(1L))) {
                z = false;
                z2 = true;
                this.f7388for = Cgoto.m33040catch(csuper.mo33075final(i + 1));
                this.f7391new = b1.m418try(csuper.mo33075final(i + 2));
                this.f7393try = tg2.m7884else(csuper.mo33075final(i + 3));
                Csuper csuper2 = (Csuper) csuper.mo33075final(i + 4);
                this.f7383case = t62.m7734try(csuper2.mo33075final(0));
                this.f7387else = t62.m7734try(csuper2.mo33075final(1));
                this.f7389goto = tg2.m7884else(csuper.mo33075final(i + 5));
                int i2 = i + 6;
                this.f7392this = Ctry.m33291case(csuper.mo33075final(i2));
                size = (csuper.size() - i2) - 1;
                if (size == 0 && z) {
                    throw new IllegalArgumentException("version 1 certificate contains extra data");
                }
                while (size > 0) {
                    Cimport cimport = (Cimport) csuper.mo33075final(i2 + size);
                    int tagNo = cimport.getTagNo();
                    if (tagNo == 1) {
                        this.f7382break = Cinstanceof.m33069return(cimport, false);
                    } else if (tagNo == 2) {
                        this.f7384catch = Cinstanceof.m33069return(cimport, false);
                    } else {
                        if (tagNo != 3) {
                            throw new IllegalArgumentException("Unknown tag encountered in structure: " + cimport.getTagNo());
                        }
                        if (z2) {
                            throw new IllegalArgumentException("version 2 certificate cannot contain extensions");
                        }
                        this.f7385class = y90.m9782break(Csuper.m33130class(cimport, true));
                    }
                    size--;
                }
            }
            if (!this.f7390if.m33044final().equals(BigInteger.valueOf(2L))) {
                throw new IllegalArgumentException("version number not recognised");
            }
            z = false;
        }
        z2 = false;
        this.f7388for = Cgoto.m33040catch(csuper.mo33075final(i + 1));
        this.f7391new = b1.m418try(csuper.mo33075final(i + 2));
        this.f7393try = tg2.m7884else(csuper.mo33075final(i + 3));
        Csuper csuper22 = (Csuper) csuper.mo33075final(i + 4);
        this.f7383case = t62.m7734try(csuper22.mo33075final(0));
        this.f7387else = t62.m7734try(csuper22.mo33075final(1));
        this.f7389goto = tg2.m7884else(csuper.mo33075final(i + 5));
        int i22 = i + 6;
        this.f7392this = Ctry.m33291case(csuper.mo33075final(i22));
        size = (csuper.size() - i22) - 1;
        if (size == 0) {
        }
        while (size > 0) {
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static w32 m9030case(Object obj) {
        if (obj instanceof w32) {
            return (w32) obj;
        }
        if (obj != null) {
            return new w32(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static w32 m9031else(Cimport cimport, boolean z) {
        return m9030case(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cgoto m9032break() {
        return this.f7388for;
    }

    /* renamed from: catch, reason: not valid java name */
    public b1 m9033catch() {
        return this.f7391new;
    }

    /* renamed from: class, reason: not valid java name */
    public t62 m9034class() {
        return this.f7383case;
    }

    /* renamed from: const, reason: not valid java name */
    public tg2 m9035const() {
        return this.f7389goto;
    }

    /* renamed from: final, reason: not valid java name */
    public Ctry m9036final() {
        return this.f7392this;
    }

    /* renamed from: goto, reason: not valid java name */
    public tg2 m9037goto() {
        return this.f7393try;
    }

    /* renamed from: new, reason: not valid java name */
    public t62 m9038new() {
        return this.f7387else;
    }

    /* renamed from: super, reason: not valid java name */
    public Cinstanceof m9039super() {
        return this.f7384catch;
    }

    /* renamed from: this, reason: not valid java name */
    public Cinstanceof m9040this() {
        return this.f7382break;
    }

    /* renamed from: throw, reason: not valid java name */
    public Cgoto m9041throw() {
        return this.f7390if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f7386do;
    }

    /* renamed from: try, reason: not valid java name */
    public y90 m9042try() {
        return this.f7385class;
    }

    /* renamed from: while, reason: not valid java name */
    public int m9043while() {
        return this.f7390if.m33044final().intValue() + 1;
    }
}
