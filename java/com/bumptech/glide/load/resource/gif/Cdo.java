package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.dh0;
import android.support.v4.f81;
import android.support.v4.gh0;
import android.support.v4.ih0;
import android.support.v4.sv0;
import android.support.v4.wb2;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.Cfor;
import com.bumptech.glide.gifdecoder.Cnew;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Ccase;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* renamed from: com.bumptech.glide.load.resource.gif.do, reason: invalid class name */
/* loaded from: classes.dex */
public class Cdo implements ResourceDecoder<ByteBuffer, GifDrawable> {

    /* renamed from: case, reason: not valid java name */
    private static final String f10236case = "BufferGifDecoder";

    /* renamed from: else, reason: not valid java name */
    private static final C0039do f10237else = new C0039do();

    /* renamed from: goto, reason: not valid java name */
    private static final Cif f10238goto = new Cif();

    /* renamed from: do, reason: not valid java name */
    private final Context f10239do;

    /* renamed from: for, reason: not valid java name */
    private final Cif f10240for;

    /* renamed from: if, reason: not valid java name */
    private final List<ImageHeaderParser> f10241if;

    /* renamed from: new, reason: not valid java name */
    private final C0039do f10242new;

    /* renamed from: try, reason: not valid java name */
    private final dh0 f10243try;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0039do {
        /* renamed from: do, reason: not valid java name */
        public GifDecoder m11837do(GifDecoder.BitmapProvider bitmapProvider, com.bumptech.glide.gifdecoder.Cif cif, ByteBuffer byteBuffer, int i) {
            return new Cnew(bitmapProvider, cif, byteBuffer, i);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.do$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Queue<Cfor> f10244do = Ccase.m12039case(0);

        /* renamed from: do, reason: not valid java name */
        public synchronized Cfor m11838do(ByteBuffer byteBuffer) {
            Cfor cforPoll;
            cforPoll = this.f10244do.poll();
            if (cforPoll == null) {
                cforPoll = new Cfor();
            }
            return cforPoll.m11195while(byteBuffer);
        }

        /* renamed from: if, reason: not valid java name */
        public synchronized void m11839if(Cfor cfor) {
            cfor.m11191do();
            this.f10244do.offer(cfor);
        }
    }

    public Cdo(Context context) {
        this(context, Glide.m11040new(context).m11052const().m11078else(), Glide.m11040new(context).m11053else(), Glide.m11040new(context).m11051case());
    }

    /* renamed from: for, reason: not valid java name */
    private static int m11833for(com.bumptech.glide.gifdecoder.Cif cif, int i, int i2) {
        int iMin = Math.min(cif.m11196do() / i2, cif.m11199new() / i);
        int iMax = Math.max(1, iMin == 0 ? 0 : Integer.highestOneBit(iMin));
        if (Log.isLoggable(f10236case, 2) && iMax > 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("Downsampling GIF, sampleSize: ");
            sb.append(iMax);
            sb.append(", target dimens: [");
            sb.append(i);
            sb.append("x");
            sb.append(i2);
            sb.append("], actual dimens: [");
            sb.append(cif.m11199new());
            sb.append("x");
            sb.append(cif.m11196do());
            sb.append("]");
        }
        return iMax;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private gh0 m11834if(ByteBuffer byteBuffer, int i, int i2, Cfor cfor, f81 f81Var) {
        long jM7613if = sv0.m7613if();
        try {
            com.bumptech.glide.gifdecoder.Cif cifM11194new = cfor.m11194new();
            if (cifM11194new.m11198if() > 0 && cifM11194new.m11197for() == 0) {
                Bitmap.Config config = f81Var.m2196do(ih0.f2770do) == com.bumptech.glide.load.Cif.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                GifDecoder gifDecoderM11837do = this.f10242new.m11837do(this.f10243try, cifM11194new, byteBuffer, m11833for(cifM11194new, i, i2));
                gifDecoderM11837do.setDefaultBitmapConfig(config);
                gifDecoderM11837do.advance();
                Bitmap nextFrame = gifDecoderM11837do.getNextFrame();
                if (nextFrame == null) {
                    return null;
                }
                gh0 gh0Var = new gh0(new GifDrawable(this.f10239do, gifDecoderM11837do, wb2.m9118do(), i, i2, nextFrame));
                if (Log.isLoggable(f10236case, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Decoded GIF from stream in ");
                    sb.append(sv0.m7612do(jM7613if));
                }
                return gh0Var;
            }
            if (Log.isLoggable(f10236case, 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Decoded GIF from stream in ");
                sb2.append(sv0.m7612do(jM7613if));
            }
            return null;
        } finally {
            if (Log.isLoggable(f10236case, 2)) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("Decoded GIF from stream in ");
                sb3.append(sv0.m7612do(jM7613if));
            }
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
    public gh0 decode(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull f81 f81Var) {
        Cfor cforM11838do = this.f10240for.m11838do(byteBuffer);
        try {
            return m11834if(byteBuffer, i, i2, cforM11838do, f81Var);
        } finally {
            this.f10240for.m11839if(cforM11838do);
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    public boolean handles(@NonNull ByteBuffer byteBuffer, @NonNull f81 f81Var) throws IOException {
        return !((Boolean) f81Var.m2196do(ih0.f2771if)).booleanValue() && ImageHeaderParserUtils.m11252case(this.f10241if, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public Cdo(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this(context, list, bitmapPool, arrayPool, f10238goto, f10237else);
    }

    @VisibleForTesting
    public Cdo(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool, Cif cif, C0039do c0039do) {
        this.f10239do = context.getApplicationContext();
        this.f10241if = list;
        this.f10242new = c0039do;
        this.f10243try = new dh0(bitmapPool, arrayPool);
        this.f10240for = cif;
    }
}
