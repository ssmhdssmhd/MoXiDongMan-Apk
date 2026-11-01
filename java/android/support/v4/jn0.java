package android.support.v4;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.TransactionTooLargeException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.BundleCompat;
import java.io.Serializable;
import java.util.ArrayList;
import org.chromium.base.BuildInfo;

/* loaded from: classes3.dex */
public class jn0 {

    /* renamed from: do, reason: not valid java name */
    private static final String f3152do = "IntentUtils";

    /* renamed from: for, reason: not valid java name */
    @VisibleForTesting
    public static final String f3153for = "com.google.android.gms.instantapps.routing.EphemeralInstallerActivity";

    /* renamed from: if, reason: not valid java name */
    public static final String f3154if = "android-app";

    /* renamed from: new, reason: not valid java name */
    private static final int f3155new = 33554432;

    /* renamed from: try, reason: not valid java name */
    public static final /* synthetic */ boolean f3156try = false;

    /* renamed from: abstract, reason: not valid java name */
    public static String m3935abstract(Intent intent, String str) {
        try {
            return intent.getStringExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getStringExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static IBinder m3936break(Bundle bundle, String str) {
        if (bundle == null) {
            return null;
        }
        try {
            return BundleCompat.getBinder(bundle, str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getBinder failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public static boolean m3937case(Intent intent) {
        return (intent.getFlags() & 268959744) != 0;
    }

    /* renamed from: catch, reason: not valid java name */
    public static IBinder m3938catch(Intent intent, String str) {
        if (intent.hasExtra(str)) {
            return m3936break(intent.getExtras(), str);
        }
        return null;
    }

    /* renamed from: class, reason: not valid java name */
    public static boolean m3939class(Bundle bundle, String str, boolean z) {
        try {
            return bundle.getBoolean(str, z);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getBoolean failed on bundle " + bundle, new Object[0]);
            return z;
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static boolean m3940const(Intent intent, String str, boolean z) {
        try {
            return intent.getBooleanExtra(str, z);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getBooleanExtra failed on intent " + intent, new Object[0]);
            return z;
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public static boolean m3941continue(Intent intent, String str) {
        try {
            return intent.hasExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "hasExtra failed on intent " + intent, new Object[0]);
            return false;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static <T extends Parcelable> ArrayList<T> m3942default(Bundle bundle, String str) {
        try {
            return bundle.getParcelableArrayList(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getParcelableArrayList failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static <T extends Parcelable> ArrayList<T> m3943do(Intent intent, String str) {
        try {
            return intent.getParcelableArrayListExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getParcelableArrayListExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m3944else(Intent intent) {
        return intent != null && TextUtils.equals(intent.getAction(), "android.intent.action.MAIN") && intent.hasCategory("android.intent.category.LAUNCHER") && (intent.getFlags() & 1048576) == 0;
    }

    /* renamed from: extends, reason: not valid java name */
    public static <T extends Parcelable> T m3945extends(Intent intent, String str) {
        try {
            return (T) intent.getParcelableExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getParcelableExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static Bundle m3946final(Bundle bundle, String str) {
        try {
            return bundle.getBundle(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getBundle failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }

    /* renamed from: finally, reason: not valid java name */
    public static <T extends Serializable> T m3947finally(Intent intent, String str) {
        try {
            return (T) intent.getSerializableExtra(str);
        } catch (ClassCastException e) {
            rv0.m7156if(f3152do, "Invalide class for Serializable: " + str, e);
            return null;
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getSerializableExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static int m3948for(boolean z) {
        if (!z && Build.VERSION.SDK_INT >= 23) {
            return e2.m1613final();
        }
        if (z && BuildInfo.m36737new()) {
            return f3155new;
        }
        return 0;
    }

    /* renamed from: goto, reason: not valid java name */
    private static Intent m3949goto(Intent intent, Exception exc) {
        rv0.m7156if(f3152do, "Invalid incoming intent.", exc);
        return intent.replaceExtras((Bundle) null);
    }

    /* renamed from: if, reason: not valid java name */
    public static int m3950if(Intent intent) {
        Parcel parcelObtain = Parcel.obtain();
        intent.writeToParcel(parcelObtain, 0);
        return parcelObtain.dataSize();
    }

    /* renamed from: import, reason: not valid java name */
    public static int m3951import(Bundle bundle, String str, int i) {
        try {
            return bundle.getInt(str, i);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getInt failed on bundle " + bundle, new Object[0]);
            return i;
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m3952interface(Context context, Intent intent) {
        return m3957protected(context, intent, null);
    }

    /* renamed from: native, reason: not valid java name */
    public static int[] m3953native(Bundle bundle, String str) {
        try {
            return bundle.getIntArray(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getIntArray failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static boolean m3954new(Context context, Intent intent) {
        boolean z = !TextUtils.isEmpty(intent.getPackage());
        boolean z2 = z && context.getPackageName().equals(intent.getPackage());
        boolean z3 = intent.getComponent() != null;
        if (z3 && context.getPackageName().equals(intent.getComponent().getPackageName())) {
            if (z) {
                return z2;
            }
            return true;
        }
        if (z2) {
            return !z3;
        }
        return false;
    }

    /* renamed from: package, reason: not valid java name */
    public static String m3955package(Bundle bundle, String str) {
        try {
            return bundle.getString(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getString failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }

    /* renamed from: private, reason: not valid java name */
    public static ArrayList<String> m3956private(Intent intent, String str) {
        try {
            return intent.getStringArrayListExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getStringArrayListExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static boolean m3957protected(Context context, Intent intent, @Nullable Bundle bundle) {
        try {
            context.startActivity(intent, bundle);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static int[] m3958public(Intent intent, String str) {
        try {
            return intent.getIntArrayExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getIntArrayExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: return, reason: not valid java name */
    public static int m3959return(Intent intent, String str, int i) {
        try {
            return intent.getIntExtra(str, i);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getIntExtra failed on intent " + intent, new Object[0]);
            return i;
        }
    }

    /* renamed from: static, reason: not valid java name */
    public static long m3960static(Intent intent, String str, long j) {
        try {
            return intent.getLongExtra(str, j);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getLongExtra failed on intent " + intent, new Object[0]);
            return j;
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static void m3961strictfp(Intent intent, String str, IBinder iBinder) {
        if (intent == null) {
            return;
        }
        Bundle bundle = new Bundle();
        try {
            BundleCompat.putBinder(bundle, str, iBinder);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "putBinder failed on bundle " + bundle, new Object[0]);
        }
        intent.putExtras(bundle);
    }

    /* renamed from: super, reason: not valid java name */
    public static Bundle m3962super(Intent intent, String str) {
        try {
            return intent.getBundleExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getBundleExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public static <T extends Parcelable> T m3963switch(Bundle bundle, String str) {
        try {
            return (T) bundle.getParcelable(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getParcelable failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m3964this(RuntimeException runtimeException, Intent intent) {
        if (!(runtimeException.getCause() instanceof TransactionTooLargeException)) {
            throw runtimeException;
        }
        rv0.m7156if(f3152do, "Could not resolve Activity for intent " + intent.toString(), runtimeException);
    }

    /* renamed from: throw, reason: not valid java name */
    public static byte[] m3965throw(Intent intent, String str) {
        try {
            return intent.getByteArrayExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getByteArrayExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: throws, reason: not valid java name */
    public static Parcelable[] m3966throws(Intent intent, String str) {
        try {
            return intent.getParcelableArrayExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getParcelableArrayExtra failed on intent " + intent, new Object[0]);
            return null;
        }
    }

    /* renamed from: transient, reason: not valid java name */
    public static Intent m3967transient(Intent intent) {
        if (intent == null) {
            return null;
        }
        try {
            intent.getBooleanExtra("TriggerUnparcel", false);
            return intent;
        } catch (BadParcelableException e) {
            return m3949goto(intent, e);
        } catch (RuntimeException e2) {
            if (e2.getCause() instanceof ClassNotFoundException) {
                return m3949goto(intent, e2);
            }
            throw e2;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static boolean m3968try(ResolveInfo resolveInfo) {
        if (resolveInfo == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return resolveInfo.isInstantAppAvailable;
        }
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        if (activityInfo != null) {
            return f3153for.equals(activityInfo.name);
        }
        return false;
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m3969volatile(Intent intent, String str) {
        try {
            intent.removeExtra(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "removeExtra failed on intent " + intent, new Object[0]);
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static float[] m3970while(Bundle bundle, String str) {
        try {
            return bundle.getFloatArray(str);
        } catch (Throwable unused) {
            rv0.m7156if(f3152do, "getFloatArray failed on bundle " + bundle, new Object[0]);
            return null;
        }
    }
}
