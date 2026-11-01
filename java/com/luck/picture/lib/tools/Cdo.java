package com.luck.picture.lib.tools;

import android.annotation.SuppressLint;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.support.v4.od1;
import android.support.v4.on0;
import android.support.v4.ps1;
import android.support.v4.rd1;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* renamed from: com.luck.picture.lib.tools.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: case, reason: not valid java name */
    public static final String f18870case = "/PictureSelector/CropImage/";

    /* renamed from: do, reason: not valid java name */
    private static String f18871do = "picture_cache";

    /* renamed from: else, reason: not valid java name */
    public static final String f18872else = "PictureFileUtils";

    /* renamed from: for, reason: not valid java name */
    public static final String f18873for = ".mp4";

    /* renamed from: if, reason: not valid java name */
    public static final String f18874if = ".JPEG";

    /* renamed from: new, reason: not valid java name */
    public static final String f18875new = "PictureSelector";

    /* renamed from: try, reason: not valid java name */
    public static final String f18876try = "/PictureSelector/CameraImage/";

    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m23293break(Context context) {
        try {
            if (ps1.m6218do()) {
                return "%" + context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) + "/Camera";
            }
            return "%" + Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DCIM).getAbsolutePath() + "/Camera";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static File m23294case(Context context, String str, int i, String str2) {
        String externalStorageState = Environment.getExternalStorageState();
        File file = new File((ps1.m6218do() ? externalStorageState.equals("mounted") ? context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) : context.getCacheDir() : externalStorageState.equals("mounted") ? Environment.getExternalStorageDirectory() : context.getCacheDir()).getAbsolutePath() + str);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str3 = "PictureSelector_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.CHINA).format(new Date()) + "";
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return new File(file, str3 + f18873for);
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = ".JPEG";
        }
        return new File(file, str3 + str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002b A[PHI: r8
      0x002b: PHI (r8v3 android.database.Cursor) = (r8v2 android.database.Cursor), (r8v4 android.database.Cursor) binds: [B:19:0x0046, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004e  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* renamed from: catch, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m23295catch(Context context, Uri uri, String str, String[] strArr) throws Throwable {
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

    /* renamed from: class, reason: not valid java name */
    public static List<String> m23296class(String str) {
        File file = new File(str);
        ArrayList arrayList = new ArrayList();
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                String absolutePath = file2.getAbsolutePath();
                if (absolutePath.endsWith(".jpg") || absolutePath.endsWith(".jpeg") || absolutePath.endsWith(rd1.f5753if) || absolutePath.endsWith(".gif") || absolutePath.endsWith(".webp")) {
                    arrayList.add(absolutePath);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: const, reason: not valid java name */
    public static String m23297const(Context context) {
        Context applicationContext = context.getApplicationContext();
        return ("mounted".equals(Environment.getExternalStorageState()) || !Environment.isExternalStorageRemovable()) ? ps1.m6218do() ? applicationContext.getExternalFilesDir(Environment.DIRECTORY_PICTURES).getPath() : applicationContext.getExternalCacheDir().getPath() : applicationContext.getCacheDir().getPath();
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m23298do(@NonNull String str, @NonNull String str2) throws IOException {
        FileChannel fileChannel;
        if (str.equalsIgnoreCase(str2)) {
            return false;
        }
        FileChannel channel = null;
        try {
            FileChannel channel2 = new FileInputStream(new File(str)).getChannel();
            try {
                channel = new FileOutputStream(new File(str2)).getChannel();
                channel2.transferTo(0L, channel2.size(), channel);
                channel2.close();
                channel2.close();
                if (channel != null) {
                    channel.close();
                }
                return m23312this(str);
            } catch (Throwable unused) {
                fileChannel = channel;
                channel = channel2;
                if (channel != null) {
                    channel.close();
                }
                if (fileChannel != null) {
                    fileChannel.close();
                }
                return m23312this(str);
            }
        } catch (Throwable unused2) {
            fileChannel = null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m23299else(Context context) {
        File cacheDir = context.getCacheDir();
        File file = new File(context.getCacheDir() + "/picture_cache");
        File file2 = new File(context.getCacheDir() + "/luban_disk_cache");
        if (cacheDir != null) {
            for (File file3 : cacheDir.listFiles()) {
                if (file3.isFile()) {
                    file3.delete();
                }
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file4 : fileArrListFiles) {
                if (file4.isFile()) {
                    file4.delete();
                }
            }
        }
        File[] fileArrListFiles2 = file2.listFiles();
        if (fileArrListFiles2 != null) {
            for (File file5 : fileArrListFiles2) {
                if (file5.isFile()) {
                    file5.delete();
                }
            }
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: final, reason: not valid java name */
    public static String m23300final(Context context, Uri uri) {
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            if (m23304import(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                if ("primary".equalsIgnoreCase(strArrSplit[0])) {
                    if (ps1.m6218do()) {
                        return context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) + on0.f4694final + strArrSplit[1];
                    }
                    return Environment.getExternalStorageDirectory() + on0.f4694final + strArrSplit[1];
                }
            } else {
                if (m23316while(uri)) {
                    return m23295catch(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(DocumentsContract.getDocumentId(uri)).longValue()), null, null);
                }
                if (m23307public(uri)) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str = strArrSplit2[0];
                    if (od1.f4554const.equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (od1.f4559final.equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return m23295catch(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return m23305native(uri) ? uri.getLastPathSegment() : m23295catch(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static File m23301for(Context context, int i, String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            str = f18876try;
        }
        return m23294case(context, str, i, str2);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m23302goto(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        File file = new File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) + "/picture_cache");
        File file2 = new File(context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) + "/luban_disk_cache");
        if (externalCacheDir != null) {
            for (File file3 : externalCacheDir.listFiles()) {
                if (file3.isFile()) {
                    file3.delete();
                }
            }
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file4 : fileArrListFiles) {
                if (file4.isFile()) {
                    file4.delete();
                }
            }
        }
        File[] fileArrListFiles2 = file2.listFiles();
        if (fileArrListFiles2 != null) {
            for (File file5 : fileArrListFiles2) {
                if (file5.isFile()) {
                    file5.delete();
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m23303if(@NonNull String str, @NonNull String str2) throws Throwable {
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

    /* renamed from: import, reason: not valid java name */
    public static boolean m23304import(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m23305native(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    /* renamed from: new, reason: not valid java name */
    public static File m23306new(Context context, int i, String str) {
        return m23294case(context, f18870case, i, str);
    }

    /* renamed from: public, reason: not valid java name */
    public static boolean m23307public(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    /* renamed from: return, reason: not valid java name */
    public static int m23308return(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (IOException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static Bitmap m23309static(int i, Bitmap bitmap) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        System.out.println("angle2=" + i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* renamed from: super, reason: not valid java name */
    public static File m23310super(Context context, File file) {
        String str;
        File cacheDir = context.getCacheDir();
        String name = file.getName();
        if (cacheDir == null) {
            Log.isLoggable(f18872else, 6);
            return file;
        }
        File file2 = new File(cacheDir, f18871do);
        if (!file2.mkdirs() && (!file2.exists() || !file2.isDirectory())) {
            return file;
        }
        if (name.endsWith(".webp")) {
            str = System.currentTimeMillis() + ".webp";
        } else {
            str = System.currentTimeMillis() + rd1.f5753if;
        }
        return new File(file2, str);
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m23311switch(Bitmap bitmap, File file) throws IOException {
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static boolean m23312this(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return new File(str).delete();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static int m23313throw(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        return (options.mCancel || options.outWidth == -1 || options.outHeight == -1) ? -1 : 0;
    }

    /* renamed from: throws, reason: not valid java name */
    public static Bitmap m23314throws(Bitmap bitmap) {
        float f;
        float f2;
        float f3;
        float f4;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (width <= height) {
            f4 = width / 2;
            f3 = width;
            f2 = f3;
            f = 0.0f;
        } else {
            f = (width - height) / 2;
            f2 = height;
            f3 = width - f;
            width = height;
            f4 = height / 2;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, width, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        Rect rect = new Rect((int) f, (int) 0.0f, (int) f3, (int) f2);
        Rect rect2 = new Rect((int) 0.0f, (int) 0.0f, (int) f2, (int) f2);
        RectF rectF = new RectF(rect2);
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawRoundRect(rectF, f4, f4, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect2, paint);
        return bitmapCreateBitmap;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m23315try(Context context, String str, String str2) {
        File file;
        String externalStorageState = Environment.getExternalStorageState();
        File externalFilesDir = ps1.m6218do() ? externalStorageState.equals("mounted") ? context.getExternalFilesDir(Environment.DIRECTORY_PICTURES) : context.getCacheDir() : externalStorageState.equals("mounted") ? Environment.getExternalStorageDirectory() : context.getCacheDir();
        if (TextUtils.isEmpty(str2)) {
            file = new File(externalFilesDir.getAbsolutePath() + "/PictureSelector");
        } else {
            file = new File(externalFilesDir.getAbsolutePath() + str2);
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file + on0.f4694final + str;
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m23316while(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }
}
