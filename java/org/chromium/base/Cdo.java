package org.chromium.base;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.os.UserManager;
import android.provider.MediaStore;
import android.support.v4.je2;
import android.support.v4.ke2;
import android.support.v4.le2;
import android.support.v4.ne2;
import android.support.v4.pe2;
import android.support.v4.qe2;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodSubtype;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import androidx.core.widget.ImageViewCompat;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* renamed from: org.chromium.base.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final /* synthetic */ boolean f33154do = false;

    @qe2
    @TargetApi(29)
    /* renamed from: org.chromium.base.do$case, reason: invalid class name */
    public static class Ccase {
        private Ccase() {
        }

        /* renamed from: do, reason: not valid java name */
        public static List<Integer> m37091do(@Nullable Activity activity) {
            DisplayManager displayManager;
            ArrayList arrayList = new ArrayList();
            if (activity == null || (displayManager = (DisplayManager) activity.getSystemService("display")) == null) {
                return arrayList;
            }
            Display[] displays = displayManager.getDisplays();
            ActivityManager activityManager = (ActivityManager) activity.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
            for (Display display : displays) {
                if (display.getState() == 2 && activityManager.isActivityStartAllowedOnDisplay(activity, display.getDisplayId(), new Intent(activity, activity.getClass()))) {
                    arrayList.add(Integer.valueOf(display.getDisplayId()));
                }
            }
            return arrayList;
        }

        /* renamed from: if, reason: not valid java name */
        public static boolean m37092if() {
            return ActivityManager.isRunningInUserTestHarness();
        }
    }

    @je2
    @TargetApi(22)
    /* renamed from: org.chromium.base.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0470do {
        private C0470do() {
        }

        /* renamed from: do, reason: not valid java name */
        public static void m37093do(View view, int i) {
            view.setAccessibilityTraversalBefore(i);
        }
    }

    /* renamed from: org.chromium.base.do$else, reason: invalid class name */
    public static class Celse implements Runnable {

        /* renamed from: for, reason: not valid java name */
        private static final long f33155for = 500;

        /* renamed from: new, reason: not valid java name */
        private static final long f33156new = 3;

        /* renamed from: do, reason: not valid java name */
        private final Activity f33157do;

        /* renamed from: if, reason: not valid java name */
        private int f33158if;

        public Celse(Activity activity) {
            this.f33157do = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33157do.finishAndRemoveTask();
            this.f33158if++;
            if (this.f33157do.isFinishing()) {
                return;
            }
            if (this.f33158if < 3) {
                ThreadUtils.m36945this(this, 500L);
            } else {
                this.f33157do.finish();
            }
        }
    }

    @le2
    @TargetApi(24)
    /* renamed from: org.chromium.base.do$for, reason: invalid class name */
    public static class Cfor {
        private Cfor() {
        }

        /* renamed from: do, reason: not valid java name */
        public static String m37094do(InputMethodSubtype inputMethodSubtype) {
            return inputMethodSubtype.getLanguageTag();
        }

        /* renamed from: for, reason: not valid java name */
        public static boolean m37095for(Activity activity) {
            return activity.isInMultiWindowMode();
        }

        @TargetApi(25)
        /* renamed from: if, reason: not valid java name */
        public static boolean m37096if() {
            return ((UserManager) org.chromium.base.Ctry.m37273case().getSystemService("user")).isDemoUser();
        }

        /* renamed from: new, reason: not valid java name */
        public static String m37097new(Spanned spanned, int i) {
            return Html.toHtml(spanned, i);
        }
    }

    @ke2
    @TargetApi(23)
    /* renamed from: org.chromium.base.do$if, reason: invalid class name */
    public static class Cif {
        private Cif() {
        }

        /* renamed from: do, reason: not valid java name */
        public static void m37098do(View view, boolean z) {
            int systemUiVisibility = view.getSystemUiVisibility();
            view.setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
        }
    }

    @ne2
    @TargetApi(26)
    /* renamed from: org.chromium.base.do$new, reason: invalid class name */
    public static class Cnew {
        private Cnew() {
        }

        /* renamed from: do, reason: not valid java name */
        public static Bundle m37099do(int i) {
            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
            activityOptionsMakeBasic.setLaunchDisplayId(i);
            return activityOptionsMakeBasic.toBundle();
        }

        /* renamed from: for, reason: not valid java name */
        public static void m37100for(Intent intent, String str) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", str);
        }

        /* renamed from: if, reason: not valid java name */
        public static void m37101if(TextView textView) {
            textView.setTextClassifier(TextClassifier.NO_OP);
        }
    }

    @TargetApi(28)
    @pe2
    /* renamed from: org.chromium.base.do$try, reason: invalid class name */
    public static class Ctry {
        private Ctry() {
        }

        /* renamed from: do, reason: not valid java name */
        public static Bitmap m37102do(ContentResolver contentResolver, Uri uri) throws IOException {
            return ImageDecoder.decodeBitmap(ImageDecoder.createSource(contentResolver, uri));
        }

        /* renamed from: if, reason: not valid java name */
        public static String m37103if() {
            return Application.getProcessName();
        }
    }

    private Cdo() {
    }

    /* renamed from: break, reason: not valid java name */
    public static Drawable m37063break(Resources resources, int i) throws Resources.NotFoundException {
        return m37065catch(resources, i, 0);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m37064case(Activity activity) {
        if (Build.VERSION.SDK_INT > 21) {
            activity.finishAndRemoveTask();
        } else {
            new Celse(activity).run();
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public static Drawable m37065catch(Resources resources, int i, int i2) {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return i2 == 0 ? resources.getDrawable(i, null) : resources.getDrawableForDensity(i, i2, null);
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public static String m37066class(InputMethodSubtype inputMethodSubtype) {
        return Build.VERSION.SDK_INT >= 24 ? Cfor.m37094do(inputMethodSubtype) : inputMethodSubtype.getLocale();
    }

    /* renamed from: const, reason: not valid java name */
    public static Intent m37067const() {
        Intent intent = new Intent();
        String packageName = org.chromium.base.Ctry.m37273case().getPackageName();
        if (Build.VERSION.SDK_INT >= 26) {
            Cnew.m37100for(intent, packageName);
        } else {
            intent.setAction("android.settings.ACTION_APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", packageName);
            intent.putExtra("app_uid", org.chromium.base.Ctry.m37273case().getApplicationInfo().uid);
        }
        return intent;
    }

    /* renamed from: default, reason: not valid java name */
    public static void m37068default(Window window, int i) {
        if (Build.VERSION.SDK_INT < 26 && i == -16777216 && window.getNavigationBarColor() == -16777216) {
            window.clearFlags(Integer.MIN_VALUE);
        } else {
            window.addFlags(Integer.MIN_VALUE);
        }
        window.setStatusBarColor(i);
    }

    /* renamed from: do, reason: not valid java name */
    public static int m37069do(Context context, String str, int i, int i2) {
        try {
            return context.checkPermission(str, i, i2);
        } catch (RuntimeException unused) {
            return -1;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Bitmap m37070else(ContentResolver contentResolver, Uri uri) throws IOException {
        return Build.VERSION.SDK_INT >= 28 ? Ctry.m37102do(contentResolver, uri) : MediaStore.Images.Media.getBitmap(contentResolver, uri);
    }

    /* renamed from: extends, reason: not valid java name */
    public static void m37071extends(View view, boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            Cif.m37098do(view, z);
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static String m37072final() {
        if (Build.VERSION.SDK_INT >= 28) {
            return Ctry.m37103if();
        }
        try {
            return (String) Class.forName("android.app.ActivityThread").getMethod("currentProcessName", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m37073finally(TextView textView, int i) {
        textView.setTextAppearance(textView.getContext(), i);
    }

    /* renamed from: for, reason: not valid java name */
    public static int m37074for(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    /* renamed from: goto, reason: not valid java name */
    public static byte[] m37075goto(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static int m37076if(boolean z, boolean z2) {
        if (z == z2) {
            return 0;
        }
        return z ? 1 : -1;
    }

    /* renamed from: import, reason: not valid java name */
    private static boolean m37077import(int i) {
        int i2 = i & 4095;
        return i2 == 129 || i2 == 225 || i2 == 18;
    }

    /* renamed from: native, reason: not valid java name */
    public static boolean m37078native() {
        if (Build.VERSION.SDK_INT >= 29) {
            return Ccase.m37092if();
        }
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public static Bundle m37079new(int i) {
        if (Build.VERSION.SDK_INT >= 26) {
            return Cnew.m37099do(i);
        }
        return null;
    }

    /* renamed from: package, reason: not valid java name */
    public static String m37080package(Spanned spanned, int i) {
        return Build.VERSION.SDK_INT >= 24 ? Cfor.m37097new(spanned, i) : Html.toHtml(spanned);
    }

    @NonNull
    /* renamed from: public, reason: not valid java name */
    public static <T> T m37081public(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    @NonNull
    /* renamed from: return, reason: not valid java name */
    public static <T> T m37082return(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    /* renamed from: static, reason: not valid java name */
    public static void m37083static(View view, int i) {
        if (Build.VERSION.SDK_INT >= 22) {
            C0470do.m37093do(view, i);
        }
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    public static List<Integer> m37084super(Activity activity) {
        return Build.VERSION.SDK_INT >= 29 ? Ccase.m37091do(activity) : new ArrayList();
    }

    /* renamed from: switch, reason: not valid java name */
    public static void m37085switch(ImageView imageView, @Nullable ColorStateList colorStateList) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21 && colorStateList != null && imageView.getImageTintMode() == null) {
            imageView.setImageTintMode(PorterDuff.Mode.SRC_IN);
        }
        ImageViewCompat.setImageTintList(imageView, colorStateList);
        if (i == 21 && colorStateList == null) {
            imageView.refreshDrawableState();
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static int m37086this(Resources resources, int i) throws Resources.NotFoundException {
        return resources.getColor(i);
    }

    /* renamed from: throw, reason: not valid java name */
    public static boolean m37087throw() {
        return Build.VERSION.SDK_INT >= 25 && Cfor.m37096if();
    }

    /* renamed from: throws, reason: not valid java name */
    public static void m37088throws(EditText editText) {
        if (Build.VERSION.SDK_INT < 24 && m37077import(editText.getInputType()) && !TextUtils.isEmpty(editText.getHint())) {
            editText.setContentDescription(editText.getHint());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m37089try(TextView textView) {
        if (Build.VERSION.SDK_INT >= 26) {
            Cnew.m37101if(textView);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static boolean m37090while(Activity activity) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Cfor.m37095for(activity);
        }
        return false;
    }
}
