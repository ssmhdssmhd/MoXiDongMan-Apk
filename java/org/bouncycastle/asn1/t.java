package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class t extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private byte[] f29175do;

    public t(String str) {
        this(Cfor.m36352class(str));
    }

    public t(byte[] bArr) {
        this.f29175do = bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static t m33137catch(Object obj) {
        if (obj instanceof s) {
            return new t(((s) obj).m33114const());
        }
        if (obj == null || (obj instanceof t)) {
            return (t) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return new t(((s) Cfinal.m33015else((byte[]) obj)).m33114const());
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static t m33138class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof s) || (cfinalM33065const instanceof t)) ? m33137catch(cfinalM33065const) : new t(Cclass.m32796catch(cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29175do.length) + 1 + this.f29175do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33139const() {
        return q3.m6371final(this.f29175do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return Cfor.m36357for(this.f29175do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29175do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof t) {
            return q3.m6362case(this.f29175do, ((t) cfinal).f29175do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(20, this.f29175do);
    }
}
