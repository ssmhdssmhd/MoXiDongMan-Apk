package com.google.common.io;

import android.support.v4.af2;
import android.support.v4.b51;
import android.support.v4.ji0;
import android.support.v4.li0;
import android.support.v4.o8;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

@li0
@o8
/* renamed from: com.google.common.io.const, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cconst extends OutputStream {

    /* renamed from: case, reason: not valid java name */
    @ji0("this")
    private Cfor f15248case;

    /* renamed from: do, reason: not valid java name */
    private final int f15249do;

    /* renamed from: else, reason: not valid java name */
    @ji0("this")
    @b51
    private File f15250else;

    /* renamed from: for, reason: not valid java name */
    private final Cnew f15251for;

    /* renamed from: if, reason: not valid java name */
    private final boolean f15252if;

    /* renamed from: new, reason: not valid java name */
    @b51
    private final File f15253new;

    /* renamed from: try, reason: not valid java name */
    @ji0("this")
    private OutputStream f15254try;

    /* renamed from: com.google.common.io.const$do, reason: invalid class name */
    public class Cdo extends Cnew {
        public Cdo() {
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const, reason: not valid java name */
        public InputStream mo16996const() throws IOException {
            return Cconst.this.m16992new();
        }

        public void finalize() {
            try {
                Cconst.this.m16995try();
            } catch (Throwable th) {
                th.printStackTrace(System.err);
            }
        }
    }

    /* renamed from: com.google.common.io.const$for, reason: invalid class name */
    public static class Cfor extends ByteArrayOutputStream {
        private Cfor() {
        }

        /* renamed from: do, reason: not valid java name */
        public byte[] m16997do() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public int getCount() {
            return ((ByteArrayOutputStream) this).count;
        }

        public /* synthetic */ Cfor(Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.google.common.io.const$if, reason: invalid class name */
    public class Cif extends Cnew {
        public Cif() {
        }

        @Override // com.google.common.io.Cnew
        /* renamed from: const */
        public InputStream mo16996const() throws IOException {
            return Cconst.this.m16992new();
        }
    }

    public Cconst(int i) {
        this(i, false);
    }

    @ji0("this")
    /* renamed from: case, reason: not valid java name */
    private void m16990case(int i) throws IOException {
        if (this.f15250else != null || this.f15248case.getCount() + i <= this.f15249do) {
            return;
        }
        File fileCreateTempFile = File.createTempFile("FileBackedOutputStream", null, this.f15253new);
        if (this.f15252if) {
            fileCreateTempFile.deleteOnExit();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
        fileOutputStream.write(this.f15248case.m16997do(), 0, this.f15248case.getCount());
        fileOutputStream.flush();
        this.f15254try = fileOutputStream;
        this.f15250else = fileCreateTempFile;
        this.f15248case = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: new, reason: not valid java name */
    public synchronized InputStream m16992new() throws IOException {
        if (this.f15250else != null) {
            return new FileInputStream(this.f15250else);
        }
        return new ByteArrayInputStream(this.f15248case.m16997do(), 0, this.f15248case.getCount());
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f15254try.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public synchronized void flush() throws IOException {
        this.f15254try.flush();
    }

    @af2
    /* renamed from: for, reason: not valid java name */
    public synchronized File m16993for() {
        return this.f15250else;
    }

    /* renamed from: if, reason: not valid java name */
    public Cnew m16994if() {
        return this.f15251for;
    }

    /* renamed from: try, reason: not valid java name */
    public synchronized void m16995try() throws IOException {
        Cdo cdo = null;
        try {
            close();
            Cfor cfor = this.f15248case;
            if (cfor == null) {
                this.f15248case = new Cfor(cdo);
            } else {
                cfor.reset();
            }
            this.f15254try = this.f15248case;
            File file = this.f15250else;
            if (file != null) {
                this.f15250else = null;
                if (!file.delete()) {
                    throw new IOException("Could not delete: " + file);
                }
            }
        } catch (Throwable th) {
            if (this.f15248case == null) {
                this.f15248case = new Cfor(cdo);
            } else {
                this.f15248case.reset();
            }
            this.f15254try = this.f15248case;
            File file2 = this.f15250else;
            if (file2 != null) {
                this.f15250else = null;
                if (!file2.delete()) {
                    throw new IOException("Could not delete: " + file2);
                }
            }
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(int i) throws IOException {
        m16990case(1);
        this.f15254try.write(i);
    }

    public Cconst(int i, boolean z) {
        this(i, z, null);
    }

    private Cconst(int i, boolean z, @b51 File file) {
        this.f15249do = i;
        this.f15252if = z;
        this.f15253new = file;
        Cfor cfor = new Cfor(null);
        this.f15248case = cfor;
        this.f15254try = cfor;
        if (z) {
            this.f15251for = new Cdo();
        } else {
            this.f15251for = new Cif();
        }
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) throws IOException {
        m16990case(i2);
        this.f15254try.write(bArr, i, i2);
    }
}
