package com.yalantis.ucrop;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.jt;
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
import java.util.List;
import java.util.Locale;

/* renamed from: com.yalantis.ucrop.if, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cif {

    /* renamed from: break, reason: not valid java name */
    public static final String f23014break = "com.yalantis.ucrop.ImageWidth";

    /* renamed from: case, reason: not valid java name */
    public static final String f23015case = "com.yalantis.ucrop.InputUri";

    /* renamed from: catch, reason: not valid java name */
    public static final String f23016catch = "com.yalantis.ucrop.ImageHeight";

    /* renamed from: class, reason: not valid java name */
    public static final String f23017class = "com.yalantis.ucrop.OffsetX";

    /* renamed from: const, reason: not valid java name */
    public static final String f23018const = "com.yalantis.ucrop.OffsetY";

    /* renamed from: else, reason: not valid java name */
    public static final String f23019else = "com.yalantis.ucrop.OutputUri";

    /* renamed from: final, reason: not valid java name */
    public static final String f23020final = "com.yalantis.ucrop.Error";

    /* renamed from: for, reason: not valid java name */
    public static final int f23021for = 609;

    /* renamed from: goto, reason: not valid java name */
    public static final String f23022goto = "com.yalantis.ucrop.OutputUriList";

    /* renamed from: import, reason: not valid java name */
    public static final String f23023import = "com.yalantis.ucrop.MaxSizeY";

    /* renamed from: new, reason: not valid java name */
    public static final int f23024new = 96;

    /* renamed from: super, reason: not valid java name */
    public static final String f23025super = "com.yalantis.ucrop.AspectRatioX";

    /* renamed from: this, reason: not valid java name */
    public static final String f23026this = "com.yalantis.ucrop.CropAspectRatio";

    /* renamed from: throw, reason: not valid java name */
    public static final String f23027throw = "com.yalantis.ucrop.AspectRatioY";

    /* renamed from: try, reason: not valid java name */
    private static final String f23028try = "com.yalantis.ucrop";

    /* renamed from: while, reason: not valid java name */
    public static final String f23029while = "com.yalantis.ucrop.MaxSizeX";

    /* renamed from: do, reason: not valid java name */
    private Intent f23030do = new Intent();

    /* renamed from: if, reason: not valid java name */
    private Bundle f23031if;

    /* renamed from: com.yalantis.ucrop.if$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: abstract, reason: not valid java name */
        public static final String f23032abstract = "com.yalantis.ucrop.DragCropFrame";

        /* renamed from: break, reason: not valid java name */
        public static final String f23033break = "com.yalantis.ucrop.ShowCropFrame";

        /* renamed from: case, reason: not valid java name */
        public static final String f23034case = "com.yalantis.ucrop.MaxScaleMultiplier";

        /* renamed from: catch, reason: not valid java name */
        public static final String f23035catch = "com.yalantis.ucrop.CropFrameColor";

        /* renamed from: class, reason: not valid java name */
        public static final String f23036class = "com.yalantis.ucrop.CropFrameStrokeWidth";

        /* renamed from: const, reason: not valid java name */
        public static final String f23037const = "com.yalantis.ucrop.ShowCropGrid";

        /* renamed from: continue, reason: not valid java name */
        public static final String f23038continue = "com.yalantis.ucrop.rotate";

        /* renamed from: default, reason: not valid java name */
        public static final String f23039default = "com.yalantis.ucrop.UcropLogoColor";

        /* renamed from: else, reason: not valid java name */
        public static final String f23040else = "com.yalantis.ucrop.ImageToCropBoundsAnimDuration";

        /* renamed from: extends, reason: not valid java name */
        public static final String f23041extends = "com.yalantis.ucrop.HideBottomControls";

        /* renamed from: final, reason: not valid java name */
        public static final String f23042final = "com.yalantis.ucrop.CropGridRowCount";

        /* renamed from: finally, reason: not valid java name */
        public static final String f23043finally = "com.yalantis.ucrop.FreeStyleCrop";

        /* renamed from: for, reason: not valid java name */
        public static final String f23044for = "com.yalantis.ucrop.CompressionQuality";

        /* renamed from: goto, reason: not valid java name */
        public static final String f23045goto = "com.yalantis.ucrop.DimmedLayerColor";

        /* renamed from: if, reason: not valid java name */
        public static final String f23046if = "com.yalantis.ucrop.CompressionFormatName";

        /* renamed from: import, reason: not valid java name */
        public static final String f23047import = "com.yalantis.ucrop.ToolbarColor";

        /* renamed from: interface, reason: not valid java name */
        public static final String f23048interface = "com.yalantis.ucrop.AspectRatioOptions";

        /* renamed from: native, reason: not valid java name */
        public static final String f23049native = "com.yalantis.ucrop.StatusBarColor";

        /* renamed from: new, reason: not valid java name */
        public static final String f23050new = "com.yalantis.ucrop.AllowedGestures";

        /* renamed from: package, reason: not valid java name */
        public static final String f23051package = "com.yalantis.ucrop.cuts";

        /* renamed from: private, reason: not valid java name */
        public static final String f23052private = "com.yalantis.ucrop.StatusFont";

        /* renamed from: protected, reason: not valid java name */
        public static final String f23053protected = "com.yalantis.ucrop.UcropRootViewBackgroundColor";

        /* renamed from: public, reason: not valid java name */
        public static final String f23054public = "com.yalantis.ucrop.UcropColorWidgetActive";

        /* renamed from: return, reason: not valid java name */
        public static final String f23055return = "com.yalantis.ucrop.UcropToolbarWidgetColor";

        /* renamed from: static, reason: not valid java name */
        public static final String f23056static = "com.yalantis.ucrop.UcropToolbarTitleText";

        /* renamed from: strictfp, reason: not valid java name */
        public static final String f23057strictfp = "com.yalantis.ucrop.scale";

        /* renamed from: super, reason: not valid java name */
        public static final String f23058super = "com.yalantis.ucrop.CropGridColumnCount";

        /* renamed from: switch, reason: not valid java name */
        public static final String f23059switch = "com.yalantis.ucrop.UcropToolbarCancelDrawable";

        /* renamed from: this, reason: not valid java name */
        public static final String f23060this = "com.yalantis.ucrop.CircleDimmedLayer";

        /* renamed from: throw, reason: not valid java name */
        public static final String f23061throw = "com.yalantis.ucrop.CropGridColor";

        /* renamed from: throws, reason: not valid java name */
        public static final String f23062throws = "com.yalantis.ucrop.UcropToolbarCropDrawable";

        /* renamed from: try, reason: not valid java name */
        public static final String f23063try = "com.yalantis.ucrop.MaxBitmapSize";

        /* renamed from: volatile, reason: not valid java name */
        public static final String f23064volatile = "com.yalantis.ucrop.AspectRatioSelectedByDefault";

        /* renamed from: while, reason: not valid java name */
        public static final String f23065while = "com.yalantis.ucrop.CropGridStrokeWidth";

        /* renamed from: do, reason: not valid java name */
        private final Bundle f23066do = new Bundle();

        /* renamed from: abstract, reason: not valid java name */
        public void m27433abstract(@DrawableRes int i) {
            this.f23066do.putInt("com.yalantis.ucrop.UcropToolbarCancelDrawable", i);
        }

        /* renamed from: break, reason: not valid java name */
        public void m27434break(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CropGridColor", i);
        }

        /* renamed from: case, reason: not valid java name */
        public void m27435case(@NonNull Bitmap.CompressFormat compressFormat) {
            this.f23066do.putString("com.yalantis.ucrop.CompressionFormatName", compressFormat.name());
        }

        /* renamed from: catch, reason: not valid java name */
        public void m27436catch(@IntRange(from = 0) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CropGridColumnCount", i);
        }

        /* renamed from: class, reason: not valid java name */
        public void m27437class(@IntRange(from = 0) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CropGridRowCount", i);
        }

        /* renamed from: const, reason: not valid java name */
        public void m27438const(@IntRange(from = 0) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CropGridStrokeWidth", i);
        }

        /* renamed from: continue, reason: not valid java name */
        public void m27439continue(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.ToolbarColor", i);
        }

        /* renamed from: default, reason: not valid java name */
        public void m27440default(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.scale", z);
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        public Bundle m27441do() {
            return this.f23066do;
        }

        /* renamed from: else, reason: not valid java name */
        public void m27442else(@IntRange(from = 0) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CompressionQuality", i);
        }

        /* renamed from: extends, reason: not valid java name */
        public void m27443extends(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.ShowCropFrame", z);
        }

        /* renamed from: final, reason: not valid java name */
        public void m27444final(ArrayList<String> arrayList) {
            this.f23066do.putStringArrayList("com.yalantis.ucrop.cuts", arrayList);
        }

        /* renamed from: finally, reason: not valid java name */
        public void m27445finally(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.ShowCropGrid", z);
        }

        /* renamed from: for, reason: not valid java name */
        public void m27446for(int i, int i2, int i3) {
            this.f23066do.putIntArray("com.yalantis.ucrop.AllowedGestures", new int[]{i, i2, i3});
        }

        /* renamed from: goto, reason: not valid java name */
        public void m27447goto(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CropFrameColor", i);
        }

        /* renamed from: if, reason: not valid java name */
        public void m27448if(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.UcropColorWidgetActive", i);
        }

        /* renamed from: implements, reason: not valid java name */
        public void m27449implements(int i, int i2) {
            this.f23066do.putInt("com.yalantis.ucrop.MaxSizeX", i);
            this.f23066do.putInt("com.yalantis.ucrop.MaxSizeY", i2);
        }

        /* renamed from: import, reason: not valid java name */
        public void m27450import(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.HideBottomControls", z);
        }

        /* renamed from: interface, reason: not valid java name */
        public void m27451interface(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.UcropToolbarWidgetColor", i);
        }

        /* renamed from: native, reason: not valid java name */
        public void m27452native(@IntRange(from = 100) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", i);
        }

        /* renamed from: new, reason: not valid java name */
        public void m27453new(int i, AspectRatio... aspectRatioArr) {
            if (i > aspectRatioArr.length) {
                throw new IllegalArgumentException(String.format(Locale.US, "Index [selectedByDefault = %d] cannot be higher than aspect ratio options count [count = %d].", Integer.valueOf(i), Integer.valueOf(aspectRatioArr.length)));
            }
            this.f23066do.putInt("com.yalantis.ucrop.AspectRatioSelectedByDefault", i);
            this.f23066do.putParcelableArrayList("com.yalantis.ucrop.AspectRatioOptions", new ArrayList<>(Arrays.asList(aspectRatioArr)));
        }

        /* renamed from: package, reason: not valid java name */
        public void m27454package(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.StatusBarColor", i);
        }

        /* renamed from: private, reason: not valid java name */
        public void m27455private(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.StatusFont", z);
        }

        /* renamed from: protected, reason: not valid java name */
        public void m27456protected() {
            this.f23066do.putFloat("com.yalantis.ucrop.AspectRatioX", 0.0f);
            this.f23066do.putFloat("com.yalantis.ucrop.AspectRatioY", 0.0f);
        }

        /* renamed from: public, reason: not valid java name */
        public void m27457public(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.UcropLogoColor", i);
        }

        /* renamed from: return, reason: not valid java name */
        public void m27458return(@IntRange(from = 100) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.MaxBitmapSize", i);
        }

        /* renamed from: static, reason: not valid java name */
        public void m27459static(@FloatRange(from = LinkedHashMultimap.VALUE_SET_LOAD_FACTOR, fromInclusive = false) float f) {
            this.f23066do.putFloat("com.yalantis.ucrop.MaxScaleMultiplier", f);
        }

        /* renamed from: strictfp, reason: not valid java name */
        public void m27460strictfp(@DrawableRes int i) {
            this.f23066do.putInt("com.yalantis.ucrop.UcropToolbarCropDrawable", i);
        }

        /* renamed from: super, reason: not valid java name */
        public void m27461super(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.DimmedLayerColor", i);
        }

        /* renamed from: switch, reason: not valid java name */
        public void m27462switch(@ColorInt int i) {
            this.f23066do.putInt("com.yalantis.ucrop.UcropRootViewBackgroundColor", i);
        }

        /* renamed from: this, reason: not valid java name */
        public void m27463this(@IntRange(from = 0) int i) {
            this.f23066do.putInt("com.yalantis.ucrop.CropFrameStrokeWidth", i);
        }

        /* renamed from: throw, reason: not valid java name */
        public void m27464throw(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.DragCropFrame", z);
        }

        /* renamed from: throws, reason: not valid java name */
        public void m27465throws(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.rotate", z);
        }

        /* renamed from: transient, reason: not valid java name */
        public void m27466transient(float f, float f2) {
            this.f23066do.putFloat("com.yalantis.ucrop.AspectRatioX", f);
            this.f23066do.putFloat("com.yalantis.ucrop.AspectRatioY", f2);
        }

        /* renamed from: try, reason: not valid java name */
        public void m27467try(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.CircleDimmedLayer", z);
        }

        /* renamed from: volatile, reason: not valid java name */
        public void m27468volatile(@Nullable String str) {
            this.f23066do.putString("com.yalantis.ucrop.UcropToolbarTitleText", str);
        }

        /* renamed from: while, reason: not valid java name */
        public void m27469while(boolean z) {
            this.f23066do.putBoolean("com.yalantis.ucrop.FreeStyleCrop", z);
        }
    }

    private Cif(@NonNull Uri uri, @NonNull Uri uri2) {
        Bundle bundle = new Bundle();
        this.f23031if = bundle;
        bundle.putParcelable("com.yalantis.ucrop.InputUri", uri);
        this.f23031if.putParcelable("com.yalantis.ucrop.OutputUri", uri2);
    }

    /* renamed from: case, reason: not valid java name */
    public static int m27416case(@NonNull Intent intent) {
        return intent.getIntExtra("com.yalantis.ucrop.ImageWidth", -1);
    }

    @Nullable
    /* renamed from: do, reason: not valid java name */
    public static Throwable m27417do(@NonNull Intent intent) {
        return (Throwable) intent.getSerializableExtra("com.yalantis.ucrop.Error");
    }

    /* renamed from: else, reason: not valid java name */
    public static Cif m27418else(@NonNull Uri uri, @NonNull Uri uri2) {
        return new Cif(uri, uri2);
    }

    @Nullable
    /* renamed from: for, reason: not valid java name */
    public static List<jt> m27419for(@NonNull Intent intent) {
        return (List) intent.getSerializableExtra(f23022goto);
    }

    /* renamed from: new, reason: not valid java name */
    public static float m27420new(@NonNull Intent intent) {
        return ((Float) intent.getParcelableExtra("com.yalantis.ucrop.CropAspectRatio")).floatValue();
    }

    /* renamed from: try, reason: not valid java name */
    public static int m27421try(@NonNull Intent intent) {
        return intent.getIntExtra("com.yalantis.ucrop.ImageHeight", -1);
    }

    /* renamed from: break, reason: not valid java name */
    public void m27422break(@NonNull Context context, @NonNull Fragment fragment) {
        m27423catch(context, fragment, 609);
    }

    @TargetApi(11)
    /* renamed from: catch, reason: not valid java name */
    public void m27423catch(@NonNull Context context, @NonNull Fragment fragment, int i) {
        fragment.startActivityForResult(m27428if(context), i);
    }

    /* renamed from: class, reason: not valid java name */
    public void m27424class(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment) {
        m27425const(context, fragment, 609);
    }

    /* renamed from: const, reason: not valid java name */
    public void m27425const(@NonNull Context context, @NonNull androidx.fragment.app.Fragment fragment, int i) {
        fragment.startActivityForResult(m27428if(context), i);
    }

    /* renamed from: final, reason: not valid java name */
    public Cif m27426final() {
        this.f23031if.putFloat("com.yalantis.ucrop.AspectRatioX", 0.0f);
        this.f23031if.putFloat("com.yalantis.ucrop.AspectRatioY", 0.0f);
        return this;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m27427goto(@NonNull Activity activity) {
        m27430this(activity, 609);
    }

    /* renamed from: if, reason: not valid java name */
    public Intent m27428if(@NonNull Context context) {
        this.f23030do.setClass(context, PictureMultiCuttingActivity.class);
        this.f23030do.putExtras(this.f23031if);
        return this.f23030do;
    }

    /* renamed from: super, reason: not valid java name */
    public Cif m27429super(float f, float f2) {
        this.f23031if.putFloat("com.yalantis.ucrop.AspectRatioX", f);
        this.f23031if.putFloat("com.yalantis.ucrop.AspectRatioY", f2);
        return this;
    }

    /* renamed from: this, reason: not valid java name */
    public void m27430this(@NonNull Activity activity, int i) {
        activity.startActivityForResult(m27428if(activity), i);
    }

    /* renamed from: throw, reason: not valid java name */
    public Cif m27431throw(@IntRange(from = 100) int i, @IntRange(from = 100) int i2) {
        this.f23031if.putInt("com.yalantis.ucrop.MaxSizeX", i);
        this.f23031if.putInt("com.yalantis.ucrop.MaxSizeY", i2);
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public Cif m27432while(@NonNull Cdo cdo) {
        this.f23031if.putAll(cdo.m27441do());
        return this;
    }
}
