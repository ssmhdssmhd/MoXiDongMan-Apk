package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Build;
import android.support.v4.cf1;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class TransformationUtils {

    /* renamed from: case, reason: not valid java name */
    private static final Paint f10116case;

    /* renamed from: do, reason: not valid java name */
    private static final String f10117do = "TransformationUtils";

    /* renamed from: else, reason: not valid java name */
    private static final Set<String> f10118else;

    /* renamed from: goto, reason: not valid java name */
    private static final Lock f10120goto;

    /* renamed from: if, reason: not valid java name */
    public static final int f10121if = 6;

    /* renamed from: new, reason: not valid java name */
    private static final int f10122new = 7;

    /* renamed from: for, reason: not valid java name */
    private static final Paint f10119for = new Paint(6);

    /* renamed from: try, reason: not valid java name */
    private static final Paint f10123try = new Paint(7);

    public interface DrawRoundedCornerFn {
        void drawRoundedCorners(Canvas canvas, Paint paint, RectF rectF);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$do, reason: invalid class name */
    public class Cdo implements DrawRoundedCornerFn {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f10124do;

        public Cdo(int i) {
            this.f10124do = i;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.TransformationUtils.DrawRoundedCornerFn
        public void drawRoundedCorners(Canvas canvas, Paint paint, RectF rectF) {
            int i = this.f10124do;
            canvas.drawRoundRect(rectF, i, i, paint);
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$for, reason: invalid class name */
    public static final class Cfor implements Lock {
        @Override // java.util.concurrent.locks.Lock
        public void lock() {
        }

        @Override // java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
        }

        @Override // java.util.concurrent.locks.Lock
        @NonNull
        public Condition newCondition() {
            throw new UnsupportedOperationException("Should not be called");
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock() {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public boolean tryLock(long j, @NonNull TimeUnit timeUnit) throws InterruptedException {
            return true;
        }

        @Override // java.util.concurrent.locks.Lock
        public void unlock() {
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.TransformationUtils$if, reason: invalid class name */
    public class Cif implements DrawRoundedCornerFn {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ float f10125do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ float f10126for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ float f10127if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ float f10128new;

        public Cif(float f, float f2, float f3, float f4) {
            this.f10125do = f;
            this.f10127if = f2;
            this.f10126for = f3;
            this.f10128new = f4;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.TransformationUtils.DrawRoundedCornerFn
        public void drawRoundedCorners(Canvas canvas, Paint paint, RectF rectF) {
            Path path = new Path();
            float f = this.f10125do;
            float f2 = this.f10127if;
            float f3 = this.f10126for;
            float f4 = this.f10128new;
            path.addRoundRect(rectF, new float[]{f, f, f2, f2, f3, f3, f4, f4}, Path.Direction.CW);
            canvas.drawPath(path, paint);
        }
    }

    static {
        HashSet hashSet = new HashSet(Arrays.asList("XT1085", "XT1092", "XT1093", "XT1094", "XT1095", "XT1096", "XT1097", "XT1098", "XT1031", "XT1028", "XT937C", "XT1032", "XT1008", "XT1033", "XT1035", "XT1034", "XT939G", "XT1039", "XT1040", "XT1042", "XT1045", "XT1063", "XT1064", "XT1068", "XT1069", "XT1072", "XT1077", "XT1078", "XT1079"));
        f10118else = hashSet;
        f10120goto = hashSet.contains(Build.MODEL) ? new ReentrantLock() : new Cfor();
        Paint paint = new Paint(7);
        f10116case = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    private TransformationUtils() {
    }

    /* renamed from: break, reason: not valid java name */
    public static int m11721break(int i) {
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

    /* renamed from: case, reason: not valid java name */
    public static Bitmap m11722case(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            Log.isLoggable(f10117do, 2);
            return bitmap;
        }
        float fMin = Math.min(i / bitmap.getWidth(), i2 / bitmap.getHeight());
        int iRound = Math.round(bitmap.getWidth() * fMin);
        int iRound2 = Math.round(bitmap.getHeight() * fMin);
        if (bitmap.getWidth() == iRound && bitmap.getHeight() == iRound2) {
            Log.isLoggable(f10117do, 2);
            return bitmap;
        }
        Bitmap bitmap2 = bitmapPool.get((int) (bitmap.getWidth() * fMin), (int) (bitmap.getHeight() * fMin), m11723catch(bitmap));
        m11735public(bitmap, bitmap2);
        if (Log.isLoggable(f10117do, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("request: ");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("toFit:   ");
            sb2.append(bitmap.getWidth());
            sb2.append("x");
            sb2.append(bitmap.getHeight());
            StringBuilder sb3 = new StringBuilder();
            sb3.append("toReuse: ");
            sb3.append(bitmap2.getWidth());
            sb3.append("x");
            sb3.append(bitmap2.getHeight());
            StringBuilder sb4 = new StringBuilder();
            sb4.append("minPct:   ");
            sb4.append(fMin);
        }
        Matrix matrix = new Matrix();
        matrix.setScale(fMin, fMin);
        m11726do(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    private static Bitmap.Config m11723catch(@NonNull Bitmap bitmap) {
        return bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888;
    }

    @VisibleForTesting
    /* renamed from: class, reason: not valid java name */
    public static void m11724class(int i, Matrix matrix) {
        switch (i) {
            case 2:
                matrix.setScale(-1.0f, 1.0f);
                break;
            case 3:
                matrix.setRotate(180.0f);
                break;
            case 4:
                matrix.setRotate(180.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 5:
                matrix.setRotate(90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 6:
                matrix.setRotate(90.0f);
                break;
            case 7:
                matrix.setRotate(-90.0f);
                matrix.postScale(-1.0f, 1.0f);
                break;
            case 8:
                matrix.setRotate(-90.0f);
                break;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m11725const(int i) {
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static void m11726do(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, Matrix matrix) {
        Lock lock = f10120goto;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawBitmap(bitmap, matrix, f10119for);
            m11739try(canvas);
            lock.unlock();
        } catch (Throwable th) {
            f10120goto.unlock();
            throw th;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static Bitmap m11727else(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap) {
        Bitmap.Config configM11730goto = m11730goto(bitmap);
        if (configM11730goto.equals(bitmap.getConfig())) {
            return bitmap;
        }
        Bitmap bitmap2 = bitmapPool.get(bitmap.getWidth(), bitmap.getHeight(), configM11730goto);
        new Canvas(bitmap2).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        return bitmap2;
    }

    /* renamed from: final, reason: not valid java name */
    public static Bitmap m11728final(@NonNull Bitmap bitmap, int i) {
        if (i == 0) {
            return bitmap;
        }
        try {
            Matrix matrix = new Matrix();
            matrix.setRotate(i);
            return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (Exception unused) {
            Log.isLoggable(f10117do, 6);
            return bitmap;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static Bitmap m11729for(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() > i || bitmap.getHeight() > i2) {
            Log.isLoggable(f10117do, 2);
            return m11722case(bitmapPool, bitmap, i, i2);
        }
        Log.isLoggable(f10117do, 2);
        return bitmap;
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    private static Bitmap.Config m11730goto(@NonNull Bitmap bitmap) {
        return (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(bitmap.getConfig())) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGBA_F16;
    }

    /* renamed from: if, reason: not valid java name */
    public static Bitmap m11731if(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        float width;
        float height;
        if (bitmap.getWidth() == i && bitmap.getHeight() == i2) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width2 = 0.0f;
        if (bitmap.getWidth() * i2 > bitmap.getHeight() * i) {
            width = i2 / bitmap.getHeight();
            width2 = (i - (bitmap.getWidth() * width)) * 0.5f;
            height = 0.0f;
        } else {
            width = i / bitmap.getWidth();
            height = (i2 - (bitmap.getHeight() * width)) * 0.5f;
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (width2 + 0.5f), (int) (height + 0.5f));
        Bitmap bitmap2 = bitmapPool.get(i, i2, m11723catch(bitmap));
        m11735public(bitmap, bitmap2);
        m11726do(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    @Deprecated
    /* renamed from: import, reason: not valid java name */
    public static Bitmap m11732import(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2, int i3) {
        return m11740while(bitmapPool, bitmap, i3);
    }

    /* renamed from: native, reason: not valid java name */
    private static Bitmap m11733native(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, DrawRoundedCornerFn drawRoundedCornerFn) {
        Bitmap.Config configM11730goto = m11730goto(bitmap);
        Bitmap bitmapM11727else = m11727else(bitmapPool, bitmap);
        Bitmap bitmap2 = bitmapPool.get(bitmapM11727else.getWidth(), bitmapM11727else.getHeight(), configM11730goto);
        bitmap2.setHasAlpha(true);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmapM11727else, tileMode, tileMode);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapShader);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap2.getWidth(), bitmap2.getHeight());
        Lock lock = f10120goto;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawColor(0, PorterDuff.Mode.CLEAR);
            drawRoundedCornerFn.drawRoundedCorners(canvas, paint, rectF);
            m11739try(canvas);
            lock.unlock();
            if (!bitmapM11727else.equals(bitmap)) {
                bitmapPool.put(bitmapM11727else);
            }
            return bitmap2;
        } catch (Throwable th) {
            f10120goto.unlock();
            throw th;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static Bitmap m11734new(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        int iMin = Math.min(i, i2);
        float f = iMin;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float fMax = Math.max(f / width, f / height);
        float f3 = width * fMax;
        float f4 = fMax * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap bitmapM11727else = m11727else(bitmapPool, bitmap);
        Bitmap bitmap2 = bitmapPool.get(iMin, iMin, m11730goto(bitmap));
        bitmap2.setHasAlpha(true);
        Lock lock = f10120goto;
        lock.lock();
        try {
            Canvas canvas = new Canvas(bitmap2);
            canvas.drawCircle(f2, f2, f2, f10123try);
            canvas.drawBitmap(bitmapM11727else, (Rect) null, rectF, f10116case);
            m11739try(canvas);
            lock.unlock();
            if (!bitmapM11727else.equals(bitmap)) {
                bitmapPool.put(bitmapM11727else);
            }
            return bitmap2;
        } catch (Throwable th) {
            f10120goto.unlock();
            throw th;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m11735public(Bitmap bitmap, Bitmap bitmap2) {
        bitmap2.setHasAlpha(bitmap.hasAlpha());
    }

    /* renamed from: super, reason: not valid java name */
    public static Bitmap m11736super(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i) {
        if (!m11725const(i)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        m11724class(i, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        Bitmap bitmap2 = bitmapPool.get(Math.round(rectF.width()), Math.round(rectF.height()), m11723catch(bitmap));
        matrix.postTranslate(-rectF.left, -rectF.top);
        bitmap2.setHasAlpha(bitmap.hasAlpha());
        m11726do(bitmap, bitmap2, matrix);
        return bitmap2;
    }

    /* renamed from: this, reason: not valid java name */
    public static Lock m11737this() {
        return f10120goto;
    }

    /* renamed from: throw, reason: not valid java name */
    public static Bitmap m11738throw(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, float f, float f2, float f3, float f4) {
        return m11733native(bitmapPool, bitmap, new Cif(f, f2, f3, f4));
    }

    /* renamed from: try, reason: not valid java name */
    private static void m11739try(Canvas canvas) {
        canvas.setBitmap(null);
    }

    /* renamed from: while, reason: not valid java name */
    public static Bitmap m11740while(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i) {
        cf1.m897do(i > 0, "roundingRadius must be greater than 0.");
        return m11733native(bitmapPool, bitmap, new Cdo(i));
    }
}
