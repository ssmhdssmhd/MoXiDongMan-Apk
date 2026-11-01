package org.chromium.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.v4.rv0;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Locale;
import org.chromium.base.Ccatch;

/* renamed from: org.chromium.base.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch {

    /* renamed from: do, reason: not valid java name */
    private static final String f33147do = "FileUtils";

    /* renamed from: if, reason: not valid java name */
    public static Function<String, Boolean> f33148if = new Function() { // from class: android.support.v4.cb0
        @Override // org.chromium.base.Function
        public final Object apply(Object obj) {
            return Ccatch.m37013this((String) obj);
        }
    };

    @Nullable
    /* renamed from: break, reason: not valid java name */
    public static Bitmap m37003break(Context context, Uri uri) throws IOException {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            try {
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    rv0.m7150const("FileUtils", "Null ParcelFileDescriptor from uri " + uri, new Object[0]);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                FileDescriptor fileDescriptor = parcelFileDescriptorOpenFileDescriptor.getFileDescriptor();
                if (fileDescriptor == null) {
                    rv0.m7150const("FileUtils", "Null FileDescriptor from uri " + uri, new Object[0]);
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return null;
                }
                Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor);
                if (bitmapDecodeFileDescriptor != null) {
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return bitmapDecodeFileDescriptor;
                }
                rv0.m7150const("FileUtils", "Failed to decode image from uri " + uri, new Object[0]);
                parcelFileDescriptorOpenFileDescriptor.close();
                return null;
            } finally {
            }
        } catch (IOException unused) {
            rv0.m7150const("FileUtils", "IO exception when reading uri " + uri, new Object[0]);
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static String m37004case(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        int iLastIndexOf2 = str.lastIndexOf(46);
        return iLastIndexOf >= iLastIndexOf2 ? "" : str.substring(iLastIndexOf2 + 1).toLowerCase(Locale.US);
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public static byte[] m37005catch(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        m37009for(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m37006class(File file, Function<String, Boolean> function) {
        File[] fileArrListFiles;
        if (!file.exists()) {
            file.delete();
            return true;
        }
        if (function != null && !function.apply(file.getPath()).booleanValue()) {
            return true;
        }
        if (file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                m37006class(file2, function);
            }
        }
        boolean zDelete = file.delete();
        if (!zDelete) {
            rv0.m7156if("FileUtils", "Failed to delete: %s", file);
        }
        return zDelete;
    }

    /* renamed from: else, reason: not valid java name */
    public static long m37008else(File file) {
        long jM37008else = 0;
        if (file == null) {
            return 0L;
        }
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return 0L;
        }
        for (File file2 : fileArrListFiles) {
            jM37008else += m37008else(file2);
        }
        return jM37008else;
    }

    /* renamed from: for, reason: not valid java name */
    public static void m37009for(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i = inputStream.read(bArr);
            if (i == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i);
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Uri m37010goto(File file) {
        Uri uriM36792if;
        try {
            uriM36792if = ContentUriUtils.m36792if(file);
        } catch (IllegalArgumentException e) {
            rv0.m7156if("FileUtils", "Could not create content uri: " + e, new Object[0]);
            uriM36792if = null;
        }
        return uriM36792if == null ? Uri.fromFile(file) : uriM36792if;
    }

    /* renamed from: if, reason: not valid java name */
    public static void m37011if(List<String> list, Function<String, Boolean> function) {
        for (String str : list) {
            if (function == null || function.apply(str).booleanValue()) {
                if (ContentUriUtils.m36794try(str)) {
                    ContentUriUtils.delete(str);
                } else {
                    File file = new File(str);
                    if (file.exists()) {
                        m37006class(file, function);
                    }
                }
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m37012new(InputStream inputStream, File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        try {
            rv0.m7155goto("FileUtils", "Writing to %s", file);
            m37009for(inputStream, fileOutputStream);
            fileOutputStream.close();
            if (!file2.renameTo(file)) {
                throw new IOException();
            }
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: this, reason: not valid java name */
    public static /* synthetic */ Boolean m37013this(String str) {
        return Boolean.TRUE;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m37014try(Context context, String str, File file) throws IOException {
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            try {
                m37012new(inputStreamOpen, file);
                if (inputStreamOpen != null) {
                    inputStreamOpen.close();
                }
                return true;
            } finally {
            }
        } catch (IOException unused) {
            return false;
        }
    }
}
