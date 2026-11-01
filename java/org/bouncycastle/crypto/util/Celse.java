package org.bouncycastle.crypto.util;

import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.crypto.util.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends SecureRandom {

    /* renamed from: do, reason: not valid java name */
    private static byte[] f30878do = new byte[0];
    private final SecureRandom base;
    private int index;
    private Cif tOut;
    private final byte[] transcript;

    /* renamed from: org.bouncycastle.crypto.util.else$if, reason: invalid class name */
    public class Cif extends ByteArrayOutputStream {
        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m34482do() {
            q3.c(((ByteArrayOutputStream) this).buf, (byte) 0);
        }
    }

    public Celse(SecureRandom secureRandom) {
        this.tOut = new Cif();
        this.index = 0;
        this.base = secureRandom;
        this.transcript = f30878do;
    }

    public Celse(byte[] bArr, SecureRandom secureRandom) {
        this.tOut = new Cif();
        this.index = 0;
        this.base = secureRandom;
        this.transcript = q3.m6371final(bArr);
    }

    public void clear() {
        q3.c(this.transcript, (byte) 0);
        this.tOut.m34482do();
    }

    public byte[] getTranscript() {
        return this.tOut.toByteArray();
    }

    @Override // java.security.SecureRandom, java.util.Random
    public final void nextBytes(byte[] bArr) {
        if (this.index >= this.transcript.length) {
            this.base.nextBytes(bArr);
        } else {
            int i = 0;
            while (i != bArr.length) {
                int i2 = this.index;
                byte[] bArr2 = this.transcript;
                if (i2 >= bArr2.length) {
                    break;
                }
                this.index = i2 + 1;
                bArr[i] = bArr2[i2];
                i++;
            }
            if (i != bArr.length) {
                int length = bArr.length - i;
                byte[] bArr3 = new byte[length];
                this.base.nextBytes(bArr3);
                System.arraycopy(bArr3, 0, bArr, i, length);
            }
        }
        try {
            this.tOut.write(bArr);
        } catch (IOException e) {
            throw new IllegalStateException("unable to record transcript: " + e.getMessage());
        }
    }
}
