package com.yalantis.ucrop.util;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.od1;
import android.support.v4.on0;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.channels.FileChannel;
import java.util.Locale;

/* renamed from: com.yalantis.ucrop.util.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final String f23096do = "FileUtils";

    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static boolean m27491break(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m27492case(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    /* renamed from: catch, reason: not valid java name */
    public static boolean m27493catch(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("http") || str.startsWith("https");
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m27494class(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m27495const(String str) {
        String strM27500if = m27500if(str);
        strM27500if.hashCode();
        return strM27500if.equals("image/WEBP") || strM27500if.equals("image/webp");
    }

    /* renamed from: do, reason: not valid java name */
    public static void m27496do(@NonNull String str, @NonNull String str2) throws Throwable {
        FileChannel fileChannel;
        FileChannel channel;
        if (str.equalsIgnoreCase(str2)) {
            return;
        }
        FileChannel channel2 = null;
        try {
            channel = new FileInputStream(new File(str)).getChannel();
        } catch (Throwable th) {
            th = th;
            fileChannel = null;
        }
        try {
            channel2 = new FileOutputStream(new File(str2)).getChannel();
            channel.transferTo(0L, channel.size(), channel2);
            channel.close();
            channel.close();
            if (channel2 != null) {
                channel2.close();
            }
        } catch (Throwable th2) {
            th = th2;
            FileChannel fileChannel2 = channel2;
            channel2 = channel;
            fileChannel = fileChannel2;
            if (channel2 != null) {
                channel2.close();
            }
            if (fileChannel != null) {
                fileChannel.close();
            }
            throw th;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m27497else(String str) {
        try {
            if (m27502this(str)) {
                return true;
            }
            return m27495const(str);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[PHI: r8
      0x002b: PHI (r8v3 android.database.Cursor) = (r8v2 android.database.Cursor), (r8v4 android.database.Cursor) binds: [B:19:0x0046, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m27498for(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Cursor cursorQuery;
        ?? r7 = 0;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToFirst()) {
                            String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                            cursorQuery.close();
                            return string;
                        }
                    } catch (IllegalArgumentException e) {
                        e = e;
                        String.format(Locale.getDefault(), "getDataColumn: _data - [%s]", e.getMessage());
                        if (cursorQuery != null) {
                        }
                        return null;
                    }
                }
            } catch (Throwable th) {
                th = th;
                r7 = context;
                if (r7 != 0) {
                    r7.close();
                }
                throw th;
            }
        } catch (IllegalArgumentException e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (r7 != 0) {
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static boolean m27499goto(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    /* renamed from: if, reason: not valid java name */
    public static String m27500if(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return "image/jpeg";
            }
            String name = new File(str).getName();
            return "image/" + name.substring(name.lastIndexOf(".") + 1, name.length());
        } catch (Exception e) {
            e.printStackTrace();
            return "image/jpeg";
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static String m27501new(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int iLastIndexOf = str.lastIndexOf(File.separator);
        return iLastIndexOf == -1 ? "" : str.substring(0, iLastIndexOf + 1);
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m27502this(String str) {
        String strM27500if = m27500if(str);
        strM27500if.hashCode();
        return strM27500if.equals("image/GIF") || strM27500if.equals("image/gif");
    }

    @SuppressLint({"NewApi"})
    /* renamed from: try, reason: not valid java name */
    public static String m27503try(Context context, Uri uri) {
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if (m27499goto(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    return context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) + on0.f4694final + strArrSplit[1];
                }
            } else {
                if (m27492case(uri)) {
                    return m27498for(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                }
                if (m27494class(uri)) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = strArrSplit2[0];
                    if (od1.f4554const.equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (od1.f4559final.equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return m27498for(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return m27491break(uri) ? uri.getLastPathSegment() : m27498for(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }
}
