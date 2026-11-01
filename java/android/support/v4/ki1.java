package android.support.v4;

import android.graphics.Bitmap;
import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.exifinterface.media.ExifInterface;
import com.google.zxing.Cdo;
import com.google.zxing.Ctry;
import com.google.zxing.qrcode.Cif;
import java.util.Hashtable;

/* loaded from: classes2.dex */
public class ki1 {
    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static Bitmap m4411do(String str, int i, int i2) {
        return m4412if(str, i, i2, "UTF-8", "H", ExifInterface.GPS_MEASUREMENT_2D, -16777216, -1);
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public static Bitmap m4412if(String str, int i, int i2, @Nullable String str2, @Nullable String str3, @Nullable String str4, @ColorInt int i3, @ColorInt int i4) throws NumberFormatException {
        if (!TextUtils.isEmpty(str) && i >= 0 && i2 >= 0) {
            try {
                Hashtable hashtable = new Hashtable();
                if (!TextUtils.isEmpty(str2)) {
                    hashtable.put(Ctry.CHARACTER_SET, str2);
                }
                if (!TextUtils.isEmpty(str3)) {
                    hashtable.put(Ctry.ERROR_CORRECTION, str3);
                }
                if (!TextUtils.isEmpty(str4)) {
                    hashtable.put(Ctry.MARGIN, str4);
                }
                z8 z8VarEncode = new Cif().encode(str, Cdo.QR_CODE, i, i2, hashtable);
                int[] iArr = new int[i * i2];
                for (int i5 = 0; i5 < i2; i5++) {
                    for (int i6 = 0; i6 < i; i6++) {
                        if (z8VarEncode.m10105try(i6, i5)) {
                            iArr[(i5 * i) + i6] = i3;
                        } else {
                            iArr[(i5 * i) + i6] = i4;
                        }
                    }
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                bitmapCreateBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
                return bitmapCreateBitmap;
            } catch (ig2 e) {
                e.printStackTrace();
            }
        }
        return null;
    }
}
