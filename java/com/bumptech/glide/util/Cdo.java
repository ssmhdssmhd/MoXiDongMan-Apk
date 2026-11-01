package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.bumptech.glide.util.do, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cdo {

    /* renamed from: do, reason: not valid java name */
    private static final int f10471do = 16384;

    /* renamed from: if, reason: not valid java name */
    private static final AtomicReference<byte[]> f10472if = new AtomicReference<>();

    /* renamed from: com.bumptech.glide.util.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final int f10476do;

        /* renamed from: for, reason: not valid java name */
        public final byte[] f10477for;

        /* renamed from: if, reason: not valid java name */
        public final int f10478if;

        public Cif(@NonNull byte[] bArr, int i, int i2) {
            this.f10477for = bArr;
            this.f10476do = i;
            this.f10478if = i2;
        }
    }

    private Cdo() {
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public static InputStream m12061case(@NonNull ByteBuffer byteBuffer) {
        return new C0045do(byteBuffer);
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public static ByteBuffer m12062do(@NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        FileChannel channel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            if (length == 0) {
                throw new IOException("File unsuitable for memory mapping");
            }
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                channel = randomAccessFile.getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, length).load();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
                return mappedByteBufferLoad;
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m12063else(@NonNull ByteBuffer byteBuffer, @NonNull OutputStream outputStream) throws IOException {
        Cif cifM12064for = m12064for(byteBuffer);
        if (cifM12064for != null) {
            byte[] bArr = cifM12064for.f10477for;
            int i = cifM12064for.f10476do;
            outputStream.write(bArr, i, cifM12064for.f10478if + i);
            return;
        }
        byte[] andSet = f10472if.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (byteBuffer.remaining() > 0) {
            int iMin = Math.min(byteBuffer.remaining(), andSet.length);
            byteBuffer.get(andSet, 0, iMin);
            outputStream.write(andSet, 0, iMin);
        }
        f10472if.set(andSet);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    private static Cif m12064for(@NonNull ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new Cif(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public static ByteBuffer m12065if(@NonNull InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        byte[] andSet = f10472if.getAndSet(null);
        if (andSet == null) {
            andSet = new byte[16384];
        }
        while (true) {
            int i = inputStream.read(andSet);
            if (i < 0) {
                f10472if.set(andSet);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                return (ByteBuffer) ByteBuffer.allocateDirect(byteArray.length).put(byteArray).position(0);
            }
            byteArrayOutputStream.write(andSet, 0, i);
        }
    }

    @NonNull
    /* renamed from: new, reason: not valid java name */
    public static byte[] m12066new(@NonNull ByteBuffer byteBuffer) {
        Cif cifM12064for = m12064for(byteBuffer);
        if (cifM12064for != null && cifM12064for.f10476do == 0 && cifM12064for.f10478if == cifM12064for.f10477for.length) {
            return byteBuffer.array();
        }
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[byteBufferAsReadOnlyBuffer.limit()];
        byteBufferAsReadOnlyBuffer.position(0);
        byteBufferAsReadOnlyBuffer.get(bArr);
        return bArr;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m12067try(@NonNull ByteBuffer byteBuffer, @NonNull File file) throws Throwable {
        RandomAccessFile randomAccessFile;
        byteBuffer.position(0);
        FileChannel channel = null;
        try {
            randomAccessFile = new RandomAccessFile(file, "rw");
            try {
                channel = randomAccessFile.getChannel();
                channel.write(byteBuffer);
                channel.force(false);
                channel.close();
                randomAccessFile.close();
                try {
                    channel.close();
                } catch (IOException unused) {
                }
                try {
                    randomAccessFile.close();
                } catch (IOException unused2) {
                }
            } catch (Throwable th) {
                th = th;
                if (channel != null) {
                    try {
                        channel.close();
                    } catch (IOException unused3) {
                    }
                }
                if (randomAccessFile == null) {
                    throw th;
                }
                try {
                    randomAccessFile.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    /* renamed from: com.bumptech.glide.util.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0045do extends InputStream {

        /* renamed from: for, reason: not valid java name */
        private static final int f10473for = -1;

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final ByteBuffer f10474do;

        /* renamed from: if, reason: not valid java name */
        private int f10475if = -1;

        public C0045do(@NonNull ByteBuffer byteBuffer) {
            this.f10474do = byteBuffer;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f10474do.remaining();
        }

        @Override // java.io.InputStream
        public synchronized void mark(int i) {
            this.f10475if = this.f10474do.position();
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read() {
            if (this.f10474do.hasRemaining()) {
                return this.f10474do.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public synchronized void reset() throws IOException {
            int i = this.f10475if;
            if (i == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.f10474do.position(i);
        }

        @Override // java.io.InputStream
        public long skip(long j) throws IOException {
            if (!this.f10474do.hasRemaining()) {
                return -1L;
            }
            long jMin = Math.min(j, available());
            this.f10474do.position((int) (r0.position() + jMin));
            return jMin;
        }

        @Override // java.io.InputStream
        public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
            if (!this.f10474do.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i2, available());
            this.f10474do.get(bArr, i, iMin);
            return iMin;
        }
    }
}
