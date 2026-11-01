package org.bouncycastle.asn1;

import android.support.v4.Creturn;
import android.support.v4.a22;
import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* renamed from: org.bouncycastle.asn1.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif extends Cfinal implements ASN1String {

    /* renamed from: for, reason: not valid java name */
    private static final char[] f29090for = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: do, reason: not valid java name */
    public final byte[] f29091do;

    /* renamed from: if, reason: not valid java name */
    public final int f29092if;

    public Cif(byte[] bArr, int i) {
        Objects.requireNonNull(bArr, "data cannot be null");
        if (bArr.length == 0 && i != 0) {
            throw new IllegalArgumentException("zero length data with non-zero pad bits");
        }
        if (i > 7 || i < 0) {
            throw new IllegalArgumentException("pad bits cannot be greater than 7 or less than 0");
        }
        this.f29091do = q3.m6371final(bArr);
        this.f29092if = i;
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[] m33053catch(byte[] bArr, int i) {
        byte[] bArrM6371final = q3.m6371final(bArr);
        if (i > 0) {
            int length = bArr.length - 1;
            bArrM6371final[length] = (byte) ((255 << i) & bArrM6371final[length]);
        }
        return bArrM6371final;
    }

    /* renamed from: class, reason: not valid java name */
    public static Cif m33054class(int i, InputStream inputStream) throws IOException {
        if (i < 1) {
            throw new IllegalArgumentException("truncated BIT STRING detected");
        }
        int i2 = inputStream.read();
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        if (i3 != 0) {
            if (a22.m17case(inputStream, bArr) != i3) {
                throw new EOFException("EOF encountered in middle of BIT STRING");
            }
            if (i2 > 0 && i2 < 8) {
                int i4 = i3 - 1;
                if (bArr[i4] != ((byte) (bArr[i4] & (255 << i2)))) {
                    return new a0(bArr, i2);
                }
            }
        }
        return new Cinstanceof(bArr, i2);
    }

    /* renamed from: final, reason: not valid java name */
    public static byte[] m33055final(int i) {
        if (i == 0) {
            return new byte[0];
        }
        int i2 = 4;
        for (int i3 = 3; i3 >= 1 && ((255 << (i3 * 8)) & i) == 0; i3--) {
            i2--;
        }
        byte[] bArr = new byte[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            bArr[i4] = (byte) ((i >> (i4 * 8)) & 255);
        }
        return bArr;
    }

    /* renamed from: while, reason: not valid java name */
    public static int m33056while(int i) {
        int i2;
        int i3 = 3;
        while (true) {
            if (i3 < 0) {
                i2 = 0;
                break;
            }
            if (i3 != 0) {
                int i4 = i >> (i3 * 8);
                if (i4 != 0) {
                    i2 = i4 & 255;
                    break;
                }
                i3--;
            } else {
                if (i != 0) {
                    i2 = i & 255;
                    break;
                }
                i3--;
            }
        }
        if (i2 == 0) {
            return 0;
        }
        int i5 = 1;
        while (true) {
            i2 <<= 1;
            if ((i2 & 255) == 0) {
                return 8 - i5;
            }
            i5++;
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: break */
    public Cfinal mo32798break() {
        return new a0(this.f29091do, this.f29092if);
    }

    /* renamed from: const, reason: not valid java name */
    public byte[] m33057const() {
        return m33053catch(this.f29091do, this.f29092if);
    }

    public Cfinal getLoadedObject() {
        return toASN1Primitive();
    }

    @Override // org.bouncycastle.asn1.ASN1String
    public String getString() {
        StringBuffer stringBuffer = new StringBuffer("#");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            new Cconst(byteArrayOutputStream).mo32770const(this);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            for (int i = 0; i != byteArray.length; i++) {
                char[] cArr = f29090for;
                stringBuffer.append(cArr[(byteArray[i] >>> 4) & 15]);
                stringBuffer.append(cArr[byteArray[i] & 15]);
            }
            return stringBuffer.toString();
        } catch (IOException e) {
            throw new Creturn("Internal error encoding BitString: " + e.getMessage(), e);
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return this.f29092if ^ q3.n(m33057const());
    }

    /* renamed from: import, reason: not valid java name */
    public int m33058import() {
        byte[] bArrM33053catch = this.f29091do;
        int i = this.f29092if;
        if (i > 0 && bArrM33053catch.length <= 4) {
            bArrM33053catch = m33053catch(bArrM33053catch, i);
        }
        int i2 = 0;
        for (int i3 = 0; i3 != bArrM33053catch.length && i3 != 4; i3++) {
            i2 |= (bArrM33053catch[i3] & 255) << (i3 * 8);
        }
        return i2;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (!(cfinal instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) cfinal;
        return this.f29092if == cif.f29092if && q3.m6362case(m33057const(), cif.m33057const());
    }

    /* renamed from: super, reason: not valid java name */
    public byte[] m33059super() {
        if (this.f29092if == 0) {
            return q3.m6371final(this.f29091do);
        }
        throw new IllegalStateException("attempt to get non-octet aligned data from BIT STRING");
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: this */
    public Cfinal mo32780this() {
        return new Cinstanceof(this.f29091do, this.f29092if);
    }

    /* renamed from: throw, reason: not valid java name */
    public int m33060throw() {
        return this.f29092if;
    }

    public String toString() {
        return getString();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public abstract void mo32750try(Cconst cconst) throws IOException;
}
