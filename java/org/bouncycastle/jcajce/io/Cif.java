package org.bouncycastle.jcajce.io;

import android.support.v4.un0;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;

/* renamed from: org.bouncycastle.jcajce.io.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends FilterOutputStream {

    /* renamed from: do, reason: not valid java name */
    private final Cipher f30963do;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f30964if;

    public Cif(OutputStream outputStream, Cipher cipher) {
        super(outputStream);
        this.f30964if = new byte[1];
        this.f30963do = cipher;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(5:0|(4:21|2|(1:4)|5)|19|11|(1:17)(1:18)) */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if (r0 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws BadPaddingException, IllegalBlockSizeException, IOException {
        IOException iOException;
        IOException iOException2;
        try {
            byte[] bArrDoFinal = this.f30963do.doFinal();
            if (bArrDoFinal != null) {
                ((FilterOutputStream) this).out.write(bArrDoFinal);
            }
            iOException2 = null;
        } catch (GeneralSecurityException e) {
            iOException = new un0("Error during cipher finalisation", e);
            iOException2 = iOException;
            flush();
            ((FilterOutputStream) this).out.close();
            if (iOException2 != null) {
            }
        } catch (Exception e2) {
            iOException = new IOException("Error closing stream: " + e2);
            iOException2 = iOException;
            flush();
            ((FilterOutputStream) this).out.close();
            if (iOException2 != null) {
            }
        }
        flush();
        ((FilterOutputStream) this).out.close();
        if (iOException2 != null) {
            throw iOException2;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.f30964if;
        bArr[0] = (byte) i;
        write(bArr, 0, 1);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArrUpdate = this.f30963do.update(bArr, i, i2);
        if (bArrUpdate != null) {
            ((FilterOutputStream) this).out.write(bArrUpdate);
        }
    }
}
