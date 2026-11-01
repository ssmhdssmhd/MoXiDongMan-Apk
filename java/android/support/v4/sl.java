package android.support.v4;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Cif;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.modes.AEADBlockCipher;

/* loaded from: classes3.dex */
public class sl extends FilterOutputStream {

    /* renamed from: do, reason: not valid java name */
    private Cif f6196do;

    /* renamed from: for, reason: not valid java name */
    private AEADBlockCipher f6197for;

    /* renamed from: if, reason: not valid java name */
    private StreamCipher f6198if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f6199new;

    /* renamed from: try, reason: not valid java name */
    private byte[] f6200try;

    public sl(OutputStream outputStream, StreamCipher streamCipher) {
        super(outputStream);
        this.f6199new = new byte[1];
        this.f6198if = streamCipher;
    }

    public sl(OutputStream outputStream, Cif cif) {
        super(outputStream);
        this.f6199new = new byte[1];
        this.f6196do = cif;
    }

    public sl(OutputStream outputStream, AEADBlockCipher aEADBlockCipher) {
        super(outputStream);
        this.f6199new = new byte[1];
        this.f6197for = aEADBlockCipher;
    }

    /* renamed from: do, reason: not valid java name */
    private void m7505do(int i, boolean z) {
        if (z) {
            Cif cif = this.f6196do;
            if (cif != null) {
                i = cif.mo7553for(i);
            } else {
                AEADBlockCipher aEADBlockCipher = this.f6197for;
                if (aEADBlockCipher != null) {
                    i = aEADBlockCipher.getOutputSize(i);
                }
            }
        } else {
            Cif cif2 = this.f6196do;
            if (cif2 != null) {
                i = cif2.mo7556try(i);
            } else {
                AEADBlockCipher aEADBlockCipher2 = this.f6197for;
                if (aEADBlockCipher2 != null) {
                    i = aEADBlockCipher2.getUpdateOutputSize(i);
                }
            }
        }
        byte[] bArr = this.f6200try;
        if (bArr == null || bArr.length < i) {
            this.f6200try = new byte[i];
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:0|2|(4:32|3|(2:5|(1:7))(2:8|(2:10|(1:12))(2:13|(1:15)))|16)|30|22|(1:28)(1:29)) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0051, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0052, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0054, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0057 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws IOException {
        IOException plVar;
        IOException iOException;
        m7505do(0, true);
        try {
            Cif cif = this.f6196do;
            if (cif != null) {
                int iMo7551do = cif.mo7551do(this.f6200try, 0);
                if (iMo7551do != 0) {
                    ((FilterOutputStream) this).out.write(this.f6200try, 0, iMo7551do);
                }
            } else {
                AEADBlockCipher aEADBlockCipher = this.f6197for;
                if (aEADBlockCipher != null) {
                    int iDoFinal = aEADBlockCipher.doFinal(this.f6200try, 0);
                    if (iDoFinal != 0) {
                        ((FilterOutputStream) this).out.write(this.f6200try, 0, iDoFinal);
                    }
                } else {
                    StreamCipher streamCipher = this.f6198if;
                    if (streamCipher != null) {
                        streamCipher.reset();
                    }
                }
            }
            iOException = null;
        } catch (tn0 e) {
            plVar = new un0("Error finalising cipher data", e);
            iOException = plVar;
            flush();
            ((FilterOutputStream) this).out.close();
            if (iOException != null) {
            }
        } catch (Exception e2) {
            plVar = new pl("Error closing stream: ", e2);
            iOException = plVar;
            flush();
            ((FilterOutputStream) this).out.close();
            if (iOException != null) {
            }
        }
        flush();
        ((FilterOutputStream) this).out.close();
        if (iOException != null) {
            throw iOException;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IllegalStateException, tw, IOException {
        byte[] bArr = this.f6199new;
        byte b = (byte) i;
        bArr[0] = b;
        StreamCipher streamCipher = this.f6198if;
        if (streamCipher != null) {
            ((FilterOutputStream) this).out.write(streamCipher.returnByte(b));
        } else {
            write(bArr, 0, 1);
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IllegalStateException, tw, IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IllegalStateException, tw, IOException {
        m7505do(i2, false);
        Cif cif = this.f6196do;
        if (cif != null) {
            int iMo7554goto = cif.mo7554goto(bArr, i, i2, this.f6200try, 0);
            if (iMo7554goto != 0) {
                ((FilterOutputStream) this).out.write(this.f6200try, 0, iMo7554goto);
                return;
            }
            return;
        }
        AEADBlockCipher aEADBlockCipher = this.f6197for;
        if (aEADBlockCipher == null) {
            this.f6198if.processBytes(bArr, i, i2, this.f6200try, 0);
            ((FilterOutputStream) this).out.write(this.f6200try, 0, i2);
        } else {
            int iProcessBytes = aEADBlockCipher.processBytes(bArr, i, i2, this.f6200try, 0);
            if (iProcessBytes != 0) {
                ((FilterOutputStream) this).out.write(this.f6200try, 0, iProcessBytes);
            }
        }
    }
}
