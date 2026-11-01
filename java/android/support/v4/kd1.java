package android.support.v4;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public class kd1 {
    /* renamed from: do, reason: not valid java name */
    public static Uri m4375do(Context context) {
        Uri[] uriArr = {null};
        String externalStorageState = Environment.getExternalStorageState();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.CHINA);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = simpleDateFormat.format(new Date(jCurrentTimeMillis));
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("_display_name", str);
        contentValues.put("datetaken", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("mime_type", "image/jpeg");
        if (externalStorageState.equals("mounted")) {
            uriArr[0] = context.getContentResolver().insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            uriArr[0] = context.getContentResolver().insert(MediaStore.Images.Media.INTERNAL_CONTENT_URI, contentValues);
        }
        return uriArr[0];
    }

    /* renamed from: if, reason: not valid java name */
    public static Uri m4376if(Context context) {
        Uri[] uriArr = {null};
        String externalStorageState = Environment.getExternalStorageState();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.CHINA);
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str = simpleDateFormat.format(new Date(jCurrentTimeMillis));
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("_display_name", str);
        contentValues.put("datetaken", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("mime_type", "video/mp4");
        if (externalStorageState.equals("mounted")) {
            uriArr[0] = context.getContentResolver().insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, contentValues);
        } else {
            uriArr[0] = context.getContentResolver().insert(MediaStore.Video.Media.INTERNAL_CONTENT_URI, contentValues);
        }
        return uriArr[0];
    }
}
