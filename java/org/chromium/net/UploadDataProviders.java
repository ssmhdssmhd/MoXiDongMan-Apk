package org.chromium.net;

import android.os.ParcelFileDescriptor;
import android.support.v4.yc2;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* loaded from: classes3.dex */
public final class UploadDataProviders {

    public interface FileChannelProvider {
        FileChannel getChannel() throws IOException;
    }

    /* renamed from: org.chromium.net.UploadDataProviders$do, reason: invalid class name */
    public class Cdo implements FileChannelProvider {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ File f33406do;

        public Cdo(File file) {
            this.f33406do = file;
        }

        @Override // org.chromium.net.UploadDataProviders.FileChannelProvider
        public FileChannel getChannel() throws IOException {
            return new FileInputStream(this.f33406do).getChannel();
        }
    }

    /* renamed from: org.chromium.net.UploadDataProviders$for, reason: invalid class name */
    public static final class Cfor extends Cpublic {

        /* renamed from: do, reason: not valid java name */
        private final ByteBuffer f33407do;

        public /* synthetic */ Cfor(ByteBuffer byteBuffer, Cdo cdo) {
            this(byteBuffer);
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: do, reason: not valid java name */
        public long mo37419do() {
            return this.f33407do.limit();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: for, reason: not valid java name */
        public void mo37420for(yc2 yc2Var) {
            this.f33407do.position(0);
            yc2Var.mo9809new();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: if, reason: not valid java name */
        public void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            if (byteBuffer.remaining() >= this.f33407do.remaining()) {
                byteBuffer.put(this.f33407do);
            } else {
                int iLimit = this.f33407do.limit();
                ByteBuffer byteBuffer2 = this.f33407do;
                byteBuffer2.limit(byteBuffer2.position() + byteBuffer.remaining());
                byteBuffer.put(this.f33407do);
                this.f33407do.limit(iLimit);
            }
            yc2Var.mo9808if(false);
        }

        private Cfor(ByteBuffer byteBuffer) {
            this.f33407do = byteBuffer;
        }
    }

    /* renamed from: org.chromium.net.UploadDataProviders$if, reason: invalid class name */
    public class Cif implements FileChannelProvider {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ ParcelFileDescriptor f33408do;

        public Cif(ParcelFileDescriptor parcelFileDescriptor) {
            this.f33408do = parcelFileDescriptor;
        }

        @Override // org.chromium.net.UploadDataProviders.FileChannelProvider
        public FileChannel getChannel() throws IOException {
            if (this.f33408do.getStatSize() != -1) {
                return new ParcelFileDescriptor.AutoCloseInputStream(this.f33408do).getChannel();
            }
            this.f33408do.close();
            throw new IllegalArgumentException("Not a file: " + this.f33408do);
        }
    }

    /* renamed from: org.chromium.net.UploadDataProviders$new, reason: invalid class name */
    public static final class Cnew extends Cpublic {

        /* renamed from: do, reason: not valid java name */
        private volatile FileChannel f33409do;

        /* renamed from: for, reason: not valid java name */
        private final Object f33410for;

        /* renamed from: if, reason: not valid java name */
        private final FileChannelProvider f33411if;

        public /* synthetic */ Cnew(FileChannelProvider fileChannelProvider, Cdo cdo) {
            this(fileChannelProvider);
        }

        /* renamed from: new, reason: not valid java name */
        private FileChannel m37422new() throws IOException {
            if (this.f33409do == null) {
                synchronized (this.f33410for) {
                    if (this.f33409do == null) {
                        this.f33409do = this.f33411if.getChannel();
                    }
                }
            }
            return this.f33409do;
        }

        @Override // org.chromium.net.Cpublic, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            FileChannel fileChannel = this.f33409do;
            if (fileChannel != null) {
                fileChannel.close();
            }
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: do */
        public long mo37419do() throws IOException {
            return m37422new().size();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: for */
        public void mo37420for(yc2 yc2Var) throws IOException {
            m37422new().position(0L);
            yc2Var.mo9809new();
        }

        @Override // org.chromium.net.Cpublic
        /* renamed from: if */
        public void mo37421if(yc2 yc2Var, ByteBuffer byteBuffer) throws IOException {
            if (!byteBuffer.hasRemaining()) {
                throw new IllegalStateException("Cronet passed a buffer with no bytes remaining");
            }
            FileChannel fileChannelM37422new = m37422new();
            int i = 0;
            while (i == 0) {
                int i2 = fileChannelM37422new.read(byteBuffer);
                if (i2 == -1) {
                    break;
                } else {
                    i += i2;
                }
            }
            yc2Var.mo9808if(false);
        }

        private Cnew(FileChannelProvider fileChannelProvider) {
            this.f33410for = new Object();
            this.f33411if = fileChannelProvider;
        }
    }

    private UploadDataProviders() {
    }

    /* renamed from: do, reason: not valid java name */
    public static Cpublic m37414do(ParcelFileDescriptor parcelFileDescriptor) {
        return new Cnew(new Cif(parcelFileDescriptor), null);
    }

    /* renamed from: for, reason: not valid java name */
    public static Cpublic m37415for(ByteBuffer byteBuffer) {
        return new Cfor(byteBuffer.slice(), null);
    }

    /* renamed from: if, reason: not valid java name */
    public static Cpublic m37416if(File file) {
        return new Cnew(new Cdo(file), null);
    }

    /* renamed from: new, reason: not valid java name */
    public static Cpublic m37417new(byte[] bArr) {
        return m37418try(bArr, 0, bArr.length);
    }

    /* renamed from: try, reason: not valid java name */
    public static Cpublic m37418try(byte[] bArr, int i, int i2) {
        return new Cfor(ByteBuffer.wrap(bArr, i, i2).slice(), null);
    }
}
