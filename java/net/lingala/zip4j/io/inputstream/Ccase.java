package net.lingala.zip4j.io.inputstream;

import android.support.v4.el1;
import android.support.v4.oa0;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

/* renamed from: net.lingala.zip4j.io.inputstream.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends InputStream {

    /* renamed from: case, reason: not valid java name */
    private byte[] f28111case = new byte[1];

    /* renamed from: do, reason: not valid java name */
    private RandomAccessFile f28112do;

    /* renamed from: for, reason: not valid java name */
    private int f28113for;

    /* renamed from: if, reason: not valid java name */
    private File f28114if;

    /* renamed from: new, reason: not valid java name */
    private boolean f28115new;

    /* renamed from: try, reason: not valid java name */
    private int f28116try;

    public Ccase(File file, boolean z, int i) throws FileNotFoundException {
        this.f28116try = 0;
        this.f28112do = new RandomAccessFile(file, el1.READ.getValue());
        this.f28114if = file;
        this.f28115new = z;
        this.f28113for = i;
        if (z) {
            this.f28116try = i;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private File m31454do(int i) throws IOException {
        if (i == this.f28113for) {
            return this.f28114if;
        }
        String canonicalPath = this.f28114if.getCanonicalPath();
        return new File(canonicalPath.substring(0, canonicalPath.lastIndexOf(".")) + (i >= 9 ? ".z" : ".z0") + (i + 1));
    }

    /* renamed from: if, reason: not valid java name */
    private void m31455if(int i) throws IOException {
        File fileM31454do = m31454do(i);
        if (fileM31454do.exists()) {
            this.f28112do.close();
            this.f28112do = new RandomAccessFile(fileM31454do, el1.READ.getValue());
        } else {
            throw new FileNotFoundException("zip split file does not exist: " + fileM31454do);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f28112do;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    /* renamed from: for, reason: not valid java name */
    public void m31456for(oa0 oa0Var) throws IOException {
        if (this.f28115new && this.f28116try != oa0Var.b()) {
            m31455if(oa0Var.b());
            this.f28116try = oa0Var.b();
        }
        this.f28112do.seek(oa0Var.g());
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f28111case) == -1) {
            return -1;
        }
        return this.f28111case[0];
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f28112do.read(bArr, i, i2);
        if ((i3 == i2 && i3 != -1) || !this.f28115new) {
            return i3;
        }
        m31455if(this.f28116try + 1);
        this.f28116try++;
        if (i3 < 0) {
            i3 = 0;
        }
        int i4 = this.f28112do.read(bArr, i3, i2 - i3);
        return i4 > 0 ? i3 + i4 : i3;
    }
}
