package com.bumptech.glide.load.resource;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.support.v4.f81;
import android.support.v4.yi0;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.Cif;
import com.bumptech.glide.load.Cnew;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.Ctry;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import java.io.IOException;

@RequiresApi(api = 28)
/* renamed from: com.bumptech.glide.load.resource.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<T> implements ResourceDecoder<ImageDecoder.Source, T> {

    /* renamed from: if, reason: not valid java name */
    private static final String f10177if = "ImageDecoder";

    /* renamed from: do, reason: not valid java name */
    public final yi0 f10178do = yi0.m9873do();

    /* renamed from: com.bumptech.glide.load.resource.do$do, reason: invalid class name and collision with other inner class name */
    public class C0037do implements ImageDecoder.OnHeaderDecodedListener {

        /* renamed from: case, reason: not valid java name */
        public final /* synthetic */ Cnew f10179case;

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f10180do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ boolean f10182for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f10183if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Cif f10184new;

        /* renamed from: try, reason: not valid java name */
        public final /* synthetic */ Ctry f10185try;

        /* renamed from: com.bumptech.glide.load.resource.do$do$do, reason: invalid class name and collision with other inner class name */
        public class C0038do implements ImageDecoder.OnPartialImageListener {
            public C0038do() {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public C0037do(int i, int i2, boolean z, Cif cif, Ctry ctry, Cnew cnew) {
            this.f10180do = i;
            this.f10183if = i2;
            this.f10182for = z;
            this.f10184new = cif;
            this.f10185try = ctry;
            this.f10179case = cnew;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z = false;
            if (Cdo.this.f10178do.m9876for(this.f10180do, this.f10183if, this.f10182for, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f10184new == Cif.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new C0038do());
            Size size = imageInfo.getSize();
            int width = this.f10180do;
            if (width == Integer.MIN_VALUE) {
                width = size.getWidth();
            }
            int height = this.f10183if;
            if (height == Integer.MIN_VALUE) {
                height = size.getHeight();
            }
            float fMo11778if = this.f10185try.mo11778if(size.getWidth(), size.getHeight(), width, height);
            int iRound = Math.round(size.getWidth() * fMo11778if);
            int iRound2 = Math.round(size.getHeight() * fMo11778if);
            if (Log.isLoggable(Cdo.f10177if, 2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("Resizing from [");
                sb.append(size.getWidth());
                sb.append("x");
                sb.append(size.getHeight());
                sb.append("] to [");
                sb.append(iRound);
                sb.append("x");
                sb.append(iRound2);
                sb.append("] scaleFactor: ");
                sb.append(fMo11778if);
            }
            imageDecoder.setTargetSize(iRound, iRound2);
            int i = Build.VERSION.SDK_INT;
            if (i < 28) {
                if (i >= 26) {
                    imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
                }
            } else {
                if (this.f10179case == Cnew.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                    z = true;
                }
                imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            }
        }
    }

    /* renamed from: do */
    public abstract Resource<T> mo11772do(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException;

    @Override // com.bumptech.glide.load.ResourceDecoder
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public final boolean handles(@NonNull ImageDecoder.Source source, @NonNull f81 f81Var) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
    public final Resource<T> decode(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull f81 f81Var) throws IOException {
        Cif cif = (Cif) f81Var.m2196do(Downsampler.f10098else);
        Ctry ctry = (Ctry) f81Var.m2196do(Ctry.f10171goto);
        Option<Boolean> option = Downsampler.f10095catch;
        return mo11772do(source, i, i2, new C0037do(i, i2, f81Var.m2196do(option) != null && ((Boolean) f81Var.m2196do(option)).booleanValue(), cif, ctry, (Cnew) f81Var.m2196do(Downsampler.f10100goto)));
    }
}
