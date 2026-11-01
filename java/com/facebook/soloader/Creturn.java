package com.facebook.soloader;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;
import android.support.v4.w10;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.facebook.soloader.Cwhile;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

/* renamed from: com.facebook.soloader.return, reason: invalid class name */
/* loaded from: classes.dex */
public final class Creturn {

    /* renamed from: do, reason: not valid java name */
    private static final String f10721do = "SysUtil";

    /* renamed from: if, reason: not valid java name */
    private static final byte f10722if = 1;

    @w10
    @TargetApi(21)
    /* renamed from: com.facebook.soloader.return$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: com.facebook.soloader.return$do$do, reason: invalid class name and collision with other inner class name */
        public static class C0053do implements Comparator<String> {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ArrayList f10723do;

            public C0053do(ArrayList arrayList) {
                this.f10723do = arrayList;
            }

            @Override // java.util.Comparator
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public int compare(String str, String str2) {
                if (this.f10723do.contains(str)) {
                    return -1;
                }
                return this.f10723do.contains(str2) ? 1 : 0;
            }
        }

        private Cdo() {
        }

        @w10
        /* renamed from: do, reason: not valid java name */
        public static void m12219do(FileDescriptor fileDescriptor, long j) throws IOException, ErrnoException {
            int i;
            try {
                Os.posix_fallocate(fileDescriptor, 0L, j);
            } catch (ErrnoException e) {
                if (e.errno != OsConstants.EOPNOTSUPP && (i = e.errno) != OsConstants.ENOSYS && i != OsConstants.EINVAL) {
                    throw new IOException(e.toString(), e);
                }
            }
        }

        @w10
        /* renamed from: if, reason: not valid java name */
        public static String[] m12220if() {
            String[] strArr = Build.SUPPORTED_ABIS;
            ArrayList arrayList = new ArrayList();
            try {
                if (Os.readlink("/proc/self/exe").contains("64")) {
                    arrayList.add(Cwhile.Cif.AARCH64.toString());
                    arrayList.add(Cwhile.Cif.X86_64.toString());
                } else {
                    arrayList.add(Cwhile.Cif.ARM.toString());
                    arrayList.add(Cwhile.Cif.X86.toString());
                }
                Arrays.sort(strArr, new C0053do(arrayList));
                return strArr;
            } catch (ErrnoException unused) {
                return Build.SUPPORTED_ABIS;
            }
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static void m12209break(File file) throws IOException {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        throw new IOException("cannot mkdir: " + file);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m12210case(File file) throws IOException {
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException("cannot list directory " + file);
            }
            for (File file2 : fileArrListFiles) {
                m12210case(file2);
            }
            return;
        }
        if (file.getPath().endsWith("_lock")) {
            return;
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    randomAccessFile.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static int m12211do(RandomAccessFile randomAccessFile, InputStream inputStream, int i, byte[] bArr) throws IOException {
        int i2 = 0;
        while (i2 < i) {
            int i3 = inputStream.read(bArr, 0, Math.min(bArr.length, i - i2));
            if (i3 == -1) {
                break;
            }
            randomAccessFile.write(bArr, 0, i3);
            i2 += i3;
        }
        return i2;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m12212else(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                return packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
            }
        }
        return 0;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m12213for(File file) throws IOException {
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                return;
            }
            for (File file2 : fileArrListFiles) {
                m12213for(file2);
            }
        }
        if (file.delete() || !file.exists()) {
            return;
        }
        throw new IOException("could not delete: " + file);
    }

    /* renamed from: goto, reason: not valid java name */
    public static String[] m12214goto() {
        return Build.VERSION.SDK_INT < 21 ? new String[]{Build.CPU_ABI, Build.CPU_ABI2} : Cdo.m12220if();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m12215if(File file) throws IOException {
        if (file.delete()) {
            return;
        }
        throw new IOException("could not delete file " + file);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m12216new(FileDescriptor fileDescriptor, long j) throws IOException, ErrnoException {
        if (Build.VERSION.SDK_INT >= 21) {
            Cdo.m12219do(fileDescriptor, j);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m12217this(File file, Context context) throws IOException {
        File canonicalFile = file.getCanonicalFile();
        Parcel parcelObtain = Parcel.obtain();
        try {
            parcelObtain.writeByte((byte) 1);
            parcelObtain.writeString(canonicalFile.getPath());
            parcelObtain.writeLong(canonicalFile.lastModified());
            parcelObtain.writeInt(m12212else(context));
            return parcelObtain.marshall();
        } finally {
            parcelObtain.recycle();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static int m12218try(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i] != null && str.equals(strArr[i])) {
                return i;
            }
        }
        return -1;
    }
}
