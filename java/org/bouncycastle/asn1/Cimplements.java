package org.bouncycastle.asn1;

import android.support.v4.q3;
import java.io.IOException;

/* renamed from: org.bouncycastle.asn1.implements, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cimplements extends Cfinal implements ASN1String {

    /* renamed from: do, reason: not valid java name */
    private final char[] f29093do;

    public Cimplements(String str) {
        this.f29093do = str.toCharArray();
    }

    public Cimplements(byte[] bArr) {
        int length = bArr.length / 2;
        char[] cArr = new char[length];
        for (int i = 0; i != length; i++) {
            int i2 = i * 2;
            cArr[i] = (char) ((bArr[i2 + 1] & 255) | (bArr[i2] << 8));
        }
        this.f29093do = cArr;
    }

    public Cimplements(char[] cArr) {
        this.f29093do = cArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public static Cimplements m33061catch(Object obj) {
        if (obj == null || (obj instanceof Cimplements)) {
            return (Cimplements) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Cimplements) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error in getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static Cimplements m33062class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Cimplements)) ? m33061catch(cfinalM33065const) : new Cimplements(Cclass.m32796catch(cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29093do.length * 2) + 1 + (this.f29093do.length * 2);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        return new String(this.f29093do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.p(this.f29093do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof Cimplements) {
            return q3.m6369else(this.f29093do, ((Cimplements) cfinal).f29093do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.mo32910try(30);
        cconst.m32900catch(this.f29093do.length * 2);
        int i = 0;
        while (true) {
            char[] cArr = this.f29093do;
            if (i == cArr.length) {
                return;
            }
            char c = cArr[i];
            cconst.mo32910try((byte) (c >> '\b'));
            cconst.mo32910try((byte) c);
            i++;
        }
    }
}
