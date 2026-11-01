package com.bumptech.glide.load.resource.gif;

import android.support.v4.f81;
import android.support.v4.ih0;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* renamed from: com.bumptech.glide.load.resource.gif.for, reason: invalid class name */
/* loaded from: classes.dex */
public class Cfor implements ResourceDecoder<InputStream, GifDrawable> {

    /* renamed from: new, reason: not valid java name */
    private static final String f10245new = "StreamGifDecoder";

    /* renamed from: do, reason: not valid java name */
    private final List<ImageHeaderParser> f10246do;

    /* renamed from: for, reason: not valid java name */
    private final ArrayPool f10247for;

    /* renamed from: if, reason: not valid java name */
    private final ResourceDecoder<ByteBuffer, GifDrawable> f10248if;

    public Cfor(List<ImageHeaderParser> list, ResourceDecoder<ByteBuffer, GifDrawable> resourceDecoder, ArrayPool arrayPool) {
        this.f10246do = list;
        this.f10248if = resourceDecoder;
        this.f10247for = arrayPool;
    }

    /* renamed from: for, reason: not valid java name */
    private static byte[] m11840for(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            }
        } catch (IOException unused) {
            Log.isLoggable(f10245new, 5);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public Resource<GifDrawable> decode(@NonNull InputStream inputStream, int i, int i2, @NonNull f81 f81Var) throws IOException {
        byte[] bArrM11840for = m11840for(inputStream);
        if (bArrM11840for == null) {
            return null;
        }
        return this.f10248if.decode(ByteBuffer.wrap(bArrM11840for), i, i2, f81Var);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull InputStream inputStream, @NonNull f81 f81Var) throws IOException {
        return !((Boolean) f81Var.m2196do(ih0.f2771if)).booleanValue() && ImageHeaderParserUtils.m11258try(this.f10246do, inputStream, this.f10247for) == ImageHeaderParser.ImageType.GIF;
    }
}
