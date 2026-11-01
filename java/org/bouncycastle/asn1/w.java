package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* loaded from: classes3.dex */
public class w extends Cfinal implements ASN1String {

    /* renamed from: if, reason: not valid java name */
    private static final char[] f29211if = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: do, reason: not valid java name */
    private final byte[] f29212do;

    public w(byte[] bArr) {
        this.f29212do = q3.m6371final(bArr);
    }

    /* renamed from: catch, reason: not valid java name */
    public static w m33179catch(Object obj) {
        if (obj == null || (obj instanceof w)) {
            return (w) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (w) Cfinal.m33015else((byte[]) obj);
        } catch (Exception e) {
            throw new IllegalArgumentException("encoding error getInstance: " + e.toString());
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static w m33180class(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof w)) ? m33179catch(cfinalM33065const) : new w(((Cclass) cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() {
        return m0.m33082do(this.f29212do.length) + 1 + this.f29212do.length;
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33181const() {
        return q3.m6371final(this.f29212do);
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        StringBuffer stringBuffer = new StringBuffer("#");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new Cconst(byteArrayOutputStream).mo32770const(this);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            for (int i = 0; i != byteArray.length; i++) {
                char[] cArr = f29211if;
                stringBuffer.append(cArr[(byteArray[i] >>> 4) & 15]);
                stringBuffer.append(cArr[byteArray[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException unused) {
            throw new Creturn("internal error encoding UniversalString");
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return q3.n(this.f29212do);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal instanceof w) {
            return q3.m6362case(this.f29212do, ((w) cfinal).f29212do);
        }
        return false;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32909this(28, m33181const());
    }
}
