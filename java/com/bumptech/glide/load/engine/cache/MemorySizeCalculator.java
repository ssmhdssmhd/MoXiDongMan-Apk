package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.support.v4.cf1;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.widget.ActivityChooserModel;

/* loaded from: classes.dex */
public final class MemorySizeCalculator {

    /* renamed from: case, reason: not valid java name */
    @VisibleForTesting
    public static final int f9685case = 4;

    /* renamed from: else, reason: not valid java name */
    private static final int f9686else = 2;

    /* renamed from: try, reason: not valid java name */
    private static final String f9687try = "MemorySizeCalculator";

    /* renamed from: do, reason: not valid java name */
    private final int f9688do;

    /* renamed from: for, reason: not valid java name */
    private final Context f9689for;

    /* renamed from: if, reason: not valid java name */
    private final int f9690if;

    /* renamed from: new, reason: not valid java name */
    private final int f9691new;

    public interface ScreenDimensions {
        int getHeightPixels();

        int getWidthPixels();
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.MemorySizeCalculator$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: break, reason: not valid java name */
        public static final int f9692break;

        /* renamed from: catch, reason: not valid java name */
        public static final float f9693catch = 0.4f;

        /* renamed from: class, reason: not valid java name */
        public static final float f9694class = 0.33f;

        /* renamed from: const, reason: not valid java name */
        public static final int f9695const = 4194304;

        /* renamed from: this, reason: not valid java name */
        @VisibleForTesting
        public static final int f9696this = 2;

        /* renamed from: do, reason: not valid java name */
        public final Context f9698do;

        /* renamed from: for, reason: not valid java name */
        public ScreenDimensions f9700for;

        /* renamed from: if, reason: not valid java name */
        public ActivityManager f9702if;

        /* renamed from: try, reason: not valid java name */
        public float f9704try;

        /* renamed from: new, reason: not valid java name */
        public float f9703new = 2.0f;

        /* renamed from: case, reason: not valid java name */
        public float f9697case = 0.4f;

        /* renamed from: else, reason: not valid java name */
        public float f9699else = 0.33f;

        /* renamed from: goto, reason: not valid java name */
        public int f9701goto = 4194304;

        static {
            f9692break = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public Cdo(Context context) {
            this.f9704try = f9692break;
            this.f9698do = context;
            this.f9702if = (ActivityManager) context.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            this.f9700for = new Cif(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !MemorySizeCalculator.m11429try(this.f9702if)) {
                return;
            }
            this.f9704try = 0.0f;
        }

        /* renamed from: case, reason: not valid java name */
        public Cdo m11433case(float f) {
            cf1.m897do(f >= 0.0f && f <= 1.0f, "Size multiplier must be between 0 and 1");
            this.f9697case = f;
            return this;
        }

        /* renamed from: do, reason: not valid java name */
        public MemorySizeCalculator m11434do() {
            return new MemorySizeCalculator(this);
        }

        /* renamed from: else, reason: not valid java name */
        public Cdo m11435else(float f) {
            cf1.m897do(f >= 0.0f, "Memory cache screens must be greater than or equal to 0");
            this.f9703new = f;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo m11436for(int i) {
            this.f9701goto = i;
            return this;
        }

        @VisibleForTesting
        /* renamed from: goto, reason: not valid java name */
        public Cdo m11437goto(ScreenDimensions screenDimensions) {
            this.f9700for = screenDimensions;
            return this;
        }

        @VisibleForTesting
        /* renamed from: if, reason: not valid java name */
        public Cdo m11438if(ActivityManager activityManager) {
            this.f9702if = activityManager;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public Cdo m11439new(float f) {
            cf1.m897do(f >= 0.0f, "Bitmap pool screens must be greater than or equal to 0");
            this.f9704try = f;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public Cdo m11440try(float f) {
            cf1.m897do(f >= 0.0f && f <= 1.0f, "Low memory max size multiplier must be between 0 and 1");
            this.f9699else = f;
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.cache.MemorySizeCalculator$if, reason: invalid class name */
    public static final class Cif implements ScreenDimensions {

        /* renamed from: do, reason: not valid java name */
        private final DisplayMetrics f9705do;

        public Cif(DisplayMetrics displayMetrics) {
            this.f9705do = displayMetrics;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int getHeightPixels() {
            return this.f9705do.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.MemorySizeCalculator.ScreenDimensions
        public int getWidthPixels() {
            return this.f9705do.widthPixels;
        }
    }

    public MemorySizeCalculator(Cdo cdo) {
        this.f9689for = cdo.f9698do;
        int i = m11429try(cdo.f9702if) ? cdo.f9701goto / 2 : cdo.f9701goto;
        this.f9691new = i;
        int iM11428for = m11428for(cdo.f9702if, cdo.f9697case, cdo.f9699else);
        float widthPixels = cdo.f9700for.getWidthPixels() * cdo.f9700for.getHeightPixels() * 4;
        int iRound = Math.round(cdo.f9704try * widthPixels);
        int iRound2 = Math.round(widthPixels * cdo.f9703new);
        int i2 = iM11428for - i;
        int i3 = iRound2 + iRound;
        if (i3 <= i2) {
            this.f9690if = iRound2;
            this.f9688do = iRound;
        } else {
            float f = i2;
            float f2 = cdo.f9704try;
            float f3 = cdo.f9703new;
            float f4 = f / (f2 + f3);
            this.f9690if = Math.round(f3 * f4);
            this.f9688do = Math.round(f4 * cdo.f9704try);
        }
        if (Log.isLoggable(f9687try, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(m11427case(this.f9690if));
            sb.append(", pool size: ");
            sb.append(m11427case(this.f9688do));
            sb.append(", byte array size: ");
            sb.append(m11427case(i));
            sb.append(", memory class limited? ");
            sb.append(i3 > iM11428for);
            sb.append(", max size: ");
            sb.append(m11427case(iM11428for));
            sb.append(", memoryClass: ");
            sb.append(cdo.f9702if.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(m11429try(cdo.f9702if));
        }
    }

    /* renamed from: case, reason: not valid java name */
    private String m11427case(int i) {
        return Formatter.formatFileSize(this.f9689for, i);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m11428for(ActivityManager activityManager, float f, float f2) {
        float memoryClass = activityManager.getMemoryClass() * 1024 * 1024;
        if (m11429try(activityManager)) {
            f = f2;
        }
        return Math.round(memoryClass * f);
    }

    @TargetApi(19)
    /* renamed from: try, reason: not valid java name */
    public static boolean m11429try(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return activityManager.isLowRamDevice();
        }
        return true;
    }

    /* renamed from: do, reason: not valid java name */
    public int m11430do() {
        return this.f9691new;
    }

    /* renamed from: if, reason: not valid java name */
    public int m11431if() {
        return this.f9688do;
    }

    /* renamed from: new, reason: not valid java name */
    public int m11432new() {
        return this.f9690if;
    }
}
