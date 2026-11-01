package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class x extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29216do;

    public x(byte[] bArr) {
        this.f29216do = q3.m6371final(bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static x m33188catch(Object obj) {
        if (obj == null || (obj instanceof x)) {
            return (x) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (x) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static x m33189class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof x)) ? m33188catch(cfinalM33065const) : new x(((Cclass) cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29216do.length) + 1 + this.f29216do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33190const() {
        return q3.m6371final(this.f29216do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return Cfor.m36359if(this.f29216do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29216do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof x) {
            return q3.m6362case(this.f29216do, ((x) cfinal).f29216do);
        }
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(21, this.f29216do);
    }
}
