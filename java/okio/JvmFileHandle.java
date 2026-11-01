package okio;

import android.support.v4.m41;
import java.io.RandomAccessFile;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\b\u0010\u0006\u001a\u00020\u0002H\u0014J(\u0010\r\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0014J(\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0014J\b\u0010\u000f\u001a\u00020\u0004H\u0014J\b\u0010\u0010\u001a\u00020\u0004H\u0014R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, d2 = {"Lokio/JvmFileHandle;", "Lokio/FileHandle;", "", "size", "Landroid/support/v4/ub2;", "protectedResize", "protectedSize", "fileOffset", "", "array", "", "arrayOffset", "byteCount", "protectedRead", "protectedWrite", "protectedFlush", "protectedClose", "Ljava/io/RandomAccessFile;", "randomAccessFile", "Ljava/io/RandomAccessFile;", "", "readWrite", "<init>", "(ZLjava/io/RandomAccessFile;)V", "okio"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class JvmFileHandle extends FileHandle {

    @m41
    private final RandomAccessFile randomAccessFile;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFileHandle(boolean z, @m41 RandomAccessFile randomAccessFile) {
        super(z);
        Csuper.m30700throw(randomAccessFile, "randomAccessFile");
        this.randomAccessFile = randomAccessFile;
    }

    @Override // okio.FileHandle
    public synchronized void protectedClose() {
        this.randomAccessFile.close();
    }

    @Override // okio.FileHandle
    public synchronized void protectedFlush() {
        this.randomAccessFile.getFD().sync();
    }

    @Override // okio.FileHandle
    public synchronized int protectedRead(long j, @m41 byte[] array, int i, int i2) {
        Csuper.m30700throw(array, "array");
        this.randomAccessFile.seek(j);
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int i4 = this.randomAccessFile.read(array, i, i2 - i3);
            if (i4 != -1) {
                i3 += i4;
            } else if (i3 == 0) {
                return -1;
            }
        }
        return i3;
    }

    @Override // okio.FileHandle
    public synchronized void protectedResize(long j) {
        long size = size();
        long j2 = j - size;
        if (j2 > 0) {
            int i = (int) j2;
            protectedWrite(size, new byte[i], 0, i);
        } else {
            this.randomAccessFile.setLength(j);
        }
    }

    @Override // okio.FileHandle
    public synchronized long protectedSize() {
        return this.randomAccessFile.length();
    }

    @Override // okio.FileHandle
    public synchronized void protectedWrite(long j, @m41 byte[] array, int i, int i2) {
        Csuper.m30700throw(array, "array");
        this.randomAccessFile.seek(j);
        this.randomAccessFile.write(array, i, i2);
    }
}
