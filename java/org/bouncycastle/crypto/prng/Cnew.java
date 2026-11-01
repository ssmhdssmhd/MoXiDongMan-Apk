package org.bouncycastle.crypto.prng;

/* renamed from: org.bouncycastle.crypto.prng.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew {

    /* renamed from: org.bouncycastle.crypto.prng.new$if, reason: invalid class name */
    public class Cif implements Runnable {

        /* renamed from: do, reason: not valid java name */
        private volatile int f30343do;

        /* renamed from: if, reason: not valid java name */
        private volatile boolean f30345if;

        private Cif() {
            this.f30343do = 0;
            this.f30345if = false;
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m33901do(int i, boolean z) throws InterruptedException {
            Thread thread = new Thread(this);
            byte[] bArr = new byte[i];
            this.f30343do = 0;
            this.f30345if = false;
            thread.start();
            if (!z) {
                i *= 8;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                while (this.f30343do == i2) {
                    try {
                        Thread.sleep(1L);
                    } catch (InterruptedException unused) {
                    }
                }
                i2 = this.f30343do;
                if (z) {
                    bArr[i3] = (byte) (i2 & 255);
                } else {
                    int i4 = i3 / 8;
                    bArr[i4] = (byte) ((bArr[i4] << 1) | (i2 & 1));
                }
            }
            this.f30345if = true;
            return bArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.f30345if) {
                this.f30343do++;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public byte[] m33900do(int i, boolean z) {
        return new Cif().m33901do(i, z);
    }
}
