package com.wsw.cospa.utils;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.MessageQueue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: com.wsw.cospa.utils.throw, reason: invalid class name */
/* loaded from: classes.dex */
public class Cthrow {

    /* renamed from: com.wsw.cospa.utils.throw$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Application.ActivityLifecycleCallbacks {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ InputMethodManager f22745do;

        /* renamed from: for, reason: not valid java name */
        public final /* synthetic */ Field f22746for;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ Field f22747if;

        /* renamed from: new, reason: not valid java name */
        public final /* synthetic */ Method f22748new;

        public Cdo(InputMethodManager inputMethodManager, Field field, Field field2, Method method) {
            this.f22745do = inputMethodManager;
            this.f22747if = field;
            this.f22746for = field2;
            this.f22748new = method;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            activity.getWindow().getDecorView().getRootView().getViewTreeObserver().addOnGlobalFocusChangeListener(new Cif(this.f22745do, this.f22747if, this.f22746for, this.f22748new));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: com.wsw.cospa.utils.throw$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static class Cif implements MessageQueue.IdleHandler, View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalFocusChangeListener {

        /* renamed from: do, reason: not valid java name */
        private final InputMethodManager f22749do;

        /* renamed from: for, reason: not valid java name */
        private final Field f22750for;

        /* renamed from: if, reason: not valid java name */
        private final Field f22751if;

        /* renamed from: new, reason: not valid java name */
        private final Method f22752new;

        public Cif(InputMethodManager inputMethodManager, Field field, Field field2, Method method) {
            this.f22749do = inputMethodManager;
            this.f22751if = field;
            this.f22750for = field2;
            this.f22752new = method;
        }

        /* renamed from: do, reason: not valid java name */
        private void m27126do() {
            try {
                synchronized (this.f22751if.get(this.f22749do)) {
                    View view = (View) this.f22750for.get(this.f22749do);
                    if (view != null) {
                        boolean z = true;
                        if (view.getWindowVisibility() != 8) {
                            view.removeOnAttachStateChangeListener(this);
                            view.addOnAttachStateChangeListener(this);
                        } else {
                            Activity activityM27127if = m27127if(view.getContext());
                            if (activityM27127if == null || activityM27127if.getWindow() == null) {
                                this.f22752new.invoke(this.f22749do, new Object[0]);
                            } else {
                                View viewPeekDecorView = activityM27127if.getWindow().peekDecorView();
                                if (viewPeekDecorView.getWindowVisibility() == 8) {
                                    z = false;
                                }
                                if (z) {
                                    viewPeekDecorView.requestFocusFromTouch();
                                } else {
                                    this.f22752new.invoke(this.f22749do, new Object[0]);
                                }
                            }
                        }
                    }
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }

        /* renamed from: if, reason: not valid java name */
        private Activity m27127if(Context context) {
            Context baseContext;
            while (!(context instanceof Application)) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
                if (!(context instanceof ContextWrapper) || (baseContext = ((ContextWrapper) context).getBaseContext()) == context) {
                    return null;
                }
                context = baseContext;
            }
            return null;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public void onGlobalFocusChanged(View view, View view2) {
            if (view2 == null) {
                return;
            }
            if (view != null) {
                view.removeOnAttachStateChangeListener(this);
            }
            Looper.myQueue().removeIdleHandler(this);
            view2.addOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            Looper.myQueue().removeIdleHandler(this);
            Looper.myQueue().addIdleHandler(this);
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            m27126do();
            return false;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m27123do(Application application) throws NoSuchFieldException, NoSuchMethodException, SecurityException {
        int i = Build.VERSION.SDK_INT;
        if (i < 15 || i > 23) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) application.getSystemService("input_method");
        try {
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mServedView");
            declaredField2.setAccessible(true);
            Method declaredMethod = InputMethodManager.class.getDeclaredMethod("finishInputLocked", new Class[0]);
            declaredMethod.setAccessible(true);
            InputMethodManager.class.getDeclaredMethod("focusIn", View.class).setAccessible(true);
            application.registerActivityLifecycleCallbacks(new Cdo(inputMethodManager, declaredField2, declaredField, declaredMethod));
        } catch (NoSuchFieldException | NoSuchMethodException unused) {
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m27124for(Activity activity) throws IllegalAccessException, NoSuchFieldException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (activity == null) {
            return;
        }
        int i = 0;
        while (true) {
            i++;
            if (i == 5) {
                return;
            }
            try {
                InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
                if (inputMethodManager == null) {
                    continue;
                } else {
                    Method method = InputMethodManager.class.getMethod("windowDismissed", IBinder.class);
                    if (method != null) {
                        method.invoke(inputMethodManager, activity.getWindow().getDecorView().getWindowToken());
                    }
                    Field declaredField = InputMethodManager.class.getDeclaredField("mLastSrvView");
                    if (declaredField != null) {
                        declaredField.setAccessible(true);
                        declaredField.set(inputMethodManager, null);
                        return;
                    }
                    continue;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m27125if(Context context) {
        InputMethodManager inputMethodManager;
        if (context == null || (inputMethodManager = (InputMethodManager) context.getSystemService("input_method")) == null) {
            return;
        }
        String[] strArr = {"mCurRootView", "mServedView", "mNextServedView"};
        for (int i = 0; i < 3; i++) {
            try {
                Field declaredField = inputMethodManager.getClass().getDeclaredField(strArr[i]);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                Object obj = declaredField.get(inputMethodManager);
                if (obj != null && (obj instanceof View) && ((View) obj).getContext() == context) {
                    declaredField.set(inputMethodManager, null);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
