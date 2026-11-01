package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;
import java.util.Objects;
import org.bouncycastle.util.Cfor;

/* loaded from: classes3.dex */
public class g extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29070do;

    public g(String str) {
        this(str, false);
    }

    public g(String str, boolean z) {
        Objects.requireNonNull(str, "string cannot be null");
        if (z && !m33025final(str)) {
            throw new IllegalArgumentException("string contains illegal characters");
        }
        this.f29070do = Cfor.m36358goto(str);
    }

    public g(byte[] bArr) {
        this.f29070do = bArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static g m33023catch(Object obj) {
        if (obj == null || (obj instanceof g)) {
            return (g) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (g) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static g m33024class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof g)) ? m33023catch(cfinalM33065const) : new g(((Cclass) cfinalM33065const).mo5490const());
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m33025final(String str) {
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) > 127) {
                return false;
            }
        }
        return true;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29070do.length) + 1 + this.f29070do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33026const() {
        return q3.m6371final(this.f29070do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return Cfor.m36359if(this.f29070do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29070do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof g) {
            return q3.m6362case(this.f29070do, ((g) cfinal).f29070do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(22, this.f29070do);
    }
}
