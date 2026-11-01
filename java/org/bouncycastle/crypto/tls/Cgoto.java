package org.bouncycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.crypto.tls.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: try, reason: not valid java name */
    private static final int f30607try = 1024;

    /* renamed from: do, reason: not valid java name */
    private byte[] f30608do;

    /* renamed from: for, reason: not valid java name */
    private int f30609for;

    /* renamed from: if, reason: not valid java name */
    private int f30610if;

    /* renamed from: new, reason: not valid java name */
    private boolean f30611new;

    public Cgoto() {
        this(1024);
    }

    public Cgoto(int i) {
        this.f30610if = 0;
        this.f30609for = 0;
        this.f30611new = false;
        this.f30608do = i == 0 ? l0.f30675do : new byte[i];
    }

    public Cgoto(byte[] bArr, int i, int i2) {
        this.f30610if = 0;
        this.f30609for = 0;
        this.f30611new = false;
        this.f30608do = bArr;
        this.f30610if = i;
        this.f30609for = i2;
        this.f30611new = true;
    }

    /* renamed from: new, reason: not valid java name */
    public static int m34119new(int i) {
        int i2 = i | (i >> 1);
        int i3 = i2 | (i2 >> 2);
        int i4 = i3 | (i3 >> 4);
        int i5 = i4 | (i4 >> 8);
        return (i5 | (i5 >> 16)) + 1;
    }

    /* renamed from: break, reason: not valid java name */
    public void m34120break() {
        int i = this.f30609for;
        if (i == 0) {
            this.f30608do = l0.f30675do;
        } else {
            int iM34119new = m34119new(i);
            byte[] bArr = this.f30608do;
            if (iM34119new >= bArr.length) {
                return;
            }
            byte[] bArr2 = new byte[iM34119new];
            System.arraycopy(bArr, this.f30610if, bArr2, 0, this.f30609for);
            this.f30608do = bArr2;
        }
        this.f30610if = 0;
    }

    /* renamed from: case, reason: not valid java name */
    public ByteArrayInputStream m34121case(int i) {
        int i2 = this.f30609for;
        if (i <= i2) {
            int i3 = this.f30610if;
            this.f30609for = i2 - i;
            this.f30610if = i3 + i;
            return new ByteArrayInputStream(this.f30608do, i3, i);
        }
        throw new IllegalStateException("Cannot read " + i + " bytes, only got " + this.f30609for);
    }

    /* renamed from: do, reason: not valid java name */
    public void m34122do(byte[] bArr, int i, int i2) {
        if (this.f30611new) {
            throw new IllegalStateException("Cannot add data to read-only buffer");
        }
        int i3 = this.f30610if;
        int i4 = this.f30609for;
        if (i3 + i4 + i2 > this.f30608do.length) {
            int iM34119new = m34119new(i4 + i2);
            byte[] bArr2 = this.f30608do;
            if (iM34119new > bArr2.length) {
                byte[] bArr3 = new byte[iM34119new];
                System.arraycopy(bArr2, this.f30610if, bArr3, 0, this.f30609for);
                this.f30608do = bArr3;
            } else {
                System.arraycopy(bArr2, this.f30610if, bArr2, 0, this.f30609for);
            }
            this.f30610if = 0;
        }
        System.arraycopy(bArr, i, this.f30608do, this.f30610if + this.f30609for, i2);
        this.f30609for += i2;
    }

    /* renamed from: else, reason: not valid java name */
    public void m34123else(int i) {
        int i2 = this.f30609for;
        if (i <= i2) {
            this.f30609for = i2 - i;
            this.f30610if += i;
            return;
        }
        throw new IllegalStateException("Cannot remove " + i + " bytes, only got " + this.f30609for);
    }

    /* renamed from: for, reason: not valid java name */
    public void m34124for(OutputStream outputStream, int i) throws IOException {
        if (i <= this.f30609for) {
            outputStream.write(this.f30608do, this.f30610if, i);
            return;
        }
        throw new IllegalStateException("Cannot copy " + i + " bytes, only got " + this.f30609for);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m34125goto(byte[] bArr, int i, int i2, int i3) {
        m34128try(bArr, i, i2, i3);
        m34123else(i3 + i2);
    }

    /* renamed from: if, reason: not valid java name */
    public int m34126if() {
        return this.f30609for;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m34127this(int i, int i2) {
        byte[] bArr = new byte[i];
        m34125goto(bArr, 0, i, i2);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public void m34128try(byte[] bArr, int i, int i2, int i3) {
        if (bArr.length - i >= i2) {
            if (this.f30609for - i3 < i2) {
                throw new IllegalStateException("Not enough data to read");
            }
            System.arraycopy(this.f30608do, this.f30610if + i3, bArr, i, i2);
        } else {
            throw new IllegalArgumentException("Buffer size of " + bArr.length + " is too small for a read of " + i2 + " bytes");
        }
    }
}
