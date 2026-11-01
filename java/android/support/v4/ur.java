package android.support.v4;

import android.R;
import android.annotation.TargetApi;
import android.content.ContentUris;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import com.google.common.collect.LinkedHashMultimap;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.text.DecimalFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import net.lingala.zip4j.crypto.PBKDF2.Cdo;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
public class ur {

    /* renamed from: do, reason: not valid java name */
    public static final long f6966do = 1073741824;

    /* renamed from: for, reason: not valid java name */
    public static final long f6967for = 1024;

    /* renamed from: if, reason: not valid java name */
    public static final long f6968if = 1048576;

    public static String a(Object[] objArr) {
        return Arrays.deepToString(objArr);
    }

    /* renamed from: abstract, reason: not valid java name */
    public static int m8594abstract(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i += (bArr[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public static String b(Object[] objArr, String str) {
        StringBuilder sb = new StringBuilder();
        for (Object obj : objArr) {
            sb.append(obj);
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: break, reason: not valid java name */
    public static byte[] m8595break(Bitmap bitmap) throws IOException {
        if (bitmap == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException e) {
            uv0.m8672extends(e);
        }
        return byteArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0068 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0069  */
    /* renamed from: case, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap m8596case(View view) {
        int height;
        int drawingCacheBackgroundColor;
        Bitmap drawingCache;
        int width = view.getWidth();
        int height2 = view.getHeight();
        if (!(view instanceof ListView)) {
            if (view instanceof ScrollView) {
                ScrollView scrollView = (ScrollView) view;
                height = 0;
                for (int i = 0; i < scrollView.getChildCount(); i++) {
                    height += scrollView.getChildAt(i).getHeight();
                }
            }
            view.setDrawingCacheEnabled(true);
            view.clearFocus();
            view.setPressed(false);
            boolean zWillNotCacheDrawing = view.willNotCacheDrawing();
            view.setWillNotCacheDrawing(false);
            drawingCacheBackgroundColor = view.getDrawingCacheBackgroundColor();
            view.setDrawingCacheBackgroundColor(-1);
            if (drawingCacheBackgroundColor != -1) {
                view.destroyDrawingCache();
            }
            view.buildDrawingCache();
            drawingCache = view.getDrawingCache();
            if (drawingCache != null) {
                return null;
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height2, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawBitmap(drawingCache, 0.0f, 0.0f, (Paint) null);
            canvas.save();
            canvas.restore();
            if (!bitmapCreateBitmap.isRecycled()) {
                uv0.m8680public("recycle bitmap: " + bitmapCreateBitmap.toString());
                bitmapCreateBitmap.recycle();
            }
            view.destroyDrawingCache();
            view.setWillNotCacheDrawing(zWillNotCacheDrawing);
            view.setDrawingCacheBackgroundColor(drawingCacheBackgroundColor);
            return bitmapCreateBitmap;
        }
        ListView listView = (ListView) view;
        height = 0;
        for (int i2 = 0; i2 < listView.getChildCount(); i2++) {
            height += listView.getChildAt(i2).getHeight();
        }
        height2 = height;
        view.setDrawingCacheEnabled(true);
        view.clearFocus();
        view.setPressed(false);
        boolean zWillNotCacheDrawing2 = view.willNotCacheDrawing();
        view.setWillNotCacheDrawing(false);
        drawingCacheBackgroundColor = view.getDrawingCacheBackgroundColor();
        view.setDrawingCacheBackgroundColor(-1);
        if (drawingCacheBackgroundColor != -1) {
        }
        view.buildDrawingCache();
        drawingCache = view.getDrawingCache();
        if (drawingCache != null) {
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static byte[] m8597catch(Drawable drawable) {
        return m8595break(m8630try(drawable));
    }

    /* renamed from: class, reason: not valid java name */
    public static byte[] m8598class(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[100];
            while (true) {
                int i = inputStream.read(bArr, 0, 100);
                if (i == -1) {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    inputStream.close();
                    return byteArray;
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (IOException e) {
            uv0.m8672extends(e);
            return null;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static byte[] m8599const(String str, boolean z) throws IOException {
        if (str == null || str.equals("")) {
            return null;
        }
        if (!z) {
            return str.getBytes();
        }
        String strReplaceAll = str.replaceAll("\\s+", "");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(strReplaceAll.length() / 2);
        for (int i = 0; i < strReplaceAll.length(); i += 2) {
            byteArrayOutputStream.write((Cdo.f28079do.indexOf(strReplaceAll.charAt(i)) << 4) | Cdo.f28079do.indexOf(strReplaceAll.charAt(i + 1)));
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (IOException e) {
            uv0.m8672extends(e);
        }
        return byteArray;
    }

    /* renamed from: continue, reason: not valid java name */
    public static <T> List<T> m8600continue(T[] tArr) {
        return Arrays.asList(tArr);
    }

    /* renamed from: default, reason: not valid java name */
    public static String m8601default(String str) {
        try {
            return new String(str.getBytes("utf-8"), "gbk");
        } catch (UnsupportedEncodingException e) {
            uv0.m8672extends(e);
            return str;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private static String m8602do(Context context, Uri uri, String str, String[] strArr) throws IllegalArgumentException {
        String string = null;
        try {
            Cursor cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery == null) {
                return null;
            }
            int columnIndexOrThrow = cursorQuery.getColumnIndexOrThrow("_data");
            cursorQuery.moveToFirst();
            string = cursorQuery.getString(columnIndexOrThrow);
            cursorQuery.close();
            return string;
        } catch (IllegalArgumentException e) {
            uv0.m8664break(e);
            return string;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Bitmap m8603else(byte[] bArr) {
        return m8608goto(bArr, -1, -1);
    }

    /* renamed from: extends, reason: not valid java name */
    public static String m8604extends(int i) {
        String hexString = Integer.toHexString(i);
        uv0.m8680public(String.format(Locale.CHINA, "%d to hex string is %s", Integer.valueOf(i), hexString));
        return hexString;
    }

    /* renamed from: final, reason: not valid java name */
    public static ColorStateList m8605final(@ColorInt int i, @ColorInt int i2) {
        return m8623super(i, i2, i2, i);
    }

    /* renamed from: finally, reason: not valid java name */
    public static String m8606finally(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : str.getBytes()) {
            sb.append(Integer.toHexString(b & 255));
            sb.append(Cclass.f28652do);
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    public static String m8607for(int i) {
        String binaryString = Integer.toBinaryString(i);
        uv0.m8680public(String.format(Locale.CHINA, "%d to binary string is %s", Integer.valueOf(i), binaryString));
        return binaryString;
    }

    /* renamed from: goto, reason: not valid java name */
    public static Bitmap m8608goto(byte[] bArr, int i, int i2) {
        Bitmap bitmapDecodeByteArray = null;
        if (bArr.length == 0) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inDither = false;
            options.inPreferredConfig = null;
            if (i > 0 && i2 > 0) {
                options.outWidth = i;
                options.outHeight = i2;
            }
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            bitmapDecodeByteArray.setDensity(96);
            return bitmapDecodeByteArray;
        } catch (Exception e) {
            uv0.m8664break(e);
            return bitmapDecodeByteArray;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static <T> T[] m8609if(List<T> list) {
        return (T[]) list.toArray();
    }

    /* renamed from: implements, reason: not valid java name */
    public static int m8610implements(Context context, float f) {
        int i = (int) ((f / context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
        uv0.m8680public(f + " px == " + i + " sp");
        return i;
    }

    /* renamed from: import, reason: not valid java name */
    public static int m8611import(@ColorInt int i) {
        return m8614native(i, 0.8f);
    }

    /* renamed from: instanceof, reason: not valid java name */
    public static String m8612instanceof(InputStream inputStream) {
        return m8625synchronized(inputStream, "utf-8");
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m8613interface(Context context, float f) {
        int i = (int) ((context.getResources().getDisplayMetrics().density * f) + 0.5f);
        uv0.m8680public(f + " dp == " + i + " px");
        return i;
    }

    /* renamed from: native, reason: not valid java name */
    public static int m8614native(@ColorInt int i, @FloatRange(from = 0.0d, to = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR) float f) {
        float[] fArr = new float[3];
        Color.colorToHSV(i, fArr);
        fArr[2] = fArr[2] * f;
        return Color.HSVToColor(fArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static String m8615new(byte... bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 8];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = bArr[i2] < 0 ? bArr[i2] + 256 : bArr[i2];
            int i4 = i + 1;
            cArr2[i] = cArr[(i3 >>> 7) & 1];
            int i5 = i4 + 1;
            cArr2[i4] = cArr[(i3 >>> 6) & 1];
            int i6 = i5 + 1;
            cArr2[i5] = cArr[(i3 >>> 5) & 1];
            int i7 = i6 + 1;
            cArr2[i6] = cArr[(i3 >>> 4) & 1];
            int i8 = i7 + 1;
            cArr2[i7] = cArr[(i3 >>> 3) & 1];
            int i9 = i8 + 1;
            cArr2[i8] = cArr[(i3 >>> 2) & 1];
            int i10 = i9 + 1;
            cArr2[i9] = cArr[(i3 >>> 1) & 1];
            i = i10 + 1;
            cArr2[i10] = cArr[i3 & 1];
        }
        return new String(cArr2);
    }

    /* renamed from: package, reason: not valid java name */
    public static String m8616package(byte... bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[bArr.length * 2];
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = bArr[i2] < 0 ? bArr[i2] + 256 : bArr[i2];
            int i4 = i + 1;
            cArr2[i] = cArr[i3 >>> 4];
            i = i4 + 1;
            cArr2[i4] = cArr[i3 & 15];
        }
        return new String(cArr2);
    }

    /* renamed from: private, reason: not valid java name */
    public static int m8617private(Object obj) {
        try {
            return Integer.parseInt(obj.toString());
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m8618protected(byte b, byte b2) {
        return (b << 8) + (b2 & 255);
    }

    /* renamed from: public, reason: not valid java name */
    public static int m8619public(Context context, float f) {
        int i = (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
        uv0.m8680public(f + " px == " + i + " dp");
        return i;
    }

    /* renamed from: return, reason: not valid java name */
    public static Drawable m8620return(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapDrawable(Resources.getSystem(), bitmap);
    }

    /* renamed from: static, reason: not valid java name */
    public static Drawable m8621static(byte[] bArr) {
        return m8620return(m8603else(bArr));
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static long m8622strictfp(Object obj) {
        try {
            return Long.parseLong(obj.toString());
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    /* renamed from: super, reason: not valid java name */
    public static ColorStateList m8623super(@ColorInt int i, @ColorInt int i2, @ColorInt int i3, @ColorInt int i4) {
        return new ColorStateList(new int[][]{new int[]{R.attr.state_pressed, R.attr.state_enabled}, new int[]{R.attr.state_enabled, R.attr.state_focused}, new int[]{R.attr.state_enabled}, new int[]{R.attr.state_focused}, new int[]{R.attr.state_window_focused}, new int[0]}, new int[]{i2, i3, i, i3, i4, i});
    }

    /* renamed from: switch, reason: not valid java name */
    public static String m8624switch(long j) {
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        if (j < 1024) {
            return j + "B";
        }
        if (j < 1048576) {
            StringBuilder sb = new StringBuilder();
            double d = j;
            Double.isNaN(d);
            sb.append(decimalFormat.format(d / 1024.0d));
            sb.append("K");
            return sb.toString();
        }
        if (j < f6966do) {
            StringBuilder sb2 = new StringBuilder();
            double d2 = j;
            Double.isNaN(d2);
            sb2.append(decimalFormat.format(d2 / 1048576.0d));
            sb2.append("M");
            return sb2.toString();
        }
        StringBuilder sb3 = new StringBuilder();
        double d3 = j;
        Double.isNaN(d3);
        sb3.append(decimalFormat.format(d3 / 1.073741824E9d));
        sb3.append("G");
        return sb3.toString();
    }

    /* renamed from: synchronized, reason: not valid java name */
    public static String m8625synchronized(InputStream inputStream, String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, str));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
            }
            bufferedReader.close();
            inputStream.close();
        } catch (IOException e) {
            uv0.m8664break(e);
        }
        return sb.toString();
    }

    /* renamed from: this, reason: not valid java name */
    public static byte[] m8626this(int i) {
        return ByteBuffer.allocate(4).putInt(i).array();
    }

    /* renamed from: throw, reason: not valid java name */
    public static String m8627throw(@ColorInt int i) {
        return m8632while(i, false);
    }

    /* renamed from: throws, reason: not valid java name */
    public static float m8628throws(Object obj) {
        try {
            return Float.parseFloat(obj.toString());
        } catch (NumberFormatException unused) {
            return -1.0f;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static String m8629transient(String str) {
        String str2 = "";
        for (char c : str.toCharArray()) {
            if (c == '\"' || c == '\'' || c == '\\') {
                str2 = str2 + "\\";
            }
            str2 = str2 + c;
        }
        return str2;
    }

    /* renamed from: try, reason: not valid java name */
    public static Bitmap m8630try(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        if (drawable instanceof ColorDrawable) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(32, 32, Bitmap.Config.ARGB_8888);
            new Canvas(bitmapCreateBitmap).drawColor(((ColorDrawable) drawable).getColor());
            return bitmapCreateBitmap;
        }
        if (!(drawable instanceof NinePatchDrawable)) {
            return null;
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap2);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap2;
    }

    @TargetApi(19)
    /* renamed from: volatile, reason: not valid java name */
    public static String m8631volatile(Context context, Uri uri) {
        String documentId;
        String[] strArrSplit;
        String str;
        if (uri == null) {
            uv0.m8680public("uri is null");
            return "";
        }
        uv0.m8680public("uri: " + uri.toString());
        String path = uri.getPath();
        String scheme = uri.getScheme();
        String authority = uri.getAuthority();
        Uri uri2 = null;
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            documentId = DocumentsContract.getDocumentId(uri);
            strArrSplit = documentId.split(":");
            str = strArrSplit[0];
            authority.hashCode();
            switch (authority) {
                case "com.android.providers.downloads.documents":
                    return m8602do(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.valueOf(documentId).longValue()), null, null);
                case "com.android.externalstorage.documents":
                    if ("primary".equalsIgnoreCase(str)) {
                        return Environment.getExternalStorageDirectory() + on0.f4694final + strArrSplit[1];
                    }
                    break;
                case "com.android.providers.media.documents":
                    if (od1.f4554const.equals(str)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if (od1.f4559final.equals(str)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return m8602do(context, uri2, "_id=?", new String[]{strArrSplit[1]});
            }
        } else {
            if ("content".equalsIgnoreCase(scheme)) {
                return authority.equals("com.google.android.apps.photos.content") ? uri.getLastPathSegment() : m8602do(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(scheme)) {
                return uri.getPath();
            }
        }
        uv0.m8680public("uri to path: " + path);
        return path;
    }

    /* renamed from: while, reason: not valid java name */
    public static String m8632while(@ColorInt int i, boolean z) {
        String hexString = Integer.toHexString(Color.alpha(i));
        String hexString2 = Integer.toHexString(Color.red(i));
        String hexString3 = Integer.toHexString(Color.green(i));
        String hexString4 = Integer.toHexString(Color.blue(i));
        if (hexString.length() == 1) {
            hexString = "0" + hexString;
        }
        if (hexString2.length() == 1) {
            hexString2 = "0" + hexString2;
        }
        if (hexString3.length() == 1) {
            hexString3 = "0" + hexString3;
        }
        if (hexString4.length() == 1) {
            hexString4 = "0" + hexString4;
        }
        if (!z) {
            String str = hexString2 + hexString3 + hexString4;
            uv0.m8680public(String.format(Locale.CHINA, "%d to color string is %s%s%s%s, exclude alpha is %s", Integer.valueOf(i), hexString, hexString2, hexString3, hexString4, str));
            return str;
        }
        String str2 = hexString + hexString2 + hexString3 + hexString4;
        uv0.m8680public(String.format(Locale.CHINA, "%d to color string is %s", Integer.valueOf(i), str2));
        return str2;
    }
}
