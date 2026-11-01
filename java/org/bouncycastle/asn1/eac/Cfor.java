package org.bouncycastle.asn1.eac;

import android.support.v4.Cimport;
import android.support.v4.r30;
import android.support.v4.sg;
import android.support.v4.ug1;
import android.support.v4.xg;
import java.io.IOException;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cdo;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Ctransient;
import org.bouncycastle.asn1.j;

/* renamed from: org.bouncycastle.asn1.eac.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Cbreak {

    /* renamed from: break, reason: not valid java name */
    private static final int f29006break = 1;

    /* renamed from: catch, reason: not valid java name */
    private static final int f29007catch = 2;

    /* renamed from: class, reason: not valid java name */
    private static final int f29008class = 4;

    /* renamed from: const, reason: not valid java name */
    private static final int f29009const = 8;

    /* renamed from: final, reason: not valid java name */
    private static final int f29010final = 16;

    /* renamed from: import, reason: not valid java name */
    public static final int f29011import = 13;

    /* renamed from: super, reason: not valid java name */
    private static final int f29012super = 32;

    /* renamed from: throw, reason: not valid java name */
    private static final int f29013throw = 64;

    /* renamed from: while, reason: not valid java name */
    public static final int f29014while = 127;

    /* renamed from: case, reason: not valid java name */
    private Cnew f29015case;

    /* renamed from: do, reason: not valid java name */
    public Celse f29016do;

    /* renamed from: else, reason: not valid java name */
    private Cdo f29017else;

    /* renamed from: for, reason: not valid java name */
    private Cdo f29018for;

    /* renamed from: goto, reason: not valid java name */
    private Cdo f29019goto;

    /* renamed from: if, reason: not valid java name */
    private Cdo f29020if;

    /* renamed from: new, reason: not valid java name */
    private ug1 f29021new;

    /* renamed from: this, reason: not valid java name */
    private int f29022this = 0;

    /* renamed from: try, reason: not valid java name */
    private Cdo f29023try;

    private Cfor(Cdo cdo) throws IOException, IllegalArgumentException {
        m32954return(cdo);
    }

    public Cfor(Cdo cdo, xg xgVar, ug1 ug1Var, sg sgVar, Cnew cnew, Celse celse, Celse celse2) throws IllegalArgumentException {
        m32952native(cdo);
        m32953public(new Ctransient(2, xgVar.m7397if()));
        m32955static(ug1Var);
        m32951import(new Ctransient(32, sgVar.m7397if()));
        m32958while(cnew);
        try {
            m32956super(new Ctransient(false, 37, (ASN1Encodable) new j(celse.m32946for())));
            m32957throw(new Ctransient(false, 36, (ASN1Encodable) new j(celse2.m32946for())));
        } catch (IOException e) {
            throw new IllegalArgumentException("unable to encode dates: " + e.getMessage());
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cfor m32948catch(Object obj) throws IOException {
        if (obj instanceof Cfor) {
            return (Cfor) obj;
        }
        if (obj != null) {
            return new Cfor(Cdo.m32915const(obj));
        }
        return null;
    }

    /* renamed from: const, reason: not valid java name */
    private Cfinal m32949const() throws IOException {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f29020if);
        cimport.m3516do(this.f29018for);
        cimport.m3516do(new Ctransient(false, 73, (ASN1Encodable) this.f29021new));
        cimport.m3516do(this.f29023try);
        cimport.m3516do(this.f29015case);
        cimport.m3516do(this.f29017else);
        cimport.m3516do(this.f29019goto);
        return new Ctransient(78, cimport);
    }

    /* renamed from: final, reason: not valid java name */
    private Cfinal m32950final() throws IOException {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f29020if);
        cimport.m3516do(new Ctransient(false, 73, (ASN1Encodable) this.f29021new));
        cimport.m3516do(this.f29023try);
        return new Ctransient(78, cimport);
    }

    /* renamed from: import, reason: not valid java name */
    private void m32951import(Cdo cdo) throws IllegalArgumentException {
        if (cdo.m32918catch() != 32) {
            throw new IllegalArgumentException("Not an Iso7816Tags.CARDHOLDER_NAME tag");
        }
        this.f29023try = cdo;
        this.f29022this |= 8;
    }

    /* renamed from: native, reason: not valid java name */
    private void m32952native(Cdo cdo) throws IllegalArgumentException {
        if (cdo.m32918catch() == 41) {
            this.f29020if = cdo;
            this.f29022this |= 1;
        } else {
            throw new IllegalArgumentException("Not an Iso7816Tags.INTERCHANGE_PROFILE tag :" + r30.m6736if(cdo));
        }
    }

    /* renamed from: public, reason: not valid java name */
    private void m32953public(Cdo cdo) throws IllegalArgumentException {
        if (cdo.m32918catch() != 2) {
            throw new IllegalArgumentException("Not an Iso7816Tags.ISSUER_IDENTIFICATION_NUMBER tag");
        }
        this.f29018for = cdo;
        this.f29022this |= 2;
    }

    /* renamed from: return, reason: not valid java name */
    private void m32954return(Cdo cdo) throws IOException, IllegalArgumentException {
        if (cdo.m32918catch() != 78) {
            throw new IOException("Bad tag : not an iso7816 CERTIFICATE_CONTENT_TEMPLATE");
        }
        Celse celse = new Celse(cdo.m32919class());
        while (true) {
            Cfinal cfinalM33002break = celse.m33002break();
            if (cfinalM33002break == null) {
                celse.close();
                return;
            }
            if (!(cfinalM33002break instanceof Cdo)) {
                throw new IOException("Not a valid iso7816 content : not a ASN1ApplicationSpecific Object :" + r30.m6736if(cdo) + cfinalM33002break.getClass());
            }
            Cdo cdo2 = (Cdo) cfinalM33002break;
            int iM32918catch = cdo2.m32918catch();
            if (iM32918catch == 2) {
                m32953public(cdo2);
            } else if (iM32918catch == 32) {
                m32951import(cdo2);
            } else if (iM32918catch == 41) {
                m32952native(cdo2);
            } else if (iM32918catch == 73) {
                m32955static(ug1.m8441new(cdo2.m32921throw(16)));
            } else if (iM32918catch == 76) {
                m32958while(new Cnew(cdo2));
            } else if (iM32918catch == 36) {
                m32957throw(cdo2);
            } else {
                if (iM32918catch != 37) {
                    this.f29022this = 0;
                    throw new IOException("Not a valid iso7816 ASN1ApplicationSpecific tag " + cdo2.m32918catch());
                }
                m32956super(cdo2);
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    private void m32955static(ug1 ug1Var) {
        this.f29021new = ug1.m8441new(ug1Var);
        this.f29022this |= 4;
    }

    /* renamed from: super, reason: not valid java name */
    private void m32956super(Cdo cdo) throws IllegalArgumentException {
        if (cdo.m32918catch() == 37) {
            this.f29017else = cdo;
            this.f29022this |= 32;
        } else {
            throw new IllegalArgumentException("Not an Iso7816Tags.APPLICATION_EFFECTIVE_DATE tag :" + r30.m6736if(cdo));
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m32957throw(Cdo cdo) throws IllegalArgumentException {
        if (cdo.m32918catch() != 36) {
            throw new IllegalArgumentException("Not an Iso7816Tags.APPLICATION_EXPIRATION_DATE tag");
        }
        this.f29019goto = cdo;
        this.f29022this |= 64;
    }

    /* renamed from: while, reason: not valid java name */
    private void m32958while(Cnew cnew) {
        this.f29015case = cnew;
        this.f29022this |= 16;
    }

    /* renamed from: break, reason: not valid java name */
    public xg m32959break() throws IOException {
        if ((this.f29022this & 2) == 2) {
            return new xg(this.f29018for.m32919class());
        }
        throw new IOException("Certification authority reference not set");
    }

    /* renamed from: case, reason: not valid java name */
    public Cnew m32960case() throws IOException {
        if ((this.f29022this & 16) == 16) {
            return this.f29015case;
        }
        throw new IOException("Certificate Holder Authorisation not set");
    }

    /* renamed from: class, reason: not valid java name */
    public ug1 m32961class() {
        return this.f29021new;
    }

    /* renamed from: else, reason: not valid java name */
    public sg m32962else() {
        return new sg(this.f29023try.m32919class());
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdo m32963goto() {
        return this.f29020if;
    }

    /* renamed from: new, reason: not valid java name */
    public Celse m32964new() {
        if ((this.f29022this & 32) == 32) {
            return new Celse(this.f29017else.m32919class());
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public int m32965this() {
        return this.f29022this;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        try {
            int i = this.f29022this;
            if (i == 127) {
                return m32949const();
            }
            if (i == 13) {
                return m32950final();
            }
            return null;
        } catch (IOException unused) {
            return null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public Celse m32966try() throws IOException {
        if ((this.f29022this & 64) == 64) {
            return new Celse(this.f29019goto.m32919class());
        }
        throw new IOException("certificate Expiration Date not set");
    }
}
