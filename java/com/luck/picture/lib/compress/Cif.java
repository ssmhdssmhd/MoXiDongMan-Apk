package com.luck.picture.lib.compress;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import com.uc.crashsdk.export.LogType;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* renamed from: com.luck.picture.lib.compress.if, reason: invalid class name */
/* loaded from: classes2.dex */
class Cif {

    /* renamed from: do, reason: not valid java name */
    private InputStreamProvider f18629do;

    /* renamed from: for, reason: not valid java name */
    private int f18630for;

    /* renamed from: if, reason: not valid java name */
    private File f18631if;

    /* renamed from: new, reason: not valid java name */
    private int f18632new;

    /* renamed from: try, reason: not valid java name */
    private boolean f18633try;

    public Cif(InputStreamProvider inputStreamProvider, File file, boolean z) throws IOException {
        this.f18631if = file;
        this.f18629do = inputStreamProvider;
        this.f18633try = z;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 1;
        BitmapFactory.decodeStream(inputStreamProvider.open(), null, options);
        this.f18630for = options.outWidth;
        this.f18632new = options.outHeight;
    }

    /* renamed from: for, reason: not valid java name */
    private Bitmap m22983for(Bitmap bitmap, int i) {
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
    }

    /* renamed from: if, reason: not valid java name */
    private int m22984if() {
        int i = this.f18630for;
        if (i % 2 == 1) {
            i++;
        }
        this.f18630for = i;
        int i2 = this.f18632new;
        if (i2 % 2 == 1) {
            i2++;
        }
        this.f18632new = i2;
        int iMax = Math.max(i, i2);
        float fMin = Math.min(this.f18630for, this.f18632new) / iMax;
        if (fMin > 1.0f || fMin <= 0.5625d) {
            double d = fMin;
            if (d > 0.5625d || d <= 0.5d) {
                double d2 = iMax;
                Double.isNaN(d);
                Double.isNaN(d2);
                return (int) Math.ceil(d2 / (1280.0d / d));
            }
            int i3 = iMax / LogType.UNEXP_ANR;
            if (i3 == 0) {
                return 1;
            }
            return i3;
        }
        if (iMax < 1664) {
            return 1;
        }
        if (iMax < 4990) {
            return 2;
        }
        if (iMax > 4990 && iMax < 10240) {
            return 4;
        }
        int i4 = iMax / LogType.UNEXP_ANR;
        if (i4 == 0) {
            return 1;
        }
        return i4;
    }

    /* renamed from: do, reason: not valid java name */
    public File m22985do() throws IOException {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = m22984if();
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(this.f18629do.open(), null, options);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Cdo cdo = Cdo.SINGLE;
        if (cdo.isJPG(this.f18629do.open())) {
            bitmapDecodeStream = m22983for(bitmapDecodeStream, cdo.getOrientation(this.f18629do.open()));
        }
        bitmapDecodeStream.compress(this.f18633try ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 60, byteArrayOutputStream);
        bitmapDecodeStream.recycle();
        FileOutputStream fileOutputStream = new FileOutputStream(this.f18631if);
        fileOutputStream.write(byteArrayOutputStream.toByteArray());
        fileOutputStream.flush();
        fileOutputStream.close();
        byteArrayOutputStream.close();
        return this.f18631if;
    }
}
