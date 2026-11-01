package android.support.v4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.SkippingCipher;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.modes.AEADBlockCipher;

/* loaded from: classes3.dex */
public class ql extends FilterInputStream {

    /* renamed from: const, reason: not valid java name */
    private static final int f5468const = 2048;

    /* renamed from: break, reason: not valid java name */
    private boolean f5469break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f5470case;

    /* renamed from: catch, reason: not valid java name */
    private long f5471catch;

    /* renamed from: class, reason: not valid java name */
    private int f5472class;

    /* renamed from: do, reason: not valid java name */
    private SkippingCipher f5473do;

    /* renamed from: else, reason: not valid java name */
    private byte[] f5474else;

    /* renamed from: for, reason: not valid java name */
    private Cif f5475for;

    /* renamed from: goto, reason: not valid java name */
    private int f5476goto;

    /* renamed from: if, reason: not valid java name */
    private byte[] f5477if;

    /* renamed from: new, reason: not valid java name */
    private StreamCipher f5478new;

    /* renamed from: this, reason: not valid java name */
    private int f5479this;

    /* renamed from: try, reason: not valid java name */
    private AEADBlockCipher f5480try;

    public ql(InputStream inputStream, StreamCipher streamCipher) {
        this(inputStream, streamCipher, 2048);
    }

    public ql(InputStream inputStream, StreamCipher streamCipher, int i) {
        super(inputStream);
        this.f5478new = streamCipher;
        this.f5477if = new byte[i];
        this.f5473do = streamCipher instanceof SkippingCipher ? (SkippingCipher) streamCipher : null;
    }

    public ql(InputStream inputStream, Cif cif) {
        this(inputStream, cif, 2048);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ql(InputStream inputStream, Cif cif, int i) {
        super(inputStream);
        this.f5475for = cif;
        this.f5477if = new byte[i];
        this.f5473do = cif instanceof SkippingCipher ? (SkippingCipher) cif : null;
    }

    public ql(InputStream inputStream, AEADBlockCipher aEADBlockCipher) {
        this(inputStream, aEADBlockCipher, 2048);
    }

    public ql(InputStream inputStream, AEADBlockCipher aEADBlockCipher, int i) {
        super(inputStream);
        this.f5480try = aEADBlockCipher;
        this.f5477if = new byte[i];
        this.f5473do = aEADBlockCipher instanceof SkippingCipher ? (SkippingCipher) aEADBlockCipher : null;
    }

    /* renamed from: do, reason: not valid java name */
    private void m6617do(int i, boolean z) {
        if (z) {
            Cif cif = this.f5475for;
            if (cif != null) {
                i = cif.mo7553for(i);
            } else {
                AEADBlockCipher aEADBlockCipher = this.f5480try;
                if (aEADBlockCipher != null) {
                    i = aEADBlockCipher.getOutputSize(i);
                }
            }
        } else {
            Cif cif2 = this.f5475for;
            if (cif2 != null) {
                i = cif2.mo7556try(i);
            } else {
                AEADBlockCipher aEADBlockCipher2 = this.f5480try;
                if (aEADBlockCipher2 != null) {
                    i = aEADBlockCipher2.getUpdateOutputSize(i);
                }
            }
        }
        byte[] bArr = this.f5470case;
        if (bArr == null || bArr.length < i) {
            this.f5470case = new byte[i];
        }
    }

    /* renamed from: for, reason: not valid java name */
    private int m6618for() throws IOException {
        if (this.f5469break) {
            return -1;
        }
        this.f5476goto = 0;
        this.f5479this = 0;
        while (true) {
            int i = this.f5479this;
            if (i != 0) {
                return i;
            }
            int iProcessBytes = ((FilterInputStream) this).in.read(this.f5477if);
            if (iProcessBytes == -1) {
                m6619if();
                int i2 = this.f5479this;
                if (i2 == 0) {
                    return -1;
                }
                return i2;
            }
            try {
                m6617do(iProcessBytes, false);
                Cif cif = this.f5475for;
                if (cif != null) {
                    iProcessBytes = cif.mo7554goto(this.f5477if, 0, iProcessBytes, this.f5470case, 0);
                } else {
                    AEADBlockCipher aEADBlockCipher = this.f5480try;
                    if (aEADBlockCipher != null) {
                        iProcessBytes = aEADBlockCipher.processBytes(this.f5477if, 0, iProcessBytes, this.f5470case, 0);
                    } else {
                        this.f5478new.processBytes(this.f5477if, 0, iProcessBytes, this.f5470case, 0);
                    }
                }
                this.f5479this = iProcessBytes;
            } catch (Exception e) {
                throw new pl("Error processing stream ", e);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m6619if() throws IOException {
        int iDoFinal;
        try {
            this.f5469break = true;
            m6617do(0, true);
            Cif cif = this.f5475for;
            if (cif != null) {
                iDoFinal = cif.mo7551do(this.f5470case, 0);
            } else {
                AEADBlockCipher aEADBlockCipher = this.f5480try;
                if (aEADBlockCipher == null) {
                    this.f5479this = 0;
                    return;
                }
                iDoFinal = aEADBlockCipher.doFinal(this.f5470case, 0);
            }
            this.f5479this = iDoFinal;
        } catch (tn0 e) {
            throw new un0("Error finalising cipher", e);
        } catch (Exception e2) {
            throw new IOException("Error finalising cipher " + e2);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.f5479this - this.f5476goto;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
            this.f5476goto = 0;
            this.f5479this = 0;
            this.f5472class = 0;
            this.f5471catch = 0L;
            byte[] bArr = this.f5474else;
            if (bArr != null) {
                q3.c(bArr, (byte) 0);
                this.f5474else = null;
            }
            byte[] bArr2 = this.f5470case;
            if (bArr2 != null) {
                q3.c(bArr2, (byte) 0);
                this.f5470case = null;
            }
            q3.c(this.f5477if, (byte) 0);
        } finally {
            if (!this.f5469break) {
                m6619if();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        ((FilterInputStream) this).in.mark(i);
        SkippingCipher skippingCipher = this.f5473do;
        if (skippingCipher != null) {
            this.f5471catch = skippingCipher.getPosition();
        }
        byte[] bArr = this.f5470case;
        if (bArr != null) {
            byte[] bArr2 = new byte[bArr.length];
            this.f5474else = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        this.f5472class = this.f5476goto;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        if (this.f5473do != null) {
            return ((FilterInputStream) this).in.markSupported();
        }
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f5476goto >= this.f5479this && m6618for() < 0) {
            return -1;
        }
        byte[] bArr = this.f5470case;
        int i = this.f5476goto;
        this.f5476goto = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.f5476goto >= this.f5479this && m6618for() < 0) {
            return -1;
        }
        int iMin = Math.min(i2, available());
        System.arraycopy(this.f5470case, this.f5476goto, bArr, i, iMin);
        this.f5476goto += iMin;
        return iMin;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (this.f5473do == null) {
            throw new IOException("cipher must implement SkippingCipher to be used with reset()");
        }
        ((FilterInputStream) this).in.reset();
        this.f5473do.seekTo(this.f5471catch);
        byte[] bArr = this.f5474else;
        if (bArr != null) {
            this.f5470case = bArr;
        }
        this.f5476goto = this.f5472class;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        if (j <= 0) {
            return 0L;
        }
        if (this.f5473do == null) {
            int iMin = (int) Math.min(j, available());
            this.f5476goto += iMin;
            return iMin;
        }
        long jAvailable = available();
        if (j <= jAvailable) {
            this.f5476goto = (int) (this.f5476goto + j);
            return j;
        }
        this.f5476goto = this.f5479this;
        long jSkip = ((FilterInputStream) this).in.skip(j - jAvailable);
        if (jSkip == this.f5473do.skip(jSkip)) {
            return jSkip + jAvailable;
        }
        throw new IOException("Unable to skip cipher " + jSkip + " bytes.");
    }
}
