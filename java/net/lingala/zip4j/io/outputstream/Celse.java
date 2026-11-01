package net.lingala.zip4j.io.outputstream;

import android.support.v4.db0;
import android.support.v4.ej0;
import android.support.v4.el1;
import android.support.v4.jl1;
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.rj2;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;

/* renamed from: net.lingala.zip4j.io.outputstream.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends OutputStream {

    /* renamed from: case, reason: not valid java name */
    private jl1 f28162case;

    /* renamed from: do, reason: not valid java name */
    private RandomAccessFile f28163do;

    /* renamed from: for, reason: not valid java name */
    private File f28164for;

    /* renamed from: if, reason: not valid java name */
    private long f28165if;

    /* renamed from: new, reason: not valid java name */
    private int f28166new;

    /* renamed from: try, reason: not valid java name */
    private long f28167try;

    public Celse(File file) throws rj2, FileNotFoundException {
        this(file, -1L);
    }

    /* renamed from: break, reason: not valid java name */
    private void m31516break() throws IOException {
        String str;
        String strM1195class = db0.m1195class(this.f28164for.getName());
        String absolutePath = this.f28164for.getAbsolutePath();
        if (this.f28164for.getParent() == null) {
            str = "";
        } else {
            str = this.f28164for.getParent() + System.getProperty("file.separator");
        }
        String str2 = ".z0" + (this.f28166new + 1);
        if (this.f28166new >= 9) {
            str2 = ".z" + (this.f28166new + 1);
        }
        File file = new File(str + strM1195class + str2);
        this.f28163do.close();
        if (file.exists()) {
            throw new IOException("split file: " + file.getName() + " already exists in the current directory, cannot rename this file");
        }
        if (!this.f28164for.renameTo(file)) {
            throw new IOException("cannot rename newly created split file");
        }
        this.f28164for = new File(absolutePath);
        this.f28163do = new RandomAccessFile(this.f28164for, el1.WRITE.getValue());
        this.f28166new++;
    }

    /* renamed from: case, reason: not valid java name */
    private boolean m31517case(byte[] bArr) {
        int iM3927new = this.f28162case.m3927new(bArr);
        for (ej0 ej0Var : ej0.values()) {
            if (ej0Var != ej0.SPLIT_ZIP && ej0Var.getValue() == iM3927new) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m31518try(int i) {
        long j = this.f28165if;
        return j < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH || this.f28167try + ((long) i) <= j;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f28163do.close();
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m31519do(int i) throws rj2 {
        if (i < 0) {
            throw new rj2("negative buffersize for checkBufferSizeAndStartNextSplitFile");
        }
        if (m31518try(i)) {
            return false;
        }
        try {
            m31516break();
            this.f28167try = 0L;
            return true;
        } catch (IOException e) {
            throw new rj2(e);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m31520else() {
        return this.f28165if != -1;
    }

    /* renamed from: for, reason: not valid java name */
    public long m31521for() throws IOException {
        return this.f28163do.getFilePointer();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m31522goto(long j) throws IOException {
        this.f28163do.seek(j);
    }

    /* renamed from: if, reason: not valid java name */
    public int m31523if() {
        return this.f28166new;
    }

    /* renamed from: new, reason: not valid java name */
    public long m31524new() {
        return this.f28165if;
    }

    /* renamed from: this, reason: not valid java name */
    public int m31525this(int i) throws IOException {
        return this.f28163do.skipBytes(i);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i});
    }

    public Celse(File file, long j) throws rj2, FileNotFoundException {
        this.f28162case = new jl1();
        if (j >= 0 && j < PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH) {
            throw new rj2("split length less than minimum allowed split length of 65536 Bytes");
        }
        this.f28163do = new RandomAccessFile(file, el1.WRITE.getValue());
        this.f28165if = j;
        this.f28164for = file;
        this.f28166new = 0;
        this.f28167try = 0L;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 <= 0) {
            return;
        }
        long j = this.f28165if;
        if (j == -1) {
            this.f28163do.write(bArr, i, i2);
            this.f28167try += i2;
            return;
        }
        long j2 = this.f28167try;
        if (j2 >= j) {
            m31516break();
            this.f28163do.write(bArr, i, i2);
            this.f28167try = i2;
            return;
        }
        long j3 = i2;
        if (j2 + j3 > j) {
            if (m31517case(bArr)) {
                m31516break();
                this.f28163do.write(bArr, i, i2);
                this.f28167try = j3;
                return;
            }
            this.f28163do.write(bArr, i, (int) (this.f28165if - this.f28167try));
            m31516break();
            RandomAccessFile randomAccessFile = this.f28163do;
            long j4 = this.f28165if;
            long j5 = this.f28167try;
            randomAccessFile.write(bArr, i + ((int) (j4 - j5)), (int) (j3 - (j4 - j5)));
            this.f28167try = j3 - (this.f28165if - this.f28167try);
            return;
        }
        this.f28163do.write(bArr, i, i2);
        this.f28167try += j3;
    }
}
