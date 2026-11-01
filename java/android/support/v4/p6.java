package android.support.v4;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.TypedValue;
import android.view.Display;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.gyf.immersionbar.Cnew;

/* loaded from: classes.dex */
public class p6 {

    /* renamed from: do, reason: not valid java name */
    private static boolean f4859do;

    /* renamed from: break, reason: not valid java name */
    public static Point m5880break(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point;
    }

    /* renamed from: case, reason: not valid java name */
    public static void m5881case(String str, String str2) {
    }

    /* renamed from: catch, reason: not valid java name */
    public static int m5882catch(Context context) {
        int identifier;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.windowFullscreen});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        if (!z && (identifier = context.getResources().getIdentifier(Cnew.f18143for, "dimen", "android")) > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m5883class() {
        return f4859do;
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m5884const(Context context) {
        Point pointM5880break = m5880break(context);
        return pointM5880break.y > pointM5880break.x;
    }

    /* renamed from: do, reason: not valid java name */
    public static Bitmap m5885do(Bitmap bitmap, int i) {
        float height;
        float width;
        if (bitmap == null) {
            return null;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i, bitmap.getWidth() / 2.0f, bitmap.getHeight() / 2.0f);
        if (i == 90) {
            height = bitmap.getHeight();
            width = 0.0f;
        } else {
            height = bitmap.getHeight();
            width = bitmap.getWidth();
        }
        float[] fArr = new float[9];
        matrix.getValues(fArr);
        matrix.postTranslate(height - fArr[2], width - fArr[5]);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), Bitmap.Config.ARGB_8888);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, new Paint());
        return bitmapCreateBitmap;
    }

    /* renamed from: else, reason: not valid java name */
    public static int m5886else(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: final, reason: not valid java name */
    public static Bitmap m5887final(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return bitmapCreateBitmap;
    }

    /* renamed from: for, reason: not valid java name */
    public static Rect m5888for(float f, float f2, float f3, int i, int i2, int i3, int i4) {
        int i5 = (int) ((i * f) / 2.0f);
        int i6 = (int) ((i2 * f) / 2.0f);
        int i7 = (int) (((f2 / i3) * 2000.0f) - 1000.0f);
        int i8 = (int) (((f3 / i4) * 2000.0f) - 1000.0f);
        RectF rectF = new RectF(m5891new(i7 - i5, -1000, 1000), m5891new(i8 - i6, -1000, 1000), m5891new(i7 + i5, -1000, 1000), m5891new(i8 + i6, -1000, 1000));
        return new Rect(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m5889goto(String str) {
    }

    /* renamed from: if, reason: not valid java name */
    public static float m5890if(MotionEvent motionEvent) {
        float x = motionEvent.getX(0) - motionEvent.getX(1);
        float y = motionEvent.getY(0) - motionEvent.getY(1);
        return (float) Math.sqrt((x * x) + (y * y));
    }

    /* renamed from: new, reason: not valid java name */
    public static int m5891new(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: super, reason: not valid java name */
    public static void m5892super(String str, Rect rect) {
        m5881case("BGAQRCodeFocusArea", str + " centerX：" + rect.centerX() + " centerY：" + rect.centerY() + " width：" + rect.width() + " height：" + rect.height() + " rectHalfWidth：" + (rect.width() / 2) + " rectHalfHeight：" + (rect.height() / 2) + " left：" + rect.left + " top：" + rect.top + " right：" + rect.right + " bottom：" + rect.bottom);
    }

    /* renamed from: this, reason: not valid java name */
    public static Bitmap m5893this(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            int i = 1;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i2 = options.outHeight / 400;
            if (i2 > 0) {
                i = i2;
            }
            options.inSampleSize = i;
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(str, options);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m5894throw(boolean z) {
        f4859do = z;
    }

    /* renamed from: try, reason: not valid java name */
    public static void m5895try(String str) {
        m5881case("BGAQRCode", str);
    }

    /* renamed from: while, reason: not valid java name */
    public static int m5896while(Context context, float f) {
        return (int) TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }
}
