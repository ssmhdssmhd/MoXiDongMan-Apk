package org.bouncycastle.asn1;

import android.support.v4.q3;
import android.support.v4.t3;
import java.io.IOException;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.util.encoders.Cfor;

/* renamed from: org.bouncycastle.asn1.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends Cfinal {

    /* renamed from: do, reason: not valid java name */
    public final boolean f28989do;

    /* renamed from: for, reason: not valid java name */
    public final byte[] f28990for;

    /* renamed from: if, reason: not valid java name */
    public final int f28991if;

    public Cdo(boolean z, int i, byte[] bArr) {
        this.f28989do = z;
        this.f28991if = i;
        this.f28990for = q3.m6371final(bArr);
    }

    /* renamed from: const, reason: not valid java name */
    public static Cdo m32915const(Object obj) {
        if (obj == null || (obj instanceof Cdo)) {
            return (Cdo) obj;
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
        }
        try {
            return m32915const(Cfinal.m33015else((byte[]) obj));
        } catch (IOException e) {
            throw new IllegalArgumentException("Failed to construct object from byte[]: " + e.getMessage());
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static int m32916final(byte[] bArr) {
        int i = bArr[1] & 255;
        if (i == 128 || i <= 127) {
            return 2;
        }
        int i2 = i & 127;
        if (i2 <= 4) {
            return i2 + 2;
        }
        throw new IllegalStateException("DER length more than 4 bytes: " + i2);
    }

    /* renamed from: while, reason: not valid java name */
    private byte[] m32917while(int i, byte[] bArr) throws IOException {
        int i2;
        if ((bArr[0] & t3.f6399protected) == 31) {
            i2 = 2;
            int i3 = bArr[1] & 255;
            if ((i3 & 127) == 0) {
                throw new IOException("corrupted stream - invalid high tag number found");
            }
            while ((i3 & 128) != 0) {
                i3 = bArr[i2] & 255;
                i2++;
            }
        } else {
            i2 = 1;
        }
        int length = (bArr.length - i2) + 1;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, i2, bArr2, 1, length - 1);
        bArr2[0] = (byte) i;
        return bArr2;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        return m0.m33084if(this.f28991if) + m0.m33082do(this.f28990for.length) + this.f28990for.length;
    }

    /* renamed from: catch, reason: not valid java name */
    public int m32918catch() {
        return this.f28991if;
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m32919class() {
        return q3.m6371final(this.f28990for);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return this.f28989do;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        boolean z = this.f28989do;
        return ((z ? 1 : 0) ^ this.f28991if) ^ q3.n(this.f28990for);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (!(cfinal instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) cfinal;
        return this.f28989do == cdo.f28989do && this.f28991if == cdo.f28991if && q3.m6362case(this.f28990for, cdo.f28990for);
    }

    /* renamed from: super, reason: not valid java name */
    public Cfinal m32920super() throws IOException {
        return Cfinal.m33015else(m32919class());
    }

    /* renamed from: throw, reason: not valid java name */
    public Cfinal m32921throw(int i) throws IOException {
        if (i >= 31) {
            throw new IOException("unsupported tag number");
        }
        byte[] encoded = getEncoded();
        byte[] bArrM32917while = m32917while(i, encoded);
        if ((encoded[0] & 32) != 0) {
            bArrM32917while[0] = (byte) (bArrM32917while[0] | 32);
        }
        return Cfinal.m33015else(bArrM32917while);
    }

    public String toString() {
        String strM36331goto;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        if (mo32749goto()) {
            stringBuffer.append("CONSTRUCTED ");
        }
        stringBuffer.append("APPLICATION ");
        stringBuffer.append(Integer.toString(m32918catch()));
        stringBuffer.append("]");
        if (this.f28990for != null) {
            stringBuffer.append(" #");
            strM36331goto = Cfor.m36331goto(this.f28990for);
        } else {
            strM36331goto = " #null";
        }
        stringBuffer.append(strM36331goto);
        stringBuffer.append(Cclass.f28652do);
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.m32906goto(this.f28989do ? 96 : 64, this.f28991if, this.f28990for);
    }
}
