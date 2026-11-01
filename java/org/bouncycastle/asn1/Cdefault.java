package org.bouncycastle.asn1;

import java.io.IOException;
import java.io.OutputStream;

/* renamed from: org.bouncycastle.asn1.default, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdefault extends Cswitch {

    /* renamed from: org.bouncycastle.asn1.default$do, reason: invalid class name */
    public class Cdo extends OutputStream {

        /* renamed from: do, reason: not valid java name */
        private byte[] f28985do;

        /* renamed from: for, reason: not valid java name */
        private l f28986for;

        /* renamed from: if, reason: not valid java name */
        private int f28987if = 0;

        public Cdo(byte[] bArr) {
            this.f28985do = bArr;
            this.f28986for = new l(Cdefault.this.f5197do);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            int i = this.f28987if;
            if (i != 0) {
                byte[] bArr = new byte[i];
                System.arraycopy(this.f28985do, 0, bArr, 0, i);
                j.m33072super(this.f28986for, bArr);
            }
            Cdefault.this.m33136if();
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
            byte[] bArr = this.f28985do;
            int i2 = this.f28987if;
            int i3 = i2 + 1;
            this.f28987if = i3;
            bArr[i2] = (byte) i;
            if (i3 == bArr.length) {
                j.m33072super(this.f28986for, bArr);
                this.f28987if = 0;
            }
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            while (i2 > 0) {
                int iMin = Math.min(i2, this.f28985do.length - this.f28987if);
                System.arraycopy(bArr, i, this.f28985do, this.f28987if, iMin);
                int i3 = this.f28987if + iMin;
                this.f28987if = i3;
                byte[] bArr2 = this.f28985do;
                if (i3 < bArr2.length) {
                    return;
                }
                j.m33072super(this.f28986for, bArr2);
                this.f28987if = 0;
                i += iMin;
                i2 -= iMin;
            }
        }
    }

    public Cdefault(OutputStream outputStream) throws IOException {
        super(outputStream);
        m33135for(36);
    }

    public Cdefault(OutputStream outputStream, int i, boolean z) throws IOException {
        super(outputStream, i, z);
        m33135for(36);
    }

    /* renamed from: case, reason: not valid java name */
    public OutputStream m32913case(byte[] bArr) {
        return new Cdo(bArr);
    }

    /* renamed from: try, reason: not valid java name */
    public OutputStream m32914try() {
        return m32913case(new byte[1000]);
    }
}
