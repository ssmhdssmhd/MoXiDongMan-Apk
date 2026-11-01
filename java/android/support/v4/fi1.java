package android.support.v4;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import com.google.zxing.Cdo;
import com.google.zxing.Celse;
import com.google.zxing.Ctry;
import com.google.zxing.qrcode.decoder.Ccase;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class fi1 {

    /* renamed from: do, reason: not valid java name */
    public static final Map<Ctry, Object> f1829do;

    static {
        EnumMap enumMap = new EnumMap(Ctry.class);
        f1829do = enumMap;
        enumMap.put((EnumMap) Ctry.CHARACTER_SET, (Ctry) "utf-8");
        enumMap.put((EnumMap) Ctry.ERROR_CORRECTION, (Ctry) Ccase.H);
        enumMap.put((EnumMap) Ctry.MARGIN, (Ctry) 0);
    }

    private fi1() {
    }

    /* renamed from: case, reason: not valid java name */
    public static Bitmap m2296case(String str, int i, int i2, int i3, Bitmap bitmap) {
        try {
            z8 z8VarEncode = new Celse().encode(str, Cdo.QR_CODE, i, i, f1829do);
            int[] iArr = new int[i * i];
            for (int i4 = 0; i4 < i; i4++) {
                for (int i5 = 0; i5 < i; i5++) {
                    if (z8VarEncode.m10105try(i5, i4)) {
                        iArr[(i4 * i) + i5] = i2;
                    } else {
                        iArr[(i4 * i) + i5] = i3;
                    }
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i);
            return m2297do(bitmapCreateBitmap, bitmap);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static Bitmap m2297do(Bitmap bitmap, Bitmap bitmap2) {
        if (bitmap == null || bitmap2 == null) {
            return bitmap;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int width2 = bitmap2.getWidth();
        int height2 = bitmap2.getHeight();
        float f = ((width * 1.0f) / 5.0f) / width2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        try {
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            canvas.scale(f, f, width / 2, height / 2);
            canvas.drawBitmap(bitmap2, (width - width2) / 2, (height - height2) / 2, (Paint) null);
            canvas.save();
            canvas.restore();
            return bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Bitmap m2298else(String str, int i, int i2, Bitmap bitmap) {
        return m2296case(str, i, i2, -1, bitmap);
    }

    /* renamed from: for, reason: not valid java name */
    public static Bitmap m2299for(String str, int i, int i2, int i3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        HashMap map = new HashMap();
        map.put(Ctry.CHARACTER_SET, "utf-8");
        map.put(Ctry.ERROR_CORRECTION, Ccase.H);
        map.put(Ctry.MARGIN, 0);
        try {
            z8 z8VarEncode = new Celse().encode(str, Cdo.CODE_128, i, i2, map);
            int[] iArr = new int[i * i2];
            for (int i4 = 0; i4 < i2; i4++) {
                for (int i5 = 0; i5 < i; i5++) {
                    if (z8VarEncode.m10105try(i5, i4)) {
                        iArr[(i4 * i) + i5] = -16777216;
                    } else {
                        iArr[(i4 * i) + i5] = -1;
                    }
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
            return i3 > 0 ? m2300if(bitmapCreateBitmap, str, i3) : bitmapCreateBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static Bitmap m2300if(Bitmap bitmap, String str, int i) {
        if (TextUtils.isEmpty(str) || bitmap == null) {
            return null;
        }
        Paint paint = new Paint();
        paint.setColor(-16777216);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setTextSize(i);
        paint.setTextAlign(Paint.Align.CENTER);
        int iMeasureText = (int) paint.measureText(str);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        int i2 = (int) (fontMetrics.bottom - fontMetrics.top);
        float width = (bitmap.getWidth() * 1.0f) / iMeasureText;
        if (width < 1.0f) {
            paint.setTextScaleX(width);
        }
        int height = bitmap.getHeight() + i2;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight() + (i2 * 2), Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas();
        canvas.drawColor(-1);
        canvas.setBitmap(bitmapCreateBitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawText(str, bitmap.getWidth() / 2, height, paint);
        canvas.save();
        canvas.restore();
        return bitmapCreateBitmap;
    }

    /* renamed from: new, reason: not valid java name */
    public static Bitmap m2301new(String str, int i) {
        return m2296case(str, i, -16777216, -1, null);
    }

    /* renamed from: try, reason: not valid java name */
    public static Bitmap m2302try(String str, int i, int i2) {
        return m2296case(str, i, i2, -1, null);
    }
}
