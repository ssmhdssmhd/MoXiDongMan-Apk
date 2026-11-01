package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class s extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private byte[] f29127do;

    public s(String str) {
        this.f29127do = Cfor.m36358goto(str);
    }

    public s(byte[] bArr) {
        this.f29127do = q3.m6371final(bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static s m33112catch(Object obj) {
        if (obj == null || (obj instanceof s)) {
            return (s) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (s) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static s m33113class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof s)) ? m33112catch(cfinalM33065const) : new s(Cclass.m32796catch(cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29127do.length) + 1 + this.f29127do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33114const() {
        return q3.m6371final(this.f29127do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return Cfor.m36359if(this.f29127do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29127do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof s) {
            return q3.m6362case(this.f29127do, ((s) cfinal).f29127do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(20, this.f29127do);
    }
}
