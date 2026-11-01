package android.support.v4;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.callback.BitmapLoadCallback;
import com.yalantis.ucrop.util.ImageHeaderParser;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class l9 {

    /* renamed from: do, reason: not valid java name */
    private static final String f3576do = "BitmapLoadUtils";

    /* renamed from: case, reason: not valid java name */
    public static int m4611case(int i) {
        return (i == 2 || i == 7 || i == 4 || i == 5) ? -1 : 1;
    }

    /* renamed from: do, reason: not valid java name */
    public static int m4612do(@NonNull BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outHeight;
        int i4 = options.outWidth;
        int i5 = 1;
        if (i3 > i2 || i4 > i) {
            while (true) {
                if (i3 / i5 <= i2 && i4 / i5 <= i) {
                    break;
                }
                i5 *= 2;
            }
        }
        return i5;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m4613else(@NonNull Context context, @NonNull Uri uri) throws FileNotFoundException {
        int iM27482for = 0;
        try {
            InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                return 0;
            }
            iM27482for = new ImageHeaderParser(inputStreamOpenInputStream).m27482for();
            m4614for(inputStreamOpenInputStream);
            return iM27482for;
        } catch (IOException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("getExifOrientation: ");
            sb.append(uri.toString());
            return iM27482for;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4614for(@Nullable Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static Bitmap m4615goto(@NonNull Bitmap bitmap, @NonNull Matrix matrix) {
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            return !bitmap.sameAs(bitmapCreateBitmap) ? bitmapCreateBitmap : bitmap;
        } catch (OutOfMemoryError unused) {
            return bitmap;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m4616if(@NonNull Context context) {
        int height;
        int i;
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 13) {
            defaultDisplay.getSize(point);
            i = point.x;
            height = point.y;
        } else {
            int width = defaultDisplay.getWidth();
            height = defaultDisplay.getHeight();
            i = width;
        }
        int iSqrt = (int) Math.sqrt(Math.pow(i, 2.0d) + Math.pow(height, 2.0d));
        Canvas canvas = new Canvas();
        int iMin = Math.min(canvas.getMaximumBitmapWidth(), canvas.getMaximumBitmapHeight());
        if (iMin > 0) {
            iSqrt = Math.min(iSqrt, iMin);
        }
        int iM755for = c60.m755for();
        if (iM755for > 0) {
            iSqrt = Math.min(iSqrt, iM755for);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("maxBitmapSize: ");
        sb.append(iSqrt);
        return iSqrt;
    }

    /* renamed from: new, reason: not valid java name */
    public static void m4617new(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int i, int i2, BitmapLoadCallback bitmapLoadCallback) {
        new k9(context, uri, uri2, i, i2, bitmapLoadCallback).execute(new Void[0]);
    }

    /* renamed from: try, reason: not valid java name */
    public static int m4618try(int i) {
        switch (i) {
            case 3:
            case 4:
                return 180;
            case 5:
            case 6:
                return 90;
            case 7:
            case 8:
                return 270;
            default:
                return 0;
        }
    }
}
