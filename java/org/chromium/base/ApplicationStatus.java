package org.chromium.base;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.support.v4.ed;
import android.support.v4.ii0;
import android.support.v4.lo0;
import android.view.Window;
import androidx.annotation.AnyThread;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.chromium.base.annotations.CalledByNative;

@lo0("base::android")
/* loaded from: classes3.dex */
public class ApplicationStatus {

    /* renamed from: do, reason: not valid java name */
    private static final String f32921do = "androidx.appcompat.app.ToolbarActionBar$ToolbarCallbackWrapper";

    /* renamed from: new, reason: not valid java name */
    @SuppressLint({"StaticFieldLeak"})
    private static Activity f32926new;

    /* renamed from: this, reason: not valid java name */
    public static final /* synthetic */ boolean f32927this = false;

    /* renamed from: try, reason: not valid java name */
    private static ApplicationStateListener f32928try;

    /* renamed from: if, reason: not valid java name */
    private static final Map<Activity, Cnew> f32925if = Collections.synchronizedMap(new HashMap());

    /* renamed from: for, reason: not valid java name */
    @ii0("sActivityInfo")
    @SuppressLint({"SupportAnnotationUsage"})
    private static int f32923for = 0;

    /* renamed from: case, reason: not valid java name */
    private static final ObserverList<ActivityStateListener> f32920case = new ObserverList<>();

    /* renamed from: else, reason: not valid java name */
    private static final ObserverList<ApplicationStateListener> f32922else = new ObserverList<>();

    /* renamed from: goto, reason: not valid java name */
    private static final ObserverList<WindowFocusChangedListener> f32924goto = new ObserverList<>();

    public interface ActivityStateListener {
        void onActivityStateChange(Activity activity, int i);
    }

    public interface ApplicationStateListener {
        void onApplicationStateChange(int i);
    }

    public interface Natives {
        void onApplicationStateChange(int i);
    }

    public interface WindowFocusChangedListener {
        void onWindowFocusChanged(Activity activity, boolean z);
    }

    /* renamed from: org.chromium.base.ApplicationStatus$do, reason: invalid class name */
    public class Cdo implements WindowFocusChangedListener {
        @Override // org.chromium.base.ApplicationStatus.WindowFocusChangedListener
        public void onWindowFocusChanged(Activity activity, boolean z) {
            int iM36702class;
            if (!z || activity == ApplicationStatus.f32926new || (iM36702class = ApplicationStatus.m36702class(activity)) == 6 || iM36702class == 5) {
                return;
            }
            Activity unused = ApplicationStatus.f32926new = activity;
        }
    }

    /* renamed from: org.chromium.base.ApplicationStatus$for, reason: invalid class name */
    public class Cfor implements Runnable {

        /* renamed from: org.chromium.base.ApplicationStatus$for$do, reason: invalid class name */
        public class Cdo implements ApplicationStateListener {
            public Cdo() {
            }

            @Override // org.chromium.base.ApplicationStatus.ApplicationStateListener
            public void onApplicationStateChange(int i) {
                org.chromium.base.Cif.m37118if().onApplicationStateChange(i);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ApplicationStatus.f32928try != null) {
                return;
            }
            ApplicationStateListener unused = ApplicationStatus.f32928try = new Cdo();
            ApplicationStatus.m36713native(ApplicationStatus.f32928try);
        }
    }

    /* renamed from: org.chromium.base.ApplicationStatus$if, reason: invalid class name */
    public class Cif implements Application.ActivityLifecycleCallbacks {

        /* renamed from: do, reason: not valid java name */
        public static final /* synthetic */ boolean f32930do = false;

        /* renamed from: do, reason: not valid java name */
        private void m36725do(Activity activity) {
            boolean z = ed.f1398if;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            ApplicationStatus.m36721throw(activity, 1);
            activity.getWindow().setCallback(ApplicationStatus.m36706else(activity, activity.getWindow().getCallback()));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            ApplicationStatus.m36721throw(activity, 6);
            m36725do(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            ApplicationStatus.m36721throw(activity, 4);
            m36725do(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            ApplicationStatus.m36721throw(activity, 3);
            m36725do(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            m36725do(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            ApplicationStatus.m36721throw(activity, 2);
            m36725do(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            ApplicationStatus.m36721throw(activity, 5);
            m36725do(activity);
        }
    }

    @VisibleForTesting
    /* renamed from: org.chromium.base.ApplicationStatus$try, reason: invalid class name */
    public static class Ctry implements InvocationHandler {

        /* renamed from: do, reason: not valid java name */
        private final Window.Callback f32933do;

        /* renamed from: if, reason: not valid java name */
        private final Activity f32934if;

        public Ctry(Activity activity, Window.Callback callback) {
            this.f32933do = callback;
            this.f32934if = activity;
        }

        /* renamed from: do, reason: not valid java name */
        public void m36729do(boolean z) {
            this.f32933do.onWindowFocusChanged(z);
            Iterator it = ApplicationStatus.f32924goto.iterator();
            while (it.hasNext()) {
                ((WindowFocusChangedListener) it.next()).onWindowFocusChanged(this.f32934if, z);
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (method.getName().equals("onWindowFocusChanged") && objArr.length == 1 && (objArr[0] instanceof Boolean)) {
                m36729do(((Boolean) objArr[0]).booleanValue());
                return null;
            }
            try {
                return method.invoke(this.f32933do, objArr);
            } catch (InvocationTargetException e) {
                if (e.getCause() instanceof AbstractMethodError) {
                    throw e.getCause();
                }
                throw e;
            }
        }
    }

    private ApplicationStatus() {
    }

    @MainThread
    /* renamed from: break, reason: not valid java name */
    public static Activity m36699break() {
        return f32926new;
    }

    @AnyThread
    /* renamed from: catch, reason: not valid java name */
    public static List<Activity> m36701catch() {
        ArrayList arrayList;
        Map<Activity, Cnew> map = f32925if;
        synchronized (map) {
            arrayList = new ArrayList(map.keySet());
        }
        return arrayList;
    }

    @AnyThread
    /* renamed from: class, reason: not valid java name */
    public static int m36702class(@Nullable Activity activity) {
        Cnew cnew;
        if (activity == null || (cnew = f32925if.get(activity)) == null) {
            return 6;
        }
        return cnew.m36728if();
    }

    @MainThread
    /* renamed from: const, reason: not valid java name */
    public static void m36703const(Application application) {
        synchronized (f32925if) {
            f32923for = 4;
        }
        m36717static(new Cdo());
        application.registerActivityLifecycleCallbacks(new Cif());
    }

    @MainThread
    /* renamed from: default, reason: not valid java name */
    public static void m36704default(ApplicationStateListener applicationStateListener) {
        f32922else.m36876class(applicationStateListener);
    }

    @VisibleForTesting
    /* renamed from: else, reason: not valid java name */
    public static Window.Callback m36706else(Activity activity, Window.Callback callback) {
        return (Window.Callback) Proxy.newProxyInstance(Window.Callback.class.getClassLoader(), new Class[]{Window.Callback.class}, new Ctry(activity, callback));
    }

    @MainThread
    /* renamed from: extends, reason: not valid java name */
    public static void m36707extends(WindowFocusChangedListener windowFocusChangedListener) {
        f32924goto.m36876class(windowFocusChangedListener);
    }

    @AnyThread
    /* renamed from: final, reason: not valid java name */
    public static boolean m36708final() {
        return f32925if.isEmpty();
    }

    @AnyThread
    @CalledByNative
    public static int getStateForApplication() {
        int i;
        synchronized (f32925if) {
            i = f32923for;
        }
        return i;
    }

    @MainThread
    /* renamed from: goto, reason: not valid java name */
    public static void m36710goto() {
        Map<Activity, Cnew> map = f32925if;
        synchronized (map) {
            f32922else.clear();
            f32920case.clear();
            map.clear();
            f32924goto.clear();
            f32923for = 0;
            f32926new = null;
            f32928try = null;
        }
    }

    @AnyThread
    @CalledByNative
    public static boolean hasVisibleActivities() {
        int stateForApplication = getStateForApplication();
        return stateForApplication == 1 || stateForApplication == 2;
    }

    @VisibleForTesting
    /* renamed from: import, reason: not valid java name */
    public static boolean m36712import(@Nullable Window.Callback callback) {
        if (callback == null) {
            return false;
        }
        if (callback.getClass().getName().equals(f32921do)) {
            return true;
        }
        if (Proxy.isProxyClass(callback.getClass())) {
            return Proxy.getInvocationHandler(callback) instanceof Ctry;
        }
        for (Class<?> superclass = callback.getClass(); superclass != Object.class; superclass = superclass.getSuperclass()) {
            for (Field field : superclass.getDeclaredFields()) {
                if (field.getType().isAssignableFrom(Window.Callback.class)) {
                    boolean zIsAccessible = field.isAccessible();
                    field.setAccessible(true);
                    try {
                        Window.Callback callback2 = (Window.Callback) field.get(callback);
                        field.setAccessible(zIsAccessible);
                        if (m36712import(callback2)) {
                            return true;
                        }
                    } catch (IllegalAccessException unused) {
                        field.setAccessible(zIsAccessible);
                    } catch (Throwable th) {
                        field.setAccessible(zIsAccessible);
                        throw th;
                    }
                }
            }
        }
        return false;
    }

    @MainThread
    /* renamed from: native, reason: not valid java name */
    public static void m36713native(ApplicationStateListener applicationStateListener) {
        f32922else.m36878try(applicationStateListener);
    }

    @SuppressLint({"NewApi"})
    @MainThread
    /* renamed from: public, reason: not valid java name */
    public static void m36715public(ActivityStateListener activityStateListener, Activity activity) {
        f32925if.get(activity).m36726do().m36878try(activityStateListener);
    }

    @CalledByNative
    private static void registerThreadSafeNativeApplicationStateListener() {
        ThreadUtils.m36933class(new Cfor());
    }

    @MainThread
    /* renamed from: return, reason: not valid java name */
    public static void m36716return(ActivityStateListener activityStateListener) {
        f32920case.m36878try(activityStateListener);
    }

    @MainThread
    /* renamed from: static, reason: not valid java name */
    public static void m36717static(WindowFocusChangedListener windowFocusChangedListener) {
        f32924goto.m36878try(windowFocusChangedListener);
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m36718super() {
        boolean z;
        synchronized (f32925if) {
            z = f32923for != 0;
        }
        return z;
    }

    @MainThread
    /* renamed from: switch, reason: not valid java name */
    public static void m36719switch() {
        Map<Activity, Cnew> map = f32925if;
        synchronized (map) {
            Iterator it = new HashSet(map.keySet()).iterator();
            while (it.hasNext()) {
                m36724while((Activity) it.next(), 6);
            }
        }
    }

    @ii0("sActivityInfo")
    /* renamed from: this, reason: not valid java name */
    private static int m36720this() {
        Iterator<Cnew> it = f32925if.values().iterator();
        boolean z = false;
        boolean z2 = false;
        while (it.hasNext()) {
            int iM36728if = it.next().m36728if();
            if (iM36728if != 4 && iM36728if != 5 && iM36728if != 6) {
                return 1;
            }
            if (iM36728if == 4) {
                z = true;
            } else if (iM36728if == 5) {
                z2 = true;
            }
        }
        if (z) {
            return 2;
        }
        return z2 ? 3 : 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:18:0x002f A[Catch: all -> 0x008a, TryCatch #0 {, blocks: (B:15:0x001b, B:16:0x0023, B:18:0x002f, B:20:0x0036, B:21:0x0038, B:22:0x003e), top: B:44:0x001b }] */
    /* renamed from: throw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m36721throw(Activity activity, int i) {
        Cnew cnew;
        if (activity == null) {
            throw new IllegalArgumentException("null activity is not supported");
        }
        if (f32926new == null || i == 1 || i == 3 || i == 2) {
            f32926new = activity;
        }
        int stateForApplication = getStateForApplication();
        Map<Activity, Cnew> map = f32925if;
        synchronized (map) {
            Cdo cdo = null;
            if (i == 1) {
                map.put(activity, new Cnew(cdo));
                cnew = map.get(activity);
                cnew.m36727for(i);
                if (i == 6) {
                    map.remove(activity);
                    if (activity == f32926new) {
                        f32926new = null;
                    }
                }
                f32923for = m36720this();
            } else {
                cnew = map.get(activity);
                cnew.m36727for(i);
                if (i == 6) {
                }
                f32923for = m36720this();
            }
        }
        Iterator<ActivityStateListener> it = cnew.m36726do().iterator();
        while (it.hasNext()) {
            it.next().onActivityStateChange(activity, i);
        }
        Iterator<ActivityStateListener> it2 = f32920case.iterator();
        while (it2.hasNext()) {
            it2.next().onActivityStateChange(activity, i);
        }
        int stateForApplication2 = getStateForApplication();
        if (stateForApplication2 != stateForApplication) {
            Iterator<ApplicationStateListener> it3 = f32922else.iterator();
            while (it3.hasNext()) {
                it3.next().onApplicationStateChange(stateForApplication2);
            }
        }
    }

    @MainThread
    /* renamed from: throws, reason: not valid java name */
    public static void m36722throws(ActivityStateListener activityStateListener) {
        f32920case.m36876class(activityStateListener);
        Map<Activity, Cnew> map = f32925if;
        synchronized (map) {
            Iterator<Cnew> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().m36726do().m36876class(activityStateListener);
            }
        }
    }

    @MainThread
    @VisibleForTesting
    /* renamed from: while, reason: not valid java name */
    public static void m36724while(Activity activity, int i) {
        m36721throw(activity, i);
    }

    /* renamed from: org.chromium.base.ApplicationStatus$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        private int f32931do;

        /* renamed from: if, reason: not valid java name */
        private ObserverList<ActivityStateListener> f32932if;

        private Cnew() {
            this.f32931do = 6;
            this.f32932if = new ObserverList<>();
        }

        /* renamed from: do, reason: not valid java name */
        public ObserverList<ActivityStateListener> m36726do() {
            return this.f32932if;
        }

        /* renamed from: for, reason: not valid java name */
        public void m36727for(int i) {
            this.f32931do = i;
        }

        /* renamed from: if, reason: not valid java name */
        public int m36728if() {
            return this.f32931do;
        }

        public /* synthetic */ Cnew(Cdo cdo) {
            this();
        }
    }
}
