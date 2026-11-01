package com.facebook.soloader;

import android.support.v4.y41;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileLock;

/* renamed from: com.facebook.soloader.super, reason: invalid class name */
/* loaded from: classes.dex */
public final class Csuper implements Closeable {

    /* renamed from: do, reason: not valid java name */
    private final FileOutputStream f10747do;

    /* renamed from: if, reason: not valid java name */
    @y41
    private final FileLock f10748if;

    private Csuper(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        this.f10747do = fileOutputStream;
        try {
            FileLock fileLockLock = fileOutputStream.getChannel().lock();
            if (fileLockLock == null) {
                fileOutputStream.close();
            }
            this.f10748if = fileLockLock;
        } catch (Throwable th) {
            this.f10747do.close();
            throw th;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Csuper m12234do(File file) throws IOException {
        return new Csuper(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            FileLock fileLock = this.f10748if;
            if (fileLock != null) {
                fileLock.release();
            }
        } finally {
            this.f10747do.close();
        }
    }
}
