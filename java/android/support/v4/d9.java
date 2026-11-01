package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.callback.BitmapCropCallback;
import com.yalantis.ucrop.util.Cdo;
import com.yalantis.ucrop.util.ImageHeaderParser;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public class d9 extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: native, reason: not valid java name */
    private static final String f954native = "BitmapCropTask";

    /* renamed from: break, reason: not valid java name */
    private final int f955break;

    /* renamed from: case, reason: not valid java name */
    private float f956case;

    /* renamed from: catch, reason: not valid java name */
    private final Uri f957catch;

    /* renamed from: class, reason: not valid java name */
    private final String f958class;

    /* renamed from: const, reason: not valid java name */
    private final a90 f959const;

    /* renamed from: do, reason: not valid java name */
    private final WeakReference<Context> f960do;

    /* renamed from: else, reason: not valid java name */
    private final int f961else;

    /* renamed from: final, reason: not valid java name */
    private final BitmapCropCallback f962final;

    /* renamed from: for, reason: not valid java name */
    private final RectF f963for;

    /* renamed from: goto, reason: not valid java name */
    private final int f964goto;

    /* renamed from: if, reason: not valid java name */
    private Bitmap f965if;

    /* renamed from: import, reason: not valid java name */
    private int f966import;

    /* renamed from: new, reason: not valid java name */
    private final RectF f967new;

    /* renamed from: super, reason: not valid java name */
    private int f968super;

    /* renamed from: this, reason: not valid java name */
    private final Bitmap.CompressFormat f969this;

    /* renamed from: throw, reason: not valid java name */
    private int f970throw;

    /* renamed from: try, reason: not valid java name */
    private float f971try;

    /* renamed from: while, reason: not valid java name */
    private int f972while;

    public d9(@NonNull Context context, @Nullable Bitmap bitmap, @NonNull xl0 xl0Var, @NonNull vs vsVar, @Nullable BitmapCropCallback bitmapCropCallback) {
        this.f960do = new WeakReference<>(context);
        this.f965if = bitmap;
        this.f963for = xl0Var.m9531do();
        this.f967new = xl0Var.m9532for();
        this.f971try = xl0Var.m9534new();
        this.f956case = xl0Var.m9533if();
        this.f961else = vsVar.m8948case();
        this.f964goto = vsVar.m8950else();
        this.f969this = vsVar.m8949do();
        this.f955break = vsVar.m8952if();
        this.f957catch = vsVar.m8953new();
        this.f958class = vsVar.m8954try();
        this.f959const = vsVar.m8951for();
        this.f962final = bitmapCropCallback;
    }

    /* renamed from: do, reason: not valid java name */
    private boolean m1166do() throws Throwable {
        if (this.f961else > 0 && this.f964goto > 0) {
            float fWidth = this.f963for.width() / this.f971try;
            float fHeight = this.f963for.height() / this.f971try;
            int i = this.f961else;
            if (fWidth > i || fHeight > this.f964goto) {
                float fMin = Math.min(i / fWidth, this.f964goto / fHeight);
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(this.f965if, Math.round(r2.getWidth() * fMin), Math.round(this.f965if.getHeight() * fMin), false);
                Bitmap bitmap = this.f965if;
                if (bitmap != bitmapCreateScaledBitmap) {
                    bitmap.recycle();
                }
                this.f965if = bitmapCreateScaledBitmap;
                this.f971try /= fMin;
            }
        }
        if (this.f956case != 0.0f) {
            Matrix matrix = new Matrix();
            matrix.setRotate(this.f956case, this.f965if.getWidth() / 2, this.f965if.getHeight() / 2);
            Bitmap bitmap2 = this.f965if;
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap2, 0, 0, bitmap2.getWidth(), this.f965if.getHeight(), matrix, true);
            Bitmap bitmap3 = this.f965if;
            if (bitmap3 != bitmapCreateBitmap) {
                bitmap3.recycle();
            }
            this.f965if = bitmapCreateBitmap;
        }
        this.f972while = Math.round((this.f963for.left - this.f967new.left) / this.f971try);
        this.f966import = Math.round((this.f963for.top - this.f967new.top) / this.f971try);
        this.f968super = Math.round(this.f963for.width() / this.f971try);
        int iRound = Math.round(this.f963for.height() / this.f971try);
        this.f970throw = iRound;
        boolean zM1168try = m1168try(this.f968super, iRound);
        StringBuilder sb = new StringBuilder();
        sb.append("Should crop: ");
        sb.append(zM1168try);
        if (!zM1168try) {
            if (Build.VERSION.SDK_INT >= 29) {
                return true;
            }
            Cdo.m27496do(this.f957catch.getPath(), this.f958class);
            return false;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            ExifInterface exifInterface = i2 >= 24 ? new ExifInterface(this.f960do.get().getContentResolver().openFileDescriptor(this.f957catch, "r").getFileDescriptor()) : null;
            m1167new(Bitmap.createBitmap(this.f965if, this.f972while, this.f966import, this.f968super, this.f970throw));
            if (this.f969this.equals(Bitmap.CompressFormat.JPEG)) {
                ImageHeaderParser.m27479if(exifInterface, this.f968super, this.f970throw, this.f958class);
            }
        } else {
            ExifInterface exifInterface2 = new ExifInterface(this.f957catch.getPath());
            m1167new(Bitmap.createBitmap(this.f965if, this.f972while, this.f966import, this.f968super, this.f970throw));
            if (this.f969this.equals(Bitmap.CompressFormat.JPEG)) {
                ImageHeaderParser.m27479if(exifInterface2, this.f968super, this.f970throw, this.f958class);
            }
        }
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    private void m1167new(@NonNull Bitmap bitmap) throws IOException {
        Context context = this.f960do.get();
        if (context == null) {
            return;
        }
        OutputStream outputStreamOpenOutputStream = null;
        try {
            outputStreamOpenOutputStream = context.getContentResolver().openOutputStream(Uri.fromFile(new File(this.f958class)));
            bitmap.compress(this.f969this, this.f955break, outputStreamOpenOutputStream);
            bitmap.recycle();
        } finally {
            l9.m4614for(outputStreamOpenOutputStream);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m1168try(int i, int i2) {
        int iRound = Math.round(Math.max(i, i2) / 1000.0f) + 1;
        if (this.f961else > 0 && this.f964goto > 0) {
            return true;
        }
        float f = iRound;
        return Math.abs(this.f963for.left - this.f967new.left) > f || Math.abs(this.f963for.top - this.f967new.top) > f || Math.abs(this.f963for.bottom - this.f967new.bottom) > f || Math.abs(this.f963for.right - this.f967new.right) > f;
    }

    @Override // android.os.AsyncTask
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onPostExecute(@Nullable Throwable th) {
        BitmapCropCallback bitmapCropCallback = this.f962final;
        if (bitmapCropCallback != null) {
            if (th != null) {
                bitmapCropCallback.onCropFailure(th);
            } else {
                this.f962final.onBitmapCropped(Uri.fromFile(new File(this.f958class)), this.f972while, this.f966import, this.f968super, this.f970throw);
            }
        }
    }

    @Override // android.os.AsyncTask
    @Nullable
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public Throwable doInBackground(Void... voidArr) {
        Bitmap bitmap = this.f965if;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.f967new.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            m1166do();
            this.f965if = null;
            return null;
        } catch (Throwable th) {
            return th;
        }
    }
}
