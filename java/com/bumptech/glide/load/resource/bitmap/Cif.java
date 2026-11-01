package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.support.v4.m9;
import android.support.v4.n9;
import android.util.Log;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.Cdo;
import java.io.IOException;

@RequiresApi(api = 28)
/* renamed from: com.bumptech.glide.load.resource.bitmap.if, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cif extends Cdo<Bitmap> {

    /* renamed from: new, reason: not valid java name */
    private static final String f10163new = "BitmapImageDecoder";

    /* renamed from: for, reason: not valid java name */
    private final BitmapPool f10164for = new m9();

    @Override // com.bumptech.glide.load.resource.Cdo
    /* renamed from: do, reason: not valid java name */
    public Resource<Bitmap> mo11772do(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, onHeaderDecodedListener);
        if (Log.isLoggable(f10163new, 2)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Decoded [");
            sb.append(bitmapDecodeBitmap.getWidth());
            sb.append("x");
            sb.append(bitmapDecodeBitmap.getHeight());
            sb.append("] for [");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            sb.append("]");
        }
        return new n9(bitmapDecodeBitmap, this.f10164for);
    }
}
