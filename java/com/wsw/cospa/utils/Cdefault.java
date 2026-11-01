package com.wsw.cospa.utils;

import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.fz;
import android.support.v4.l22;
import android.support.v4.od1;
import android.support.v4.on0;
import android.support.v4.v72;
import android.support.v4.wq;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.bean.StorageInfo;
import com.wsw.cospa.dao.DatabaseHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import okhttp3.ResponseBody;
import org.apache.commons.lang3.Cclass;

/* renamed from: com.wsw.cospa.utils.default, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdefault {

    /* renamed from: case, reason: not valid java name */
    private static final int f22590case = 52428800;

    /* renamed from: do, reason: not valid java name */
    private static final String f22591do = "FileUtil";

    /* renamed from: for, reason: not valid java name */
    public static final double f22592for = 1048576.0d;

    /* renamed from: if, reason: not valid java name */
    public static final double f22593if = 1024.0d;

    /* renamed from: new, reason: not valid java name */
    public static final double f22594new = 1.073741824E9d;

    /* renamed from: try, reason: not valid java name */
    private static final int f22595try = 5242880;

    /* renamed from: abstract, reason: not valid java name */
    public static boolean m26751abstract(ResponseBody responseBody, File file) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            try {
                byte[] bArr = new byte[4096];
                long jContentLength = responseBody.contentLength();
                long j = 0;
                InputStream inputStreamByteStream = responseBody.byteStream();
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int i = inputStreamByteStream.read(bArr);
                            if (i == -1) {
                                fileOutputStream.flush();
                                inputStreamByteStream.close();
                                fileOutputStream.close();
                                return true;
                            }
                            fileOutputStream.write(bArr, 0, i);
                            j += i;
                            StringBuilder sb = new StringBuilder();
                            sb.append("file download: ");
                            sb.append(j);
                            sb.append(" of ");
                            sb.append(jContentLength);
                        } catch (IOException unused) {
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStreamByteStream;
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    }
                } catch (IOException unused2) {
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException unused3) {
                return false;
            }
        } catch (IOException unused4) {
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static ArrayList<String> m26752break(Context context) throws IOException {
        ArrayList<String> arrayList = new ArrayList<>();
        File[] externalFilesDirs = ContextCompat.getExternalFilesDirs(context, "external");
        File file = externalFilesDirs[0];
        for (File file2 : externalFilesDirs) {
            if (file2 != null && !file2.equals(file)) {
                int iLastIndexOf = file2.getAbsolutePath().lastIndexOf("/Android/data");
                if (iLastIndexOf < 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Unexpected external file dir: ");
                    sb.append(file2.getAbsolutePath());
                } else {
                    String strSubstring = file2.getAbsolutePath().substring(0, iLastIndexOf);
                    try {
                        strSubstring = new File(strSubstring).getCanonicalPath();
                    } catch (IOException unused) {
                    }
                    arrayList.add(strSubstring);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m26753case(ComicSourceBean comicSourceBean) throws IOException {
        if (comicSourceBean != null) {
            try {
                if (!TextUtils.isEmpty(comicSourceBean.getBookSourceUrl()) && !TextUtils.isEmpty(comicSourceBean.getBookSourceName())) {
                    String str = comicSourceBean.getBookSourceName() + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
                    String str2 = wq.f7623public;
                    File file = new File(str2);
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    String strM27019do = Cpackage.m27019do(comicSourceBean);
                    FileOutputStream fileOutputStream = new FileOutputStream(str2 + str);
                    fileOutputStream.write(fz.m2490if(strM27019do).getBytes());
                    fileOutputStream.close();
                    v72.m8769if("图源导出成功！");
                    return;
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
        v72.m8769if("请先添加图源！");
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m26754catch(long j) {
        if (j <= 0) {
            return "0";
        }
        double d = j;
        int iLog10 = (int) (Math.log10(d) / Math.log10(1024.0d));
        StringBuilder sb = new StringBuilder();
        DecimalFormat decimalFormat = new DecimalFormat("#,##0.##");
        double dPow = Math.pow(1024.0d, iLog10);
        Double.isNaN(d);
        sb.append(decimalFormat.format(d / dPow));
        sb.append(Cclass.f28652do);
        sb.append(new String[]{"B", "KB", "MB", "GB", "TB"}[iLog10]);
        return sb.toString();
    }

    /* renamed from: class, reason: not valid java name */
    public static String m26755class(File file) {
        String name;
        int iLastIndexOf;
        return (file == null || !file.exists() || file.isDirectory() || (iLastIndexOf = (name = file.getName()).lastIndexOf(".")) <= -1) ? "" : name.substring(iLastIndexOf + 1);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m26756const() {
        if (m26776throws()) {
            try {
                return CartoonApplication.m24690do().getExternalFilesDir(null).getAbsolutePath();
            } catch (Exception unused) {
            }
        }
        return CartoonApplication.m24690do().getFilesDir().getAbsolutePath();
    }

    /* renamed from: default, reason: not valid java name */
    public static FileOutputStream m26757default(File file) throws IOException {
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
                throw new IOException("File '" + file + "' could not be created");
            }
        } else {
            if (file.isDirectory()) {
                throw new IOException("File '" + file + "' exists but is a directory");
            }
            if (!file.canWrite()) {
                throw new IOException("File '" + file + "' cannot be written to");
            }
        }
        return new FileOutputStream(file);
    }

    /* renamed from: else, reason: not valid java name */
    public static String m26758else() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        return m26761finally(statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong());
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m26759extends() throws IOException {
        String str;
        try {
            List<ComicSourceBean> listM26037public = DatabaseHelper.m26016switch().m26037public();
            if (listM26037public == null || listM26037public.size() <= 0) {
                v72.m8769if("请先选中图源！");
                return;
            }
            if (listM26037public.size() == 1) {
                str = listM26037public.get(0).getBookSourceName() + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
            } else {
                str = listM26037public.size() + "个图源" + l22.m4563for(System.currentTimeMillis(), "yyyy_MM_dd_HH_mm") + ".txt";
            }
            String str2 = wq.f7623public;
            File file = new File(str2);
            if (!file.exists()) {
                file.mkdirs();
            }
            String strM27019do = Cpackage.m27019do(listM26037public);
            FileOutputStream fileOutputStream = new FileOutputStream(str2 + str);
            fileOutputStream.write(fz.m2490if(strM27019do).getBytes());
            fileOutputStream.close();
            v72.m8769if("导出" + listM26037public.size() + "个图源！");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static File m26760final(String str) {
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    /* renamed from: finally, reason: not valid java name */
    public static String m26761finally(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        double d = j;
        if (d < 1024.0d) {
            return j + "B";
        }
        if (d < 1048576.0d) {
            StringBuilder sb = new StringBuilder();
            Double.isNaN(d);
            sb.append(decimalFormat.format(d / 1024.0d));
            sb.append("KB");
            return sb.toString();
        }
        if (d < 1.073741824E9d) {
            StringBuilder sb2 = new StringBuilder();
            Double.isNaN(d);
            sb2.append(decimalFormat.format(d / 1048576.0d));
            sb2.append("MB");
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        Double.isNaN(d);
        sb3.append(decimalFormat.format(d / 1.073741824E9d));
        sb3.append("GB");
        return sb3.toString();
    }

    /* renamed from: goto, reason: not valid java name */
    public static String m26762goto() {
        if (m26776throws()) {
            try {
                return CartoonApplication.m24690do().getExternalCacheDir().getAbsolutePath();
            } catch (Exception unused) {
            }
        }
        return CartoonApplication.m24690do().getCacheDir().getAbsolutePath();
    }

    /* renamed from: if, reason: not valid java name */
    public static long m26763if(File file) {
        long blockCount;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockCount = (statFs.getBlockCount() * statFs.getBlockSize()) / 50;
        } catch (IllegalArgumentException unused) {
            blockCount = 5242880;
        }
        return Math.max(Math.min(blockCount, 52428800L), 5242880L);
    }

    /* renamed from: import, reason: not valid java name */
    public static ArrayList<StorageInfo> m26764import(Context context) throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException {
        StorageManager storageManager = (StorageManager) context.getSystemService("storage");
        try {
            Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
            Class<?> cls = Class.forName("android.os.storage.StorageVolume");
            Method method2 = cls.getMethod("getPath", new Class[0]);
            Method declaredMethod = cls.getDeclaredMethod("isRemovable", new Class[0]);
            method2.setAccessible(true);
            declaredMethod.setAccessible(true);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            ArrayList<StorageInfo> arrayList = new ArrayList<>();
            for (int i = 0; i < length; i++) {
                StorageInfo storageInfo = new StorageInfo();
                Object obj = Array.get(objInvoke, i);
                String str = (String) method2.invoke(obj, new Object[0]);
                boolean zBooleanValue = ((Boolean) declaredMethod.invoke(obj, new Object[0])).booleanValue();
                StringBuilder sb = new StringBuilder();
                sb.append(" ,storagePath=");
                sb.append(str);
                sb.append(" ,isRemovableResult=");
                sb.append(zBooleanValue);
                storageInfo.setPath(str);
                storageInfo.setRemovable(zBooleanValue);
                arrayList.add(storageInfo);
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public static String m26765native() {
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
        return m26761finally(statFs.getBlockCountLong() * statFs.getBlockSizeLong());
    }

    /* renamed from: new, reason: not valid java name */
    public static synchronized File m26766new(String str) {
        File file;
        file = new File(str);
        try {
            if (!file.exists()) {
                m26760final(file.getParent());
                file.createNewFile();
            }
        } catch (IOException unused) {
        }
        return file;
    }

    /* renamed from: package, reason: not valid java name */
    public static byte[] m26767package(String str) throws IOException {
        FileChannel channel = null;
        try {
            try {
                channel = new RandomAccessFile(str, "r").getChannel();
                MappedByteBuffer mappedByteBufferLoad = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size()).load();
                System.out.println(mappedByteBufferLoad.isLoaded());
                byte[] bArr = new byte[(int) channel.size()];
                if (mappedByteBufferLoad.remaining() > 0) {
                    mappedByteBufferLoad.get(bArr, 0, mappedByteBufferLoad.remaining());
                }
                return bArr;
            } catch (IOException e) {
                e.printStackTrace();
                throw e;
            }
        } finally {
            try {
                channel.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static void m26768private(File file, byte[] bArr) throws Throwable {
        FileOutputStream fileOutputStreamM26757default;
        try {
            fileOutputStreamM26757default = m26757default(file);
            try {
                fileOutputStreamM26757default.write(bArr);
                fileOutputStreamM26757default.flush();
                fileOutputStreamM26757default.close();
                fileOutputStreamM26757default.close();
            } catch (Throwable th) {
                th = th;
                if (fileOutputStreamM26757default != null) {
                    fileOutputStreamM26757default.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            fileOutputStreamM26757default = null;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m26769public(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    /* renamed from: return, reason: not valid java name */
    public static boolean m26770return(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    /* renamed from: static, reason: not valid java name */
    public static boolean m26771static(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    @TargetApi(19)
    /* renamed from: super, reason: not valid java name */
    public static String m26772super(Context context, Uri uri) {
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if (m26770return(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    return Environment.getExternalStorageDirectory() + on0.f4694final + strArrSplit[1];
                }
            } else {
                if (m26769public(uri)) {
                    String documentId = DocumentsContract.getDocumentId(uri);
                    String[] strArrSplit2 = documentId.split(":");
                    return "raw".equalsIgnoreCase(strArrSplit2[0]) ? strArrSplit2[1] : m26774this(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(documentId).longValue()), null, null);
                }
                if (m26773switch(uri)) {
                    String[] strArrSplit3 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = strArrSplit3[0];
                    if (od1.f4554const.equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (od1.f4559final.equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return m26774this(context, uri2, "_id=?", new String[]{strArrSplit3[1]});
                }
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return m26771static(uri) ? uri.getLastPathSegment() : m26774this(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    /* renamed from: switch, reason: not valid java name */
    public static boolean m26773switch(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    /* renamed from: this, reason: not valid java name */
    public static String m26774this(Context context, Uri uri, String str, String[] strArr) {
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } finally {
                }
            }
            if (cursorQuery == null) {
                return null;
            }
            cursorQuery.close();
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @NonNull
    /* renamed from: throw, reason: not valid java name */
    public static String m26775throw() {
        String absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        try {
            return new File(absolutePath).getCanonicalPath();
        } catch (IOException unused) {
            return absolutePath;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m26776throws() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    /* renamed from: try, reason: not valid java name */
    public static synchronized void m26777try(String str) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isDirectory()) {
                for (File file2 : file.listFiles()) {
                    m26777try(file2.getPath());
                }
            }
            file.delete();
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static ArrayList<String> m26778while(Context context) throws IllegalAccessException, NoSuchMethodException, SecurityException, ClassNotFoundException, ArrayIndexOutOfBoundsException, IllegalArgumentException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 30) {
            ArrayList<String> arrayList = new ArrayList<>();
            arrayList.add(Environment.getExternalStorageDirectory().getAbsolutePath());
            return arrayList;
        }
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            Method method = storageManager.getClass().getMethod("getVolumeList", new Class[0]);
            Class<?> cls = Class.forName("android.os.storage.StorageVolume");
            Method method2 = cls.getMethod("getPath", new Class[0]);
            Method declaredMethod = cls.getDeclaredMethod("isRemovable", new Class[0]);
            method2.setAccessible(true);
            declaredMethod.setAccessible(true);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            ArrayList<String> arrayList2 = new ArrayList<>();
            for (int i = 0; i < length; i++) {
                Object obj = Array.get(objInvoke, i);
                String str = (String) method2.invoke(obj, new Object[0]);
                boolean zBooleanValue = ((Boolean) declaredMethod.invoke(obj, new Object[0])).booleanValue();
                StringBuilder sb = new StringBuilder();
                sb.append(" ,storagePath=");
                sb.append(str);
                sb.append(" ,isRemovableResult=");
                sb.append(zBooleanValue);
                arrayList2.add(str);
            }
            return arrayList2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m26779do(String str, String str2) throws IOException {
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(str2);
            byte[] bArr = new byte[1024];
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i <= 0) {
                    fileInputStream.close();
                    fileOutputStream.close();
                    return 0;
                }
                fileOutputStream.write(bArr, 0, i);
            }
        } catch (Exception unused) {
            return -1;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public int m26780for(String str, String str2) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            return -1;
        }
        File[] fileArrListFiles = file.listFiles();
        File file2 = new File(str2);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        for (int i = 0; i < fileArrListFiles.length; i++) {
            if (fileArrListFiles[i].isDirectory()) {
                m26780for(fileArrListFiles[i].getPath() + on0.f4694final, str2 + fileArrListFiles[i].getName() + on0.f4694final);
            } else {
                m26779do(fileArrListFiles[i].getPath(), str2 + fileArrListFiles[i].getName());
            }
        }
        return 0;
    }
}
