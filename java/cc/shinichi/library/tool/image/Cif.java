package cc.shinichi.library.tool.image;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Environment;
import android.support.v4.if1;
import android.support.v4.jd1;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.brotli.dec.Celse;

/* renamed from: cc.shinichi.library.tool.image.if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif {

    /* renamed from: do, reason: not valid java name */
    private static final String f8759do = "ImageUtil";

    /* renamed from: break, reason: not valid java name */
    public static float m10477break(Context context, String str) {
        return jd1.m3843new(context.getApplicationContext()) / m10480class(str)[0];
    }

    /* renamed from: case, reason: not valid java name */
    public static float m10478case(Context context, String str) {
        return m10483else(context, str) * 2.0f;
    }

    /* renamed from: catch, reason: not valid java name */
    public static float m10479catch(Context context, String str) {
        return jd1.m3842if(context.getApplicationContext()) / m10480class(str)[1];
    }

    /* renamed from: class, reason: not valid java name */
    public static int[] m10480class(String str) {
        Bitmap bitmapDecodeFile;
        if (str.isEmpty()) {
            return new int[]{0, 0};
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            BitmapFactory.decodeFile(str, options);
        } catch (Exception e) {
            e.printStackTrace();
        }
        int attributeInt = options.outWidth;
        int attributeInt2 = options.outHeight;
        if (attributeInt2 == -1 || attributeInt == -1) {
            try {
                ExifInterface exifInterface = new ExifInterface(str);
                attributeInt2 = exifInterface.getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_LENGTH, 1);
                attributeInt = exifInterface.getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_IMAGE_WIDTH, 1);
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        if ((attributeInt <= 0 || attributeInt2 <= 0) && (bitmapDecodeFile = BitmapFactory.decodeFile(str)) != null) {
            attributeInt = bitmapDecodeFile.getWidth();
            attributeInt2 = bitmapDecodeFile.getHeight();
            try {
                if (!bitmapDecodeFile.isRecycled()) {
                    bitmapDecodeFile.recycle();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
        int iM10486goto = m10486goto(str);
        return (iM10486goto == 90 || iM10486goto == 270) ? new int[]{attributeInt2, attributeInt} : new int[]{attributeInt, attributeInt2};
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m10481const(String str) {
        return "bmp".equalsIgnoreCase(m10497try(str));
    }

    /* renamed from: do, reason: not valid java name */
    public static int m10482do(String str) {
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

    /* renamed from: else, reason: not valid java name */
    public static float m10483else(Context context, String str) {
        return jd1.m3843new(context.getApplicationContext()) / m10480class(str)[0];
    }

    /* renamed from: final, reason: not valid java name */
    public static boolean m10484final(String str) {
        return "gif".equalsIgnoreCase(m10497try(str));
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap m10485for(String str, float f, float f2) {
        float f3;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        int i = options.outWidth;
        int i2 = options.outHeight;
        if (i > i2) {
            float f4 = i;
            f3 = f4 > f ? f4 / f : (i >= i2 || ((float) i2) <= f2) ? 1.0f : i2 / f2;
        }
        options.inSampleSize = (int) (f3 > 0.0f ? f3 : 1.0f);
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        if (bitmapDecodeFile != null && !bitmapDecodeFile.isRecycled()) {
            bitmapDecodeFile.recycle();
        }
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        } catch (Exception unused) {
            Runtime.getRuntime().gc();
        } catch (OutOfMemoryError unused2) {
            if (bitmapDecodeFile != null && !bitmapDecodeFile.isRecycled()) {
                bitmapDecodeFile.recycle();
            }
            Runtime.getRuntime().gc();
        }
        return bitmapDecodeFile != null ? m10491public(bitmapDecodeFile, m10482do(str)) : bitmapDecodeFile;
    }

    /* renamed from: goto, reason: not valid java name */
    public static int m10486goto(String str) {
        try {
            int attributeInt = new ExifInterface(str).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
            if (attributeInt == 3) {
                return 180;
            }
            if (attributeInt != 6) {
                return attributeInt != 8 ? 0 : 270;
            }
            return 90;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static Bitmap m10487if(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        boolean z = true;
        options.inJustDecodeBounds = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = (int) 1.0f;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        if (bitmapDecodeFile != null && !bitmapDecodeFile.isRecycled()) {
            bitmapDecodeFile.recycle();
        }
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            z = false;
        } catch (Exception unused) {
            Runtime.getRuntime().gc();
        } catch (OutOfMemoryError unused2) {
            if (bitmapDecodeFile != null && !bitmapDecodeFile.isRecycled()) {
                bitmapDecodeFile.recycle();
            }
            Runtime.getRuntime().gc();
        }
        if (z) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            } catch (Exception unused3) {
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            }
        }
        if (bitmapDecodeFile != null) {
            return bitmapDecodeFile.getWidth() >= 1080 ? m10493static(bitmapDecodeFile, Celse.f32867do, (bitmapDecodeFile.getHeight() * Celse.f32867do) / bitmapDecodeFile.getWidth()) : bitmapDecodeFile;
        }
        return bitmapDecodeFile;
    }

    /* renamed from: import, reason: not valid java name */
    public static boolean m10488import(Context context, String str) {
        int[] iArrM10480class = m10480class(str);
        boolean z = false;
        float f = iArrM10480class[0];
        float f2 = iArrM10480class[1];
        float f3 = f / f2;
        if (f > 0.0f && f2 > 0.0f && f > f2 && f3 >= 2.0f) {
            z = true;
        }
        if1.m3413do(f8759do, "isWideImage = " + z);
        return z;
    }

    /* renamed from: native, reason: not valid java name */
    public static Bitmap m10489native(Bitmap bitmap, int i, int i2) {
        if (bitmap == null) {
            return null;
        }
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, false);
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    /* renamed from: new, reason: not valid java name */
    public static Bitmap m10490new(String str, int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        boolean z = true;
        options.inJustDecodeBounds = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
        options.inJustDecodeBounds = false;
        options.inSampleSize = (int) 1.0f;
        options.inPreferredConfig = Bitmap.Config.RGB_565;
        options.inDither = false;
        options.inPurgeable = true;
        options.inInputShareable = true;
        if (bitmapDecodeFile != null && !bitmapDecodeFile.isRecycled()) {
            bitmapDecodeFile.recycle();
        }
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            z = false;
        } catch (Exception unused) {
            Runtime.getRuntime().gc();
        } catch (OutOfMemoryError unused2) {
            if (bitmapDecodeFile != null && !bitmapDecodeFile.isRecycled()) {
                bitmapDecodeFile.recycle();
            }
            Runtime.getRuntime().gc();
        }
        if (z) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            } catch (Exception unused3) {
                options.inPreferredConfig = Bitmap.Config.RGB_565;
                bitmapDecodeFile = BitmapFactory.decodeFile(str, options);
            }
        }
        if (bitmapDecodeFile == null) {
            return bitmapDecodeFile;
        }
        if (i == 90) {
            i += 180;
        }
        Bitmap bitmapM10491public = m10491public(bitmapDecodeFile, i);
        return bitmapM10491public.getWidth() >= 1080 ? m10493static(bitmapM10491public, Celse.f32867do, (bitmapM10491public.getHeight() * Celse.f32867do) / bitmapM10491public.getWidth()) : bitmapM10491public;
    }

    /* renamed from: public, reason: not valid java name */
    public static Bitmap m10491public(Bitmap bitmap, int i) {
        Bitmap bitmapCreateBitmap;
        Matrix matrix = new Matrix();
        matrix.postRotate(i);
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            bitmapCreateBitmap = null;
        }
        if (bitmapCreateBitmap == null) {
            bitmapCreateBitmap = bitmap;
        }
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    /* renamed from: return, reason: not valid java name */
    public static String m10492return(Bitmap bitmap) throws IOException {
        String str = Environment.getExternalStorageDirectory() + "/ShareLongPicture/.temp/";
        File file = new File(str);
        if (!file.exists()) {
            try {
                file.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        File file2 = new File(str + ("temp_LongPictureShare_" + System.currentTimeMillis() + ".jpeg"));
        if (!file2.exists()) {
            file2.createNewFile();
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
        bitmap.compress(Bitmap.CompressFormat.JPEG, 100, bufferedOutputStream);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
        return file2.getAbsolutePath();
    }

    /* renamed from: static, reason: not valid java name */
    private static Bitmap m10493static(Bitmap bitmap, int i, int i2) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.postScale(i / width, i2 / height);
        return Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m10494super(String str) {
        return str.toLowerCase().endsWith("gif");
    }

    /* renamed from: this, reason: not valid java name */
    public static float m10495this(Context context, String str) {
        return m10477break(context, str) * 2.0f;
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m10496throw(Context context, String str) {
        int[] iArrM10480class = m10480class(str);
        boolean z = false;
        float f = iArrM10480class[0];
        float f2 = iArrM10480class[1];
        float f3 = f2 / f;
        float fM3841for = jd1.m3841for(context.getApplicationContext()) + 0.1f;
        if (f > 0.0f && f2 > 0.0f && f2 > f && f3 >= fM3841for) {
            z = true;
        }
        if1.m3413do(f8759do, "isLongImage = " + z);
        return z;
    }

    /* renamed from: try, reason: not valid java name */
    public static String m10497try(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        String str2 = options.outMimeType;
        return TextUtils.isEmpty(str2) ? "" : str2.substring(6);
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m10498while(Context context, String str) {
        boolean z = m10480class(str)[0] < jd1.m3843new(context.getApplicationContext());
        if1.m3413do(f8759do, "isSmallImage = " + z);
        return z;
    }
}
