package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class i extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29085do;

    public i(String str) {
        this(str, false);
    }

    public i(String str, boolean z) {
        if (z && !m33049final(str)) {
            throw new IllegalArgumentException("string contains illegal characters");
        }
        this.f29085do = Cfor.m36358goto(str);
    }

    public i(byte[] bArr) {
        this.f29085do = bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static i m33047catch(Object obj) {
        if (obj == null || (obj instanceof i)) {
            return (i) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (i) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static i m33048class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof i)) ? m33047catch(cfinalM33065const) : new i(Cclass.m32796catch(cfinalM33065const).mo5490const());
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m33049final(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            char cCharAt = str.charAt(length);
            if (cCharAt > 127) {
                return false;
            }
            if (('0' > cCharAt || cCharAt > '9') && cCharAt != ' ') {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29085do.length) + 1 + this.f29085do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33050const() {
        return q3.m6371final(this.f29085do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return Cfor.m36359if(this.f29085do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29085do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof i) {
            return q3.m6362case(this.f29085do, ((i) cfinal).f29085do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(18, this.f29085do);
    }
}
