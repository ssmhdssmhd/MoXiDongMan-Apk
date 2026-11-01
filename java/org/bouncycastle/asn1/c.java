package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class c extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f28907do;

    public c(String str) {
        this.f28907do = Cfor.m36358goto(str);
    }

    public c(byte[] bArr) {
        this.f28907do = bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static c m32766catch(Object obj) {
        if (obj == null || (obj instanceof c)) {
            return (c) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (c) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static c m32767class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof c)) ? m32766catch(cfinalM33065const) : new c(((Cclass) cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f28907do.length) + 1 + this.f28907do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m32768const() {
        return q3.m6371final(this.f28907do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return Cfor.m36359if(this.f28907do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f28907do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new, reason: not valid java name */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof c) {
            return q3.m6362case(this.f28907do, ((c) cfinal).f28907do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(27, this.f28907do);
    }
}
