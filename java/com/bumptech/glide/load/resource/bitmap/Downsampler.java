package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.v4.cf1;
import android.support.v4.f81;
import android.support.v4.n9;
import android.support.v4.sv0;
import android.support.v4.yi0;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.Cif;
import com.bumptech.glide.load.Cnew;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.data.Cbreak;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.Ctry;
import com.bumptech.glide.load.resource.bitmap.ImageReader;
import com.bumptech.glide.util.Ccase;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* loaded from: classes.dex */
public final class Downsampler {

    /* renamed from: break, reason: not valid java name */
    public static final Option<Boolean> f10093break;

    /* renamed from: case, reason: not valid java name */
    public static final String f10094case = "Downsampler";

    /* renamed from: catch, reason: not valid java name */
    public static final Option<Boolean> f10095catch;

    /* renamed from: class, reason: not valid java name */
    private static final String f10096class = "image/vnd.wap.wbmp";

    /* renamed from: const, reason: not valid java name */
    private static final String f10097const = "image/x-ico";

    /* renamed from: final, reason: not valid java name */
    private static final Set<String> f10099final;

    /* renamed from: super, reason: not valid java name */
    private static final DecodeCallbacks f10101super;

    /* renamed from: throw, reason: not valid java name */
    private static final Set<ImageHeaderParser.ImageType> f10103throw;

    /* renamed from: while, reason: not valid java name */
    private static final Queue<BitmapFactory.Options> f10104while;

    /* renamed from: do, reason: not valid java name */
    private final BitmapPool f10105do;

    /* renamed from: for, reason: not valid java name */
    private final ArrayPool f10106for;

    /* renamed from: if, reason: not valid java name */
    private final DisplayMetrics f10107if;

    /* renamed from: new, reason: not valid java name */
    private final List<ImageHeaderParser> f10108new;

    /* renamed from: try, reason: not valid java name */
    private final yi0 f10109try = yi0.m9873do();

    /* renamed from: else, reason: not valid java name */
    public static final Option<Cif> f10098else = Option.m11261else("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", Cif.DEFAULT);

    /* renamed from: goto, reason: not valid java name */
    public static final Option<Cnew> f10100goto = Option.m11261else("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", Cnew.SRGB);

    /* renamed from: this, reason: not valid java name */
    @Deprecated
    public static final Option<Ctry> f10102this = Ctry.f10171goto;

    public interface DecodeCallbacks {
        void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) throws IOException;

        void onObtainBounds();
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$do, reason: invalid class name */
    public class Cdo implements DecodeCallbacks {
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onDecodeComplete(BitmapPool bitmapPool, Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public void onObtainBounds() {
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        f10093break = Option.m11261else("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        f10095catch = Option.m11261else("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        f10099final = Collections.unmodifiableSet(new HashSet(Arrays.asList(f10096class, f10097const)));
        f10101super = new Cdo();
        f10103throw = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        f10104while = Ccase.m12039case(0);
    }

    public Downsampler(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.f10108new = list;
        this.f10107if = (DisplayMetrics) cf1.m900new(displayMetrics);
        this.f10105do = (BitmapPool) cf1.m900new(bitmapPool);
        this.f10106for = (ArrayPool) cf1.m900new(arrayPool);
    }

    @Nullable
    @TargetApi(19)
    /* renamed from: break, reason: not valid java name */
    private static String m11695break(Bitmap bitmap) {
        String str;
        if (bitmap == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            str = " (" + bitmap.getAllocationByteCount() + ")";
        } else {
            str = "";
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + str;
    }

    /* renamed from: catch, reason: not valid java name */
    private static synchronized BitmapFactory.Options m11696catch() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = f10104while;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            m11711switch(optionsPoll);
        }
        return optionsPoll;
    }

    /* renamed from: class, reason: not valid java name */
    private static int m11697class(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    /* renamed from: const, reason: not valid java name */
    private static int[] m11698const(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        options.inJustDecodeBounds = true;
        m11712this(imageReader, options, decodeCallbacks, bitmapPool);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    @TargetApi(26)
    /* renamed from: default, reason: not valid java name */
    private static void m11699default(BitmapFactory.Options options, BitmapPool bitmapPool, int i, int i2) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = bitmapPool.getDirty(i, i2, config);
    }

    /* renamed from: do, reason: not valid java name */
    private static int m11700do(double d) {
        int iM11697class = m11697class(d);
        double d2 = iM11697class;
        Double.isNaN(d2);
        int iM11713throws = m11713throws(d2 * d);
        double d3 = iM11713throws / iM11697class;
        Double.isNaN(d3);
        double d4 = iM11713throws;
        Double.isNaN(d4);
        return m11713throws((d / d3) * d4);
    }

    /* renamed from: extends, reason: not valid java name */
    private boolean m11701extends(ImageHeaderParser.ImageType imageType) {
        if (Build.VERSION.SDK_INT >= 19) {
            return true;
        }
        return f10103throw.contains(imageType);
    }

    /* renamed from: final, reason: not valid java name */
    private static String m11702final(BitmapFactory.Options options) {
        return m11695break(options.inBitmap);
    }

    /* renamed from: for, reason: not valid java name */
    private static void m11703for(ImageHeaderParser.ImageType imageType, ImageReader imageReader, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool, Ctry ctry, int i, int i2, int i3, int i4, int i5, BitmapFactory.Options options) throws IOException {
        int i6;
        int i7;
        int i8;
        int iFloor;
        double dFloor;
        int iRound;
        if (i2 <= 0 || i3 <= 0) {
            if (Log.isLoggable(f10094case, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to determine dimensions for: ");
                sb.append(imageType);
                sb.append(" with target [");
                sb.append(i4);
                sb.append("x");
                sb.append(i5);
                sb.append("]");
                return;
            }
            return;
        }
        if (m11706import(i)) {
            i7 = i2;
            i6 = i3;
        } else {
            i6 = i2;
            i7 = i3;
        }
        float fMo11778if = ctry.mo11778if(i6, i7, i4, i5);
        if (fMo11778if <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + fMo11778if + " from: " + ctry + ", source: [" + i2 + "x" + i3 + "], target: [" + i4 + "x" + i5 + "]");
        }
        Ctry.Celse celseMo11777do = ctry.mo11777do(i6, i7, i4, i5);
        if (celseMo11777do == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i6;
        float f2 = i7;
        int iM11713throws = i6 / m11713throws(fMo11778if * f);
        int iM11713throws2 = i7 / m11713throws(fMo11778if * f2);
        Ctry.Celse celse = Ctry.Celse.MEMORY;
        int iMax = celseMo11777do == celse ? Math.max(iM11713throws, iM11713throws2) : Math.min(iM11713throws, iM11713throws2);
        int i9 = Build.VERSION.SDK_INT;
        if (i9 > 23 || !f10099final.contains(options.outMimeType)) {
            int iMax2 = Math.max(1, Integer.highestOneBit(iMax));
            if (celseMo11777do == celse && iMax2 < 1.0f / fMo11778if) {
                iMax2 <<= 1;
            }
            i8 = iMax2;
        } else {
            i8 = 1;
        }
        options.inSampleSize = i8;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(i8, 8);
            iFloor = (int) Math.ceil(f / fMin);
            iRound = (int) Math.ceil(f2 / fMin);
            int i10 = i8 / 8;
            if (i10 > 0) {
                iFloor /= i10;
                iRound /= i10;
            }
        } else {
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f3 = i8;
                iFloor = (int) Math.floor(f / f3);
                dFloor = Math.floor(f2 / f3);
            } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                if (i9 >= 24) {
                    float f4 = i8;
                    iFloor = Math.round(f / f4);
                    iRound = Math.round(f2 / f4);
                } else {
                    float f5 = i8;
                    iFloor = (int) Math.floor(f / f5);
                    dFloor = Math.floor(f2 / f5);
                }
            } else if (i6 % i8 == 0 && i7 % i8 == 0) {
                iFloor = i6 / i8;
                iRound = i7 / i8;
            } else {
                int[] iArrM11698const = m11698const(imageReader, options, decodeCallbacks, bitmapPool);
                iFloor = iArrM11698const[0];
                iRound = iArrM11698const[1];
            }
            iRound = (int) dFloor;
        }
        double dMo11778if = ctry.mo11778if(iFloor, iRound, i4, i5);
        if (i9 >= 19) {
            options.inTargetDensity = m11700do(dMo11778if);
            options.inDensity = m11697class(dMo11778if);
        }
        if (m11707native(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(f10094case, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Calculate scaling, source: [");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(i3);
            sb2.append("], degreesToRotate: ");
            sb2.append(i);
            sb2.append(", target: [");
            sb2.append(i4);
            sb2.append("x");
            sb2.append(i5);
            sb2.append("], power of two scaled: [");
            sb2.append(iFloor);
            sb2.append("x");
            sb2.append(iRound);
            sb2.append("], exact scale factor: ");
            sb2.append(fMo11778if);
            sb2.append(", power of 2 sample size: ");
            sb2.append(i8);
            sb2.append(", adjusted scale factor: ");
            sb2.append(dMo11778if);
            sb2.append(", target density: ");
            sb2.append(options.inTargetDensity);
            sb2.append(", density: ");
            sb2.append(options.inDensity);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private Bitmap m11704goto(ImageReader imageReader, BitmapFactory.Options options, Ctry ctry, Cif cif, Cnew cnew, boolean z, int i, int i2, boolean z2, DecodeCallbacks decodeCallbacks) throws IOException {
        int i3;
        int i4;
        Downsampler downsampler;
        int iRound;
        int iRound2;
        int i5;
        ColorSpace colorSpace;
        long jM7613if = sv0.m7613if();
        int[] iArrM11698const = m11698const(imageReader, options, decodeCallbacks, this.f10105do);
        boolean z3 = false;
        int i6 = iArrM11698const[0];
        int i7 = iArrM11698const[1];
        String str = options.outMimeType;
        boolean z4 = (i6 == -1 || i7 == -1) ? false : z;
        int imageOrientation = imageReader.getImageOrientation();
        int iM11721break = TransformationUtils.m11721break(imageOrientation);
        boolean zM11725const = TransformationUtils.m11725const(imageOrientation);
        if (i == Integer.MIN_VALUE) {
            i3 = i2;
            i4 = m11706import(iM11721break) ? i7 : i6;
        } else {
            i3 = i2;
            i4 = i;
        }
        int i8 = i3 == Integer.MIN_VALUE ? m11706import(iM11721break) ? i6 : i7 : i3;
        ImageHeaderParser.ImageType imageType = imageReader.getImageType();
        m11703for(imageType, imageReader, decodeCallbacks, this.f10105do, ctry, iM11721break, i6, i7, i4, i8, options);
        m11705if(imageReader, cif, z4, zM11725const, options, i4, i8);
        int i9 = Build.VERSION.SDK_INT;
        boolean z5 = i9 >= 19;
        if (options.inSampleSize == 1 || z5) {
            downsampler = this;
            if (downsampler.m11701extends(imageType)) {
                if (i6 < 0 || i7 < 0 || !z2 || !z5) {
                    float f = m11707native(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                    int i10 = options.inSampleSize;
                    float f2 = i10;
                    float f3 = f;
                    int iCeil = (int) Math.ceil(i6 / f2);
                    int iCeil2 = (int) Math.ceil(i7 / f2);
                    iRound = Math.round(iCeil * f3);
                    iRound2 = Math.round(iCeil2 * f3);
                    if (Log.isLoggable(f10094case, 2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Calculated target [");
                        sb.append(iRound);
                        sb.append("x");
                        sb.append(iRound2);
                        sb.append("] for source [");
                        sb.append(i6);
                        sb.append("x");
                        sb.append(i7);
                        sb.append("], sampleSize: ");
                        sb.append(i10);
                        sb.append(", targetDensity: ");
                        sb.append(options.inTargetDensity);
                        sb.append(", density: ");
                        sb.append(options.inDensity);
                        sb.append(", density multiplier: ");
                        sb.append(f3);
                    }
                } else {
                    iRound = i4;
                    iRound2 = i8;
                }
                if (iRound > 0 && iRound2 > 0) {
                    m11699default(options, downsampler.f10105do, iRound, iRound2);
                }
            }
        } else {
            downsampler = this;
        }
        if (i9 >= 28) {
            if (cnew == Cnew.DISPLAY_P3 && (colorSpace = options.outColorSpace) != null && colorSpace.isWideGamut()) {
                z3 = true;
            }
            options.inPreferredColorSpace = ColorSpace.get(z3 ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        } else if (i9 >= 26) {
            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Bitmap bitmapM11712this = m11712this(imageReader, options, decodeCallbacks, downsampler.f10105do);
        decodeCallbacks.onDecodeComplete(downsampler.f10105do, bitmapM11712this);
        if (Log.isLoggable(f10094case, 2)) {
            i5 = imageOrientation;
            m11708public(i6, i7, str, options, bitmapM11712this, i, i2, jM7613if);
        } else {
            i5 = imageOrientation;
        }
        Bitmap bitmapM11736super = null;
        if (bitmapM11712this != null) {
            bitmapM11712this.setDensity(downsampler.f10107if.densityDpi);
            bitmapM11736super = TransformationUtils.m11736super(downsampler.f10105do, bitmapM11712this, i5);
            if (!bitmapM11712this.equals(bitmapM11736super)) {
                downsampler.f10105do.put(bitmapM11712this);
            }
        }
        return bitmapM11736super;
    }

    /* renamed from: if, reason: not valid java name */
    private void m11705if(ImageReader imageReader, Cif cif, boolean z, boolean z2, BitmapFactory.Options options, int i, int i2) {
        if (this.f10109try.m9877try(i, i2, options, z, z2)) {
            return;
        }
        if (cif == Cif.PREFER_ARGB_8888 || Build.VERSION.SDK_INT == 16) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        boolean zHasAlpha = false;
        try {
            zHasAlpha = imageReader.getImageType().hasAlpha();
        } catch (IOException unused) {
            if (Log.isLoggable(f10094case, 3)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Cannot determine whether the image has alpha or not from header, format ");
                sb.append(cif);
            }
        }
        Bitmap.Config config = zHasAlpha ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    /* renamed from: import, reason: not valid java name */
    private static boolean m11706import(int i) {
        return i == 90 || i == 270;
    }

    /* renamed from: native, reason: not valid java name */
    private static boolean m11707native(BitmapFactory.Options options) {
        int i;
        int i2 = options.inTargetDensity;
        return i2 > 0 && (i = options.inDensity) > 0 && i2 != i;
    }

    /* renamed from: public, reason: not valid java name */
    private static void m11708public(int i, int i2, String str, BitmapFactory.Options options, Bitmap bitmap, int i3, int i4, long j) {
        StringBuilder sb = new StringBuilder();
        sb.append("Decoded ");
        sb.append(m11695break(bitmap));
        sb.append(" from [");
        sb.append(i);
        sb.append("x");
        sb.append(i2);
        sb.append("] ");
        sb.append(str);
        sb.append(" with inBitmap ");
        sb.append(m11702final(options));
        sb.append(" for [");
        sb.append(i3);
        sb.append("x");
        sb.append(i4);
        sb.append("], sample size: ");
        sb.append(options.inSampleSize);
        sb.append(", density: ");
        sb.append(options.inDensity);
        sb.append(", target density: ");
        sb.append(options.inTargetDensity);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        sb.append(", duration: ");
        sb.append(sv0.m7612do(j));
    }

    /* renamed from: return, reason: not valid java name */
    private static IOException m11709return(IllegalArgumentException illegalArgumentException, int i, int i2, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i + ", outHeight: " + i2 + ", outMimeType: " + str + ", inBitmap: " + m11702final(options), illegalArgumentException);
    }

    /* renamed from: static, reason: not valid java name */
    private static void m11710static(BitmapFactory.Options options) {
        m11711switch(options);
        Queue<BitmapFactory.Options> queue = f10104while;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private static void m11711switch(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:?, code lost:
    
        throw r0;
     */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap m11712this(ImageReader imageReader, BitmapFactory.Options options, DecodeCallbacks decodeCallbacks, BitmapPool bitmapPool) throws IOException {
        if (!options.inJustDecodeBounds) {
            decodeCallbacks.onObtainBounds();
            imageReader.stopGrowingBuffers();
        }
        int i = options.outWidth;
        int i2 = options.outHeight;
        String str = options.outMimeType;
        TransformationUtils.m11737this().lock();
        try {
            try {
                Bitmap bitmapDecodeBitmap = imageReader.decodeBitmap(options);
                TransformationUtils.m11737this().unlock();
                return bitmapDecodeBitmap;
            } catch (IllegalArgumentException e) {
                IOException iOExceptionM11709return = m11709return(e, i, i2, str, options);
                Log.isLoggable(f10094case, 3);
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw iOExceptionM11709return;
                }
                try {
                    bitmapPool.put(bitmap);
                    options.inBitmap = null;
                    Bitmap bitmapM11712this = m11712this(imageReader, options, decodeCallbacks, bitmapPool);
                    TransformationUtils.m11737this().unlock();
                    return bitmapM11712this;
                } catch (IOException unused) {
                    throw iOExceptionM11709return;
                }
            }
        } catch (Throwable th) {
            TransformationUtils.m11737this().unlock();
            throw th;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    private static int m11713throws(double d) {
        return (int) (d + 0.5d);
    }

    /* renamed from: try, reason: not valid java name */
    private Resource<Bitmap> m11714try(ImageReader imageReader, int i, int i2, f81 f81Var, DecodeCallbacks decodeCallbacks) throws IOException {
        byte[] bArr = (byte[]) this.f10106for.get(65536, byte[].class);
        BitmapFactory.Options optionsM11696catch = m11696catch();
        optionsM11696catch.inTempStorage = bArr;
        Cif cif = (Cif) f81Var.m2196do(f10098else);
        Cnew cnew = (Cnew) f81Var.m2196do(f10100goto);
        Ctry ctry = (Ctry) f81Var.m2196do(Ctry.f10171goto);
        boolean zBooleanValue = ((Boolean) f81Var.m2196do(f10093break)).booleanValue();
        Option<Boolean> option = f10095catch;
        try {
            return n9.m5129if(m11704goto(imageReader, optionsM11696catch, ctry, cif, cnew, f81Var.m2196do(option) != null && ((Boolean) f81Var.m2196do(option)).booleanValue(), i, i2, zBooleanValue, decodeCallbacks), this.f10105do);
        } finally {
            m11710static(optionsM11696catch);
            this.f10106for.put(bArr);
        }
    }

    /* renamed from: case, reason: not valid java name */
    public Resource<Bitmap> m11715case(InputStream inputStream, int i, int i2, f81 f81Var) throws IOException {
        return m11716else(inputStream, i, i2, f81Var, f10101super);
    }

    /* renamed from: else, reason: not valid java name */
    public Resource<Bitmap> m11716else(InputStream inputStream, int i, int i2, f81 f81Var, DecodeCallbacks decodeCallbacks) throws IOException {
        return m11714try(new ImageReader.Cdo(inputStream, this.f10108new, this.f10106for), i, i2, f81Var, decodeCallbacks);
    }

    @RequiresApi(21)
    /* renamed from: new, reason: not valid java name */
    public Resource<Bitmap> m11717new(ParcelFileDescriptor parcelFileDescriptor, int i, int i2, f81 f81Var) throws IOException {
        return m11714try(new ImageReader.Cif(parcelFileDescriptor, this.f10108new, this.f10106for), i, i2, f81Var, f10101super);
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m11718super(ParcelFileDescriptor parcelFileDescriptor) {
        return Cbreak.m11271do();
    }

    /* renamed from: throw, reason: not valid java name */
    public boolean m11719throw(InputStream inputStream) {
        return true;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m11720while(ByteBuffer byteBuffer) {
        return true;
    }
}
