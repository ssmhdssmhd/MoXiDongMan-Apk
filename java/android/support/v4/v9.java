package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import com.yalantis.ucrop.util.Cdo;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes2.dex */
public class v9 {
    /* renamed from: do, reason: not valid java name */
    public static Bitmap m8799do(Context context, Uri uri) throws IOException {
        try {
            ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
            Bitmap bitmapDecodeFileDescriptor = BitmapFactory.decodeFileDescriptor(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
            parcelFileDescriptorOpenFileDescriptor.close();
            return bitmapDecodeFileDescriptor;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8800if(Bitmap bitmap, String str) throws IOException {
        FileOutputStream fileOutputStream;
        if (bitmap != null && Environment.getExternalStorageState().equals("mounted")) {
            File file = new File(Cdo.m27501new(str));
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(str);
            FileOutputStream fileOutputStream2 = null;
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                } catch (FileNotFoundException e) {
                    e = e;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    fileOutputStream = fileOutputStream2;
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            } catch (FileNotFoundException e2) {
                e = e2;
            }
            try {
                fileOutputStream.flush();
                fileOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
        }
    }
}
