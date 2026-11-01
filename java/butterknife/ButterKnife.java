package butterknife;

import android.app.Activity;
import android.app.Dialog;
import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ButterKnife {

    /* renamed from: do, reason: not valid java name */
    private static final String f8697do = "ButterKnife";

    /* renamed from: for, reason: not valid java name */
    @VisibleForTesting
    public static final Map<Class<?>, Constructor<? extends Unbinder>> f8698for = new LinkedHashMap();

    /* renamed from: if, reason: not valid java name */
    private static boolean f8699if;

    private ButterKnife() {
        throw new AssertionError("No instances.");
    }

    @NonNull
    @UiThread
    /* renamed from: case, reason: not valid java name */
    public static Unbinder m10352case(@NonNull Object obj, @NonNull View view) throws NoSuchMethodException, SecurityException {
        Class<?> cls = obj.getClass();
        if (f8699if) {
            StringBuilder sb = new StringBuilder();
            sb.append("Looking up binding for ");
            sb.append(cls.getName());
        }
        Constructor<? extends Unbinder> constructorM10354else = m10354else(cls);
        if (constructorM10354else == null) {
            return Unbinder.EMPTY;
        }
        try {
            return constructorM10354else.newInstance(obj, view);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Unable to invoke " + constructorM10354else, e);
        } catch (InstantiationException e2) {
            throw new RuntimeException("Unable to invoke " + constructorM10354else, e2);
        } catch (InvocationTargetException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unable to create binding instance.", cause);
        }
    }

    @NonNull
    @UiThread
    /* renamed from: do, reason: not valid java name */
    public static Unbinder m10353do(@NonNull Activity activity) {
        return m10352case(activity, activity.getWindow().getDecorView());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    @CheckResult
    @UiThread
    /* renamed from: else, reason: not valid java name */
    private static Constructor<? extends Unbinder> m10354else(Class<?> cls) throws NoSuchMethodException, SecurityException {
        Constructor<? extends Unbinder> constructorM10354else;
        Map<Class<?>, Constructor<? extends Unbinder>> map = f8698for;
        Constructor<? extends Unbinder> constructor = map.get(cls);
        if (constructor != null || map.containsKey(cls)) {
            return constructor;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("androidx.")) {
            return null;
        }
        try {
            constructorM10354else = cls.getClassLoader().loadClass(name + "_ViewBinding").getConstructor(cls, View.class);
            boolean z = f8699if;
        } catch (ClassNotFoundException unused) {
            if (f8699if) {
                StringBuilder sb = new StringBuilder();
                sb.append("Not found. Trying superclass ");
                sb.append(cls.getSuperclass().getName());
            }
            constructorM10354else = m10354else(cls.getSuperclass());
        } catch (NoSuchMethodException e) {
            throw new RuntimeException("Unable to find binding constructor for " + name, e);
        }
        f8698for.put(cls, constructorM10354else);
        return constructorM10354else;
    }

    @NonNull
    @UiThread
    /* renamed from: for, reason: not valid java name */
    public static Unbinder m10355for(@NonNull View view) {
        return m10352case(view, view);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m10356goto(boolean z) {
        f8699if = z;
    }

    @NonNull
    @UiThread
    /* renamed from: if, reason: not valid java name */
    public static Unbinder m10357if(@NonNull Dialog dialog) {
        return m10352case(dialog, dialog.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    /* renamed from: new, reason: not valid java name */
    public static Unbinder m10358new(@NonNull Object obj, @NonNull Activity activity) {
        return m10352case(obj, activity.getWindow().getDecorView());
    }

    @NonNull
    @UiThread
    /* renamed from: try, reason: not valid java name */
    public static Unbinder m10359try(@NonNull Object obj, @NonNull Dialog dialog) {
        return m10352case(obj, dialog.getWindow().getDecorView());
    }
}
