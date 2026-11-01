package com.yalantis.ucrop;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.common.collect.LinkedHashMultimap;
import com.yalantis.ucrop.model.AspectRatio;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* renamed from: com.yalantis.ucrop.do, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cdo {

    /* renamed from: break, reason: not valid java name */
    public static final String f22962break = "com.yalantis.ucrop.ImageHeight";

    /* renamed from: case, reason: not valid java name */
    public static final String f22963case = "com.yalantis.ucrop.InputUri";

    /* renamed from: catch, reason: not valid java name */
    public static final String f22964catch = "com.yalantis.ucrop.OffsetX";

    /* renamed from: class, reason: not valid java name */
    public static final String f22965class = "com.yalantis.ucrop.OffsetY";

    /* renamed from: const, reason: not valid java name */
    public static final String f22966const = "com.yalantis.ucrop.Error";

    /* renamed from: else, reason: not valid java name */
    public static final String f22967else = "com.yalantis.ucrop.OutputUri";

    /* renamed from: final, reason: not valid java name */
    public static final String f22968final = "com.yalantis.ucrop.AspectRatioX";

    /* renamed from: for, reason: not valid java name */
    public static final int f22969for = 69;

    /* renamed from: goto, reason: not valid java name */
    public static final String f22970goto = "com.yalantis.ucrop.CropAspectRatio";

    /* renamed from: new, reason: not valid java name */
    public static final int f22971new = 96;

    /* renamed from: super, reason: not valid java name */
    public static final String f22972super = "com.yalantis.ucrop.AspectRatioY";

    /* renamed from: this, reason: not valid java name */
    public static final String f22973this = "com.yalantis.ucrop.ImageWidth";

    /* renamed from: throw, reason: not valid java name */
    public static final String f22974throw = "com.yalantis.ucrop.MaxSizeX";

    /* renamed from: try, reason: not valid java name */
    private static final String f22975try = "com.yalantis.ucrop";

    /* renamed from: while, reason: not valid java name */
    public static final String f22976while = "com.yalantis.ucrop.MaxSizeY";

    /* renamed from: do, reason: not valid java name */
    private Intent f22977do = new Intent();

    /* renamed from: if, reason: not valid java name */
    private Bundle f22978if;

    /* renamed from: com.yalantis.ucrop.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0236do {

        /* renamed from: abstract, reason: not valid java name */
        public static final String f22979abstract = "com.yalantis.ucrop.AspectRatioSelectedByDefault";

        /* renamed from: break, reason: not valid java name */
        public static final String f22980break = "com.yalantis.ucrop.ShowCropFrame";

        /* renamed from: case, reason: not valid java name */
        public static final String f22981case = "com.yalantis.ucrop.MaxScaleMultiplier";

        /* renamed from: catch, reason: not valid java name */
        public static final String f22982catch = "com.yalantis.ucrop.CropFrameColor";

        /* renamed from: class, reason: not valid java name */
        public static final String f22983class = "com.yalantis.ucrop.CropFrameStrokeWidth";

        /* renamed from: const, reason: not valid java name */
        public static final String f22984const = "com.yalantis.ucrop.ShowCropGrid";

        /* renamed from: continue, reason: not valid java name */
        public static final String f22985continue = "com.yalantis.ucrop.AspectRatioOptions";

        /* renamed from: default, reason: not valid java name */
        public static final String f22986default = "com.yalantis.ucrop.UcropLogoColor";

        /* renamed from: else, reason: not valid java name */
        public static final String f22987else = "com.yalantis.ucrop.ImageToCropBoundsAnimDuration";

        /* renamed from: extends, reason: not valid java name */
        public static final String f22988extends = "com.yalantis.ucrop.HideBottomControls";

        /* renamed from: final, reason: not valid java name */
        public static final String f22989final = "com.yalantis.ucrop.CropGridRowCount";

        /* renamed from: finally, reason: not valid java name */
        public static final String f22990finally = "com.yalantis.ucrop.FreeStyleCrop";

        /* renamed from: for, reason: not valid java name */
        public static final String f22991for = "com.yalantis.ucrop.CompressionQuality";

        /* renamed from: goto, reason: not valid java name */
        public static final String f22992goto = "com.yalantis.ucrop.DimmedLayerColor";

        /* renamed from: if, reason: not valid java name */
        public static final String f22993if = "com.yalantis.ucrop.CompressionFormatName";

        /* renamed from: import, reason: not valid java name */
        public static final String f22994import = "com.yalantis.ucrop.ToolbarColor";

        /* renamed from: interface, reason: not valid java name */
        public static final String f22995interface = "com.yalantis.ucrop.scale";

        /* renamed from: native, reason: not valid java name */
        public static final String f22996native = "com.yalantis.ucrop.StatusBarColor";

        /* renamed from: new, reason: not valid java name */
        public static final String f22997new = "com.yalantis.ucrop.AllowedGestures";

        /* renamed from: package, reason: not valid java name */
        public static final String f22998package = "com.yalantis.ucrop.cuts";

        /* renamed from: private, reason: not valid java name */
        public static final String f22999private = "com.yalantis.ucrop.StatusFont";

        /* renamed from: protected, reason: not valid java name */
        public static final String f23000protected = "com.yalantis.ucrop.DragCropFrame";

        /* renamed from: public, reason: not valid java name */
        public static final String f23001public = "com.yalantis.ucrop.UcropColorWidgetActive";

        /* renamed from: return, reason: not valid java name */
        public static final String f23002return = "com.yalantis.ucrop.UcropToolbarWidgetColor";

        /* renamed from: static, reason: not valid java name */
        public static final String f23003static = "com.yalantis.ucrop.UcropToolbarTitleText";

        /* renamed from: strictfp, reason: not valid java name */
        public static final String f23004strictfp = "com.yalantis.ucrop.UcropRootViewBackgroundColor";

        /* renamed from: super, reason: not valid java name */
        public static final String f23005super = "com.yalantis.ucrop.CropGridColumnCount";

        /* renamed from: switch, reason: not valid java name */
        public static final String f23006switch = "com.yalantis.ucrop.UcropToolbarCancelDrawable";

        /* renamed from: this, reason: not valid java name */
        public static final String f23007this = "com.yalantis.ucrop.CircleDimmedLayer";

        /* renamed from: throw, reason: not valid java name */
        public static final String f23008throw = "com.yalantis.ucrop.CropGridColor";

        /* renamed from: throws, reason: not valid java name */
        public static final String f23009throws = "com.yalantis.ucrop.UcropToolbarCropDrawable";

        /* renamed from: try, reason: not valid java name */
        public static final String f23010try = "com.yalantis.ucrop.MaxBitmapSize";

        /* renamed from: volatile, reason: not valid java name */
        public static final String f23011volatile = "com.yalantis.ucrop.rotate";

        /* renamed from: while, reason: not valid java name */
        public static final String f23012while = "com.yalantis.ucrop.CropGridStrokeWidth";

        /* renamed from: do, reason: not valid java name */
        private final Bundle f23013do = new Bundle();

        /* renamed from: abstract, reason: not valid java name */
        public void m27379abstract(@DrawableRes int i) {
            this.f23013do.putInt("com.yalantis.ucrop.UcropToolbarCancelDrawable", i);
        }

        /* renamed from: break, reason: not valid java name */
        public void m27380break(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CropGridColor", i);
        }

        /* renamed from: case, reason: not valid java name */
        public void m27381case(@NonNull Bitmap.CompressFormat compressFormat) {
            this.f23013do.putString("com.yalantis.ucrop.CompressionFormatName", compressFormat.name());
        }

        /* renamed from: catch, reason: not valid java name */
        public void m27382catch(@IntRange(from = 0) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CropGridColumnCount", i);
        }

        /* renamed from: class, reason: not valid java name */
        public void m27383class(@IntRange(from = 0) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CropGridRowCount", i);
        }

        /* renamed from: const, reason: not valid java name */
        public void m27384const(@IntRange(from = 0) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CropGridStrokeWidth", i);
        }

        /* renamed from: continue, reason: not valid java name */
        public void m27385continue(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.ToolbarColor", i);
        }

        /* renamed from: default, reason: not valid java name */
        public void m27386default(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.scale", z);
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        public Bundle m27387do() {
            return this.f23013do;
        }

        /* renamed from: else, reason: not valid java name */
        public void m27388else(@IntRange(from = 0) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CompressionQuality", i);
        }

        /* renamed from: extends, reason: not valid java name */
        public void m27389extends(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.ShowCropFrame", z);
        }

        /* renamed from: final, reason: not valid java name */
        public void m27390final(ArrayList<String> arrayList) {
            this.f23013do.putStringArrayList("com.yalantis.ucrop.cuts", arrayList);
        }

        /* renamed from: finally, reason: not valid java name */
        public void m27391finally(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.ShowCropGrid", z);
        }

        /* renamed from: for, reason: not valid java name */
        public void m27392for(int i, int i2, int i3) {
            this.f23013do.putIntArray("com.yalantis.ucrop.AllowedGestures", new int[]{i, i2, i3});
        }

        /* renamed from: goto, reason: not valid java name */
        public void m27393goto(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CropFrameColor", i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m27394if(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.UcropColorWidgetActive", i);
        }

        /* renamed from: implements, reason: not valid java name */
        public void m27395implements(int i, int i2) {
            this.f23013do.putInt("com.yalantis.ucrop.MaxSizeX", i);
            this.f23013do.putInt("com.yalantis.ucrop.MaxSizeY", i2);
        }

        /* renamed from: import, reason: not valid java name */
        public void m27396import(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.HideBottomControls", z);
        }

        /* renamed from: interface, reason: not valid java name */
        public void m27397interface(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.UcropToolbarWidgetColor", i);
        }

        /* renamed from: native, reason: not valid java name */
        public void m27398native(@IntRange(from = 100) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", i);
        }

        /* renamed from: new, reason: not valid java name */
        public void m27399new(int i, AspectRatio... aspectRatioArr) {
            if (i > aspectRatioArr.length) {
                throw new IllegalArgumentException(String.format(Locale.US, "Index [selectedByDefault = %d] cannot be higher than aspect ratio options count [count = %d].", Integer.valueOf(i), Integer.valueOf(aspectRatioArr.length)));
            }
            this.f23013do.putInt("com.yalantis.ucrop.AspectRatioSelectedByDefault", i);
            this.f23013do.putParcelableArrayList("com.yalantis.ucrop.AspectRatioOptions", new ArrayList<>(Arrays.asList(aspectRatioArr)));
        }

        /* renamed from: package, reason: not valid java name */
        public void m27400package(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.StatusBarColor", i);
        }

        /* renamed from: private, reason: not valid java name */
        public void m27401private(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.StatusFont", z);
        }

        /* renamed from: protected, reason: not valid java name */
        public void m27402protected() {
            this.f23013do.putFloat("com.yalantis.ucrop.AspectRatioX", 0.0f);
            this.f23013do.putFloat("com.yalantis.ucrop.AspectRatioY", 0.0f);
        }

        /* renamed from: public, reason: not valid java name */
        public void m27403public(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.UcropLogoColor", i);
        }

        /* renamed from: return, reason: not valid java name */
        public void m27404return(@IntRange(from = 100) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.MaxBitmapSize", i);
        }

        /* renamed from: static, reason: not valid java name */
        public void m27405static(@FloatRange(from = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR, fromInclusive = false) float f) {
            this.f23013do.putFloat("com.yalantis.ucrop.MaxScaleMultiplier", f);
        }

        /* renamed from: strictfp, reason: not valid java name */
        public void m27406strictfp(@DrawableRes int i) {
            this.f23013do.putInt("com.yalantis.ucrop.UcropToolbarCropDrawable", i);
        }

        /* renamed from: super, reason: not valid java name */
        public void m27407super(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.DimmedLayerColor", i);
        }

        /* renamed from: switch, reason: not valid java name */
        public void m27408switch(@ColorInt int i) {
            this.f23013do.putInt("com.yalantis.ucrop.UcropRootViewBackgroundColor", i);
        }

        /* renamed from: this, reason: not valid java name */
        public void m27409this(@IntRange(from = 0) int i) {
            this.f23013do.putInt("com.yalantis.ucrop.CropFrameStrokeWidth", i);
        }

        /* renamed from: throw, reason: not valid java name */
        public void m27410throw(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.DragCropFrame", z);
        }

        /* renamed from: throws, reason: not valid java name */
        public void m27411throws(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.rotate", z);
        }

        /* renamed from: transient, reason: not valid java name */
        public void m27412transient(float f, float f2) {
            this.f23013do.putFloat("com.yalantis.ucrop.AspectRatioX", f);
            this.f23013do.putFloat("com.yalantis.ucrop.AspectRatioY", f2);
        }

        /* renamed from: try, reason: not valid java name */
        public void m27413try(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.CircleDimmedLayer", z);
        }

        /* renamed from: volatile, reason: not valid java name */
        public void m27414volatile(@Nullable String str) {
            this.f23013do.putString("com.yalantis.ucrop.UcropToolbarTitleText", str);
        }

        /* renamed from: while, reason: not valid java name */
        public void m27415while(boolean z) {
            this.f23013do.putBoolean("com.yalantis.ucrop.FreeStyleCrop", z);
        }
    }

    private Cdo(@NonNull Uri uri, @NonNull Uri uri2) {
        Bundle bundle = new Bundle();
        this.f22978if = bundle;
        bundle.putParcelable("com.yalantis.ucrop.InputUri", uri);
        this.f22978if.putParcelable("com.yalantis.ucrop.OutputUri", uri2);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m27362case(@NonNull Intent intent) {
        return intent.getIntExtra("com.yalantis.ucrop.ImageWidth", -1);
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static Throwable m27363do(@NonNull Intent intent) {
        return (Throwable) intent.getSerializableExtra("com.yalantis.ucrop.Error");
    }

    /* renamed from: else, reason: not valid java name */
    public static Cdo m27364else(@NonNull Uri uri, @NonNull Uri uri2) {
        return new Cdo(uri, uri2);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public static Uri m27365for(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
    }

    /* renamed from: new, reason: not valid java name */
    public static float m27366new(@NonNull Intent intent) {
        return ((Float) intent.getParcelableExtra("com.yalantis.ucrop.CropAspectRatio")).floatValue();
    }

    /* renamed from: try, reason: not valid java name */
    public static int m27367try(@NonNull Intent intent) {
        return intent.getIntExtra("com.yalantis.ucrop.ImageHeight", -1);
    }

    /* renamed from: break, reason: not valid java name */
    public void m27368break(@NonNull Context context, @NonNull Fragment fragment) {
        m27369catch(context, fragment, 69);
    }

    @TargetApi(11)
    /* renamed from: catch, reason: not valid java name */
    public void m27369catch(@NonNull Context context, @NonNull Fragment fragment, int i) {
        fragment.startActivityForResult(m27374if(context), i);
    }

    /* renamed from: class, reason: not valid java name */
    public void m27370class(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment) {
        m27371const(context, fragment, 69);
    }

    /* renamed from: const, reason: not valid java name */
    public void m27371const(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment, int i) {
        fragment.startActivityForResult(m27374if(context), i);
    }

    /* renamed from: final, reason: not valid java name */
    public Cdo m27372final() {
        this.f22978if.putFloat("com.yalantis.ucrop.AspectRatioX", 0.0f);
        this.f22978if.putFloat("com.yalantis.ucrop.AspectRatioY", 0.0f);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m27373goto(@NonNull Activity activity) {
        m27376this(activity, 69);
    }

    /* renamed from: if, reason: not valid java name */
    public Intent m27374if(@NonNull Context context) {
        this.f22977do.setClass(context, UCropActivity.class);
        this.f22977do.putExtras(this.f22978if);
        return this.f22977do;
    }

    /* renamed from: super, reason: not valid java name */
    public Cdo m27375super(float f, float f2) {
        this.f22978if.putFloat("com.yalantis.ucrop.AspectRatioX", f);
        this.f22978if.putFloat("com.yalantis.ucrop.AspectRatioY", f2);
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public void m27376this(@NonNull Activity activity, int i) {
        activity.startActivityForResult(m27374if(activity), i);
    }

    /* renamed from: throw, reason: not valid java name */
    public Cdo m27377throw(@IntRange(from = 100) int i, @IntRange(from = 100) int i2) {
        this.f22978if.putInt("com.yalantis.ucrop.MaxSizeX", i);
        this.f22978if.putInt("com.yalantis.ucrop.MaxSizeY", i2);
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public Cdo m27378while(@NonNull C0236do c0236do) {
        this.f22978if.putAll(c0236do.m27387do());
        return this;
    }
}
