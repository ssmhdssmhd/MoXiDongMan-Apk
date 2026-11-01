package com.luck.picture.lib.widget.longimage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import java.io.InputStream;
import java.util.List;

/* renamed from: com.luck.picture.lib.widget.longimage.for, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cfor implements ImageRegionDecoder {

    /* renamed from: for, reason: not valid java name */
    private static final String f18998for = "file://";

    /* renamed from: new, reason: not valid java name */
    private static final String f18999new = "file:///android_asset/";

    /* renamed from: try, reason: not valid java name */
    private static final String f19000try = "android.resource://";

    /* renamed from: do, reason: not valid java name */
    private BitmapRegionDecoder f19001do;

    /* renamed from: if, reason: not valid java name */
    private final Object f19002if = new Object();

    @Override // com.luck.picture.lib.widget.longimage.ImageRegionDecoder
    public Bitmap decodeRegion(Rect rect, int i) {
        Bitmap bitmapDecodeRegion;
        synchronized (this.f19002if) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inSampleSize = i;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            bitmapDecodeRegion = this.f19001do.decodeRegion(rect, options);
            if (bitmapDecodeRegion == null) {
                throw new RuntimeException("Skia image decoder returned null bitmap - image format may not be supported");
            }
        }
        return bitmapDecodeRegion;
    }

    @Override // com.luck.picture.lib.widget.longimage.ImageRegionDecoder
    public Point init(Context context, Uri uri) throws Exception {
        int identifier;
        String string = uri.toString();
        if (string.startsWith(f19000try)) {
            String authority = uri.getAuthority();
            Resources resources = context.getPackageName().equals(authority) ? context.getResources() : context.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            int size = pathSegments.size();
            if (size == 2 && pathSegments.get(0).equals("drawable")) {
                identifier = resources.getIdentifier(pathSegments.get(1), "drawable", authority);
            } else if (size == 1 && TextUtils.isDigitsOnly(pathSegments.get(0))) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                }
            } else {
                identifier = 0;
            }
            this.f19001do = BitmapRegionDecoder.newInstance(context.getResources().openRawResource(identifier), false);
        } else if (string.startsWith("file:///android_asset/")) {
            this.f19001do = BitmapRegionDecoder.newInstance(context.getAssets().open(string.substring(22), 1), false);
        } else if (string.startsWith("file://")) {
            this.f19001do = BitmapRegionDecoder.newInstance(string.substring(7), false);
        } else {
            InputStream inputStreamOpenInputStream = null;
            try {
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                this.f19001do = BitmapRegionDecoder.newInstance(inputStreamOpenInputStream, false);
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Exception unused2) {
                    }
                }
            } catch (Throwable th) {
                if (inputStreamOpenInputStream != null) {
                    try {
                        inputStreamOpenInputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        }
        return new Point(this.f19001do.getWidth(), this.f19001do.getHeight());
    }

    @Override // com.luck.picture.lib.widget.longimage.ImageRegionDecoder
    public boolean isReady() {
        BitmapRegionDecoder bitmapRegionDecoder = this.f19001do;
        return (bitmapRegionDecoder == null || bitmapRegionDecoder.isRecycled()) ? false : true;
    }

    @Override // com.luck.picture.lib.widget.longimage.ImageRegionDecoder
    public void recycle() {
        this.f19001do.recycle();
    }
}
