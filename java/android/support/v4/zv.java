package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;

/* loaded from: classes3.dex */
public class zv extends Cbreak {

    /* renamed from: catch, reason: not valid java name */
    private static final int f8648catch = 1;

    /* renamed from: class, reason: not valid java name */
    private static final int f8649class = 0;

    /* renamed from: const, reason: not valid java name */
    private static final int f8650const = 1;

    /* renamed from: final, reason: not valid java name */
    private static final int f8651final = 2;

    /* renamed from: super, reason: not valid java name */
    private static final int f8652super = 3;

    /* renamed from: break, reason: not valid java name */
    private y90 f8653break;

    /* renamed from: case, reason: not valid java name */
    private xa1 f8654case;

    /* renamed from: do, reason: not valid java name */
    private int f8655do;

    /* renamed from: else, reason: not valid java name */
    private fe1 f8656else;

    /* renamed from: for, reason: not valid java name */
    private v00 f8657for;

    /* renamed from: goto, reason: not valid java name */
    private Cthrow f8658goto;

    /* renamed from: if, reason: not valid java name */
    private dw f8659if;

    /* renamed from: new, reason: not valid java name */
    private Cgoto f8660new;

    /* renamed from: this, reason: not valid java name */
    private Csuper f8661this;

    /* renamed from: try, reason: not valid java name */
    private gw f8662try;

    public zv(dw dwVar, v00 v00Var, Cgoto cgoto, gw gwVar) {
        this.f8655do = 1;
        this.f8659if = dwVar;
        this.f8657for = v00Var;
        this.f8660new = cgoto;
        this.f8662try = gwVar;
    }

    private zv(Csuper csuper) {
        int i;
        this.f8655do = 1;
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(0);
        try {
            this.f8655do = Cgoto.m33040catch(aSN1EncodableMo33075final).m33044final().intValue();
            try {
                aSN1EncodableMo33075final = csuper.mo33075final(1);
            } catch (IllegalArgumentException unused) {
            }
            i = 2;
        } catch (IllegalArgumentException unused2) {
            i = 1;
        }
        this.f8659if = dw.m1551else(aSN1EncodableMo33075final);
        int i2 = i + 1;
        this.f8657for = v00.m8707case(csuper.mo33075final(i));
        int i3 = i2 + 1;
        this.f8660new = Cgoto.m33040catch(csuper.mo33075final(i2));
        int i4 = i3 + 1;
        this.f8662try = gw.m2791try(csuper.mo33075final(i3));
        while (i4 < csuper.size()) {
            int i5 = i4 + 1;
            ASN1Encodable aSN1EncodableMo33075final2 = csuper.mo33075final(i4);
            if (aSN1EncodableMo33075final2 instanceof Cimport) {
                Cimport cimportM33063catch = Cimport.m33063catch(aSN1EncodableMo33075final2);
                int tagNo = cimportM33063catch.getTagNo();
                if (tagNo == 0) {
                    this.f8654case = xa1.m9443case(cimportM33063catch, false);
                } else if (tagNo == 1) {
                    this.f8656else = fe1.m2258new(Csuper.m33130class(cimportM33063catch, false));
                } else if (tagNo == 2) {
                    this.f8658goto = Cthrow.m33152const(cimportM33063catch, false);
                } else {
                    if (tagNo != 3) {
                        throw new IllegalArgumentException("Unknown tag encountered: " + tagNo);
                    }
                    this.f8661this = Csuper.m33130class(cimportM33063catch, false);
                }
            } else {
                try {
                    this.f8653break = y90.m9782break(aSN1EncodableMo33075final2);
                } catch (IllegalArgumentException unused3) {
                }
            }
            i4 = i5;
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static zv m10287goto(Object obj) {
        if (obj instanceof zv) {
            return (zv) obj;
        }
        if (obj != null) {
            return new zv(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: import, reason: not valid java name */
    private void m10288import(int i) {
        this.f8655do = i;
    }

    /* renamed from: this, reason: not valid java name */
    public static zv m10289this(Cimport cimport, boolean z) {
        return m10287goto(Csuper.m33130class(cimport, z));
    }

    /* renamed from: throw, reason: not valid java name */
    private void m10290throw(dw dwVar) {
        this.f8659if = dwVar;
    }

    /* renamed from: while, reason: not valid java name */
    private void m10291while(v00 v00Var) {
        this.f8657for = v00Var;
    }

    /* renamed from: break, reason: not valid java name */
    public v00 m10292break() {
        return this.f8657for;
    }

    /* renamed from: case, reason: not valid java name */
    public xa1 m10293case() {
        return this.f8654case;
    }

    /* renamed from: catch, reason: not valid java name */
    public fe1 m10294catch() {
        return this.f8656else;
    }

    /* renamed from: class, reason: not valid java name */
    public Cthrow m10295class() {
        return this.f8658goto;
    }

    /* renamed from: const, reason: not valid java name */
    public gw m10296const() {
        return this.f8662try;
    }

    /* renamed from: else, reason: not valid java name */
    public y90 m10297else() {
        return this.f8653break;
    }

    /* renamed from: final, reason: not valid java name */
    public Cgoto m10298final() {
        return this.f8660new;
    }

    /* renamed from: new, reason: not valid java name */
    public u42[] m10299new() {
        Csuper csuper = this.f8661this;
        if (csuper != null) {
            return u42.m8239new(csuper);
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    public int m10300super() {
        return this.f8655do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        int i = this.f8655do;
        if (i != 1) {
            cimport.m3516do(new Cgoto(i));
        }
        cimport.m3516do(this.f8659if);
        cimport.m3516do(this.f8657for);
        cimport.m3516do(this.f8660new);
        cimport.m3516do(this.f8662try);
        if (this.f8654case != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f8654case));
        }
        if (this.f8656else != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, this.f8656else));
        }
        if (this.f8658goto != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 2, this.f8658goto));
        }
        if (this.f8661this != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 3, this.f8661this));
        }
        y90 y90Var = this.f8653break;
        if (y90Var != null) {
            cimport.m3516do(y90Var);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("DVCSCertInfo {\n");
        if (this.f8655do != 1) {
            stringBuffer.append("version: " + this.f8655do + "\n");
        }
        stringBuffer.append("dvReqInfo: " + this.f8659if + "\n");
        stringBuffer.append("messageImprint: " + this.f8657for + "\n");
        stringBuffer.append("serialNumber: " + this.f8660new + "\n");
        stringBuffer.append("responseTime: " + this.f8662try + "\n");
        if (this.f8654case != null) {
            stringBuffer.append("dvStatus: " + this.f8654case + "\n");
        }
        if (this.f8656else != null) {
            stringBuffer.append("policy: " + this.f8656else + "\n");
        }
        if (this.f8658goto != null) {
            stringBuffer.append("reqSignature: " + this.f8658goto + "\n");
        }
        if (this.f8661this != null) {
            stringBuffer.append("certs: " + this.f8661this + "\n");
        }
        if (this.f8653break != null) {
            stringBuffer.append("extensions: " + this.f8653break + "\n");
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public dw m10301try() {
        return this.f8659if;
    }
}
