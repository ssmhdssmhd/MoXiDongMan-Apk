package org.chromium.base;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.support.v4.rv0;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import org.chromium.base.annotations.CalledByNative;

/* loaded from: classes3.dex */
public abstract class ContentUriUtils {

    /* renamed from: do, reason: not valid java name */
    private static final String f32978do = "ContentUriUtils";

    /* renamed from: for, reason: not valid java name */
    private static final Object f32979for = new Object();

    /* renamed from: if, reason: not valid java name */
    private static FileProviderUtil f32980if;

    /* renamed from: new, reason: not valid java name */
    public static final /* synthetic */ boolean f32981new = false;

    public interface FileProviderUtil {
        Uri getContentUriFromFile(File file);
    }

    private ContentUriUtils() {
    }

    /* renamed from: case, reason: not valid java name */
    private static boolean m36788case(Uri uri) {
        if (Build.VERSION.SDK_INT < 19 || uri == null || !DocumentsContract.isDocumentUri(Ctry.m37273case(), uri)) {
            return false;
        }
        try {
            Cursor cursorQuery = Ctry.m37273case().getContentResolver().query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() >= 1) {
                        cursorQuery.moveToFirst();
                        boolean zM36793new = m36793new(cursorQuery);
                        cursorQuery.close();
                        return zM36793new;
                    }
                } finally {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }

    @CalledByNative
    public static boolean contentUriExists(String str) throws IOException {
        AssetFileDescriptor assetFileDescriptorM36789do = m36789do(str);
        boolean z = assetFileDescriptorM36789do != null;
        if (assetFileDescriptorM36789do != null) {
            try {
                assetFileDescriptorM36789do.close();
            } catch (IOException unused) {
            }
        }
        return z;
    }

    @CalledByNative
    public static boolean delete(String str) {
        return Ctry.m37273case().getContentResolver().delete(Uri.parse(str), null, null) > 0;
    }

    /* renamed from: do, reason: not valid java name */
    private static AssetFileDescriptor m36789do(String str) throws IOException {
        ContentResolver contentResolver = Ctry.m37273case().getContentResolver();
        Uri uri = Uri.parse(str);
        try {
            if (m36788case(uri)) {
                String[] streamTypes = contentResolver.getStreamTypes(uri, "*/*");
                if (streamTypes != null && streamTypes.length > 0) {
                    AssetFileDescriptor assetFileDescriptorOpenTypedAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(uri, streamTypes[0], null);
                    if (assetFileDescriptorOpenTypedAssetFileDescriptor == null || assetFileDescriptorOpenTypedAssetFileDescriptor.getStartOffset() == 0) {
                        return assetFileDescriptorOpenTypedAssetFileDescriptor;
                    }
                    try {
                        assetFileDescriptorOpenTypedAssetFileDescriptor.close();
                    } catch (IOException unused) {
                    }
                    throw new SecurityException("Cannot open files with non-zero offset type.");
                }
            } else {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = contentResolver.openFileDescriptor(uri, "r");
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    return new AssetFileDescriptor(parcelFileDescriptorOpenFileDescriptor, 0L, -1L);
                }
            }
        } catch (Exception e) {
            rv0.m7150const(f32978do, "Cannot open content uri: %s", str, e);
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public static void m36790else(FileProviderUtil fileProviderUtil) {
        synchronized (f32979for) {
            f32980if = fileProviderUtil;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static String m36791for(Uri uri, Context context, String str) {
        String[] streamTypes;
        String extensionFromMimeType;
        if (uri == null) {
            return "";
        }
        ContentResolver contentResolver = context.getContentResolver();
        try {
            Cursor cursorQuery = contentResolver.query(uri, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() >= 1) {
                        cursorQuery.moveToFirst();
                        int columnIndex = cursorQuery.getColumnIndex(str);
                        if (columnIndex == -1) {
                            cursorQuery.close();
                            return "";
                        }
                        String string = cursorQuery.getString(columnIndex);
                        if (m36793new(cursorQuery) && (streamTypes = contentResolver.getStreamTypes(uri, "*/*")) != null && streamTypes.length > 0 && (extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(streamTypes[0])) != null) {
                            string = string + "." + extensionFromMimeType;
                        }
                        cursorQuery.close();
                        return string;
                    }
                } finally {
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (NullPointerException unused) {
        }
        return "";
    }

    @CalledByNative
    public static String getContentUriFromFilePath(String str) {
        try {
            Uri uriM36792if = m36792if(new File(str));
            if (uriM36792if != null) {
                return uriM36792if.toString();
            }
            return null;
        } catch (IllegalArgumentException e) {
            rv0.m7156if(f32978do, "Cannot retrieve content uri from file: %s", str, e);
            return null;
        }
    }

    @CalledByNative
    public static String getMimeType(String str) {
        ContentResolver contentResolver = Ctry.m37273case().getContentResolver();
        Uri uri = Uri.parse(str);
        if (!m36788case(uri)) {
            return contentResolver.getType(uri);
        }
        String[] streamTypes = contentResolver.getStreamTypes(uri, "*/*");
        if (streamTypes == null || streamTypes.length <= 0) {
            return null;
        }
        return streamTypes[0];
    }

    /* renamed from: if, reason: not valid java name */
    public static Uri m36792if(File file) {
        synchronized (f32979for) {
            FileProviderUtil fileProviderUtil = f32980if;
            if (fileProviderUtil == null) {
                return null;
            }
            return fileProviderUtil.getContentUriFromFile(file);
        }
    }

    @Nullable
    @CalledByNative
    public static String maybeGetDisplayName(String str) {
        try {
            String strM36791for = m36791for(Uri.parse(str), Ctry.m37273case(), "_display_name");
            if (TextUtils.isEmpty(strM36791for)) {
                return null;
            }
            return strM36791for;
        } catch (Exception e) {
            rv0.m7150const(f32978do, "Cannot open content uri: %s", str, e);
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private static boolean m36793new(Cursor cursor) {
        int columnIndex;
        return Build.VERSION.SDK_INT >= 24 && (columnIndex = cursor.getColumnIndex("flags")) > -1 && (cursor.getLong(columnIndex) & 512) != 0;
    }

    @CalledByNative
    public static int openContentUriForRead(String str) throws IOException {
        AssetFileDescriptor assetFileDescriptorM36789do = m36789do(str);
        if (assetFileDescriptorM36789do != null) {
            return assetFileDescriptorM36789do.getParcelFileDescriptor().detachFd();
        }
        return -1;
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m36794try(String str) {
        Uri uri;
        return (str == null || (uri = Uri.parse(str)) == null || !"content".equals(uri.getScheme())) ? false : true;
    }
}
