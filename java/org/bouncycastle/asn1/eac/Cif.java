package org.bouncycastle.asn1.eac;

import android.support.v4.Cimport;
import android.support.v4.Creturn;
import android.support.v4.q3;
import android.support.v4.ug1;
import java.io.IOException;
import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cdo;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Ctransient;
import org.bouncycastle.asn1.j;

/* renamed from: org.bouncycastle.asn1.eac.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    private static final int f29024case = 2;

    /* renamed from: try, reason: not valid java name */
    private static final int f29025try = 1;

    /* renamed from: do, reason: not valid java name */
    private final Cdo f29026do;

    /* renamed from: for, reason: not valid java name */
    private byte[] f29027for = null;

    /* renamed from: if, reason: not valid java name */
    private Cfor f29028if;

    /* renamed from: new, reason: not valid java name */
    private byte[] f29029new;

    private Cif(Cdo cdo) throws IOException {
        this.f29029new = null;
        this.f29026do = cdo;
        if (!cdo.mo32749goto() || cdo.m32918catch() != 7) {
            m32967break(cdo);
            return;
        }
        Csuper csuperM33129catch = Csuper.m33129catch(cdo.m32921throw(16));
        m32967break(Cdo.m32915const(csuperM33129catch.mo33075final(0)));
        this.f29029new = Cdo.m32915const(csuperM33129catch.mo33075final(csuperM33129catch.size() - 1)).m32919class();
    }

    /* renamed from: break, reason: not valid java name */
    private void m32967break(Cdo cdo) throws IOException {
        if (cdo.m32918catch() != 33) {
            throw new IOException("not a CARDHOLDER_CERTIFICATE in request:" + cdo.m32918catch());
        }
        int i = 0;
        Enumeration enumerationMo33076super = Csuper.m33129catch(cdo.m32921throw(16)).mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            Cdo cdoM32915const = Cdo.m32915const(enumerationMo33076super.nextElement());
            int iM32918catch = cdoM32915const.m32918catch();
            if (iM32918catch == 55) {
                this.f29027for = cdoM32915const.m32919class();
                i |= 2;
            } else {
                if (iM32918catch != 78) {
                    throw new IOException("Invalid tag, not an CV Certificate Request element:" + cdoM32915const.m32918catch());
                }
                this.f29028if = Cfor.m32948catch(cdoM32915const);
                i |= 1;
            }
        }
        if ((i & 3) != 0) {
            return;
        }
        throw new IOException("Invalid CARDHOLDER_CERTIFICATE in request:" + cdo.m32918catch());
    }

    /* renamed from: case, reason: not valid java name */
    public static Cif m32968case(Object obj) {
        if (obj instanceof Cif) {
            return (Cif) obj;
        }
        if (obj == null) {
            return null;
        }
        try {
            return new Cif(Cdo.m32915const(obj));
        } catch (IOException e) {
            throw new Creturn("unable to parse data: " + e.getMessage(), e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m32969else() {
        return q3.m6371final(this.f29029new);
    }

    /* renamed from: goto, reason: not valid java name */
    public ug1 m32970goto() {
        return this.f29028if.m32961class();
    }

    /* renamed from: new, reason: not valid java name */
    public Cfor m32971new() {
        return this.f29028if;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m32972this() {
        return this.f29029new != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cdo cdo = this.f29026do;
        if (cdo != null) {
            return cdo;
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f29028if);
        try {
            cimport.m3516do(new Ctransient(false, 55, (ASN1Encodable) new j(this.f29027for)));
            return new Ctransient(33, cimport);
        } catch (IOException unused) {
            throw new IllegalStateException("unable to convert signature!");
        }
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m32973try() {
        return q3.m6371final(this.f29027for);
    }
}
