package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.support.v4.cf1;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R;
import com.bumptech.glide.request.Request;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.bumptech.glide.request.target.do, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cdo<T extends View, Z> implements Target<Z> {

    /* renamed from: case, reason: not valid java name */
    private static final String f10398case = "CustomViewTarget";

    /* renamed from: else, reason: not valid java name */
    @IdRes
    private static final int f10399else = R.id.glide_custom_view_target_tag;

    /* renamed from: do, reason: not valid java name */
    private final Cif f10400do;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private View.OnAttachStateChangeListener f10401for;

    /* renamed from: if, reason: not valid java name */
    public final T f10402if;

    /* renamed from: new, reason: not valid java name */
    private boolean f10403new;

    /* renamed from: try, reason: not valid java name */
    private boolean f10404try;

    /* renamed from: com.bumptech.glide.request.target.do$do, reason: invalid class name and collision with other inner class name */
    public class ViewOnAttachStateChangeListenerC0042do implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC0042do() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Cdo.this.m11989this();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            Cdo.this.m11988goto();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.target.do$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: case, reason: not valid java name */
        @Nullable
        @VisibleForTesting
        public static Integer f10406case;

        /* renamed from: try, reason: not valid java name */
        private static final int f10407try = 0;

        /* renamed from: do, reason: not valid java name */
        private final View f10408do;

        /* renamed from: for, reason: not valid java name */
        public boolean f10409for;

        /* renamed from: if, reason: not valid java name */
        private final List<SizeReadyCallback> f10410if = new ArrayList();

        /* renamed from: new, reason: not valid java name */
        @Nullable
        private ViewTreeObserverOnPreDrawListenerC0043do f10411new;

        /* renamed from: com.bumptech.glide.request.target.do$if$do, reason: invalid class name and collision with other inner class name */
        public static final class ViewTreeObserverOnPreDrawListenerC0043do implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: do, reason: not valid java name */
            private final WeakReference<Cif> f10412do;

            public ViewTreeObserverOnPreDrawListenerC0043do(@NonNull Cif cif) {
                this.f10412do = new WeakReference<>(cif);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(Cdo.f10398case, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("OnGlobalLayoutListener called attachStateListener=");
                    sb.append(this);
                }
                Cif cif = this.f10412do.get();
                if (cif == null) {
                    return true;
                }
                cif.m11998do();
                return true;
            }
        }

        public Cif(@NonNull View view) {
            this.f10408do = view;
        }

        /* renamed from: break, reason: not valid java name */
        private void m11990break(int i, int i2) {
            Iterator it = new ArrayList(this.f10410if).iterator();
            while (it.hasNext()) {
                ((SizeReadyCallback) it.next()).onSizeReady(i, i2);
            }
        }

        /* renamed from: case, reason: not valid java name */
        private int m11991case() {
            int paddingTop = this.f10408do.getPaddingTop() + this.f10408do.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f10408do.getLayoutParams();
            return m11996try(this.f10408do.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        /* renamed from: else, reason: not valid java name */
        private int m11992else() {
            int paddingLeft = this.f10408do.getPaddingLeft() + this.f10408do.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f10408do.getLayoutParams();
            return m11996try(this.f10408do.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        /* renamed from: for, reason: not valid java name */
        private static int m11993for(@NonNull Context context) {
            if (f10406case == null) {
                Display defaultDisplay = ((WindowManager) cf1.m900new((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f10406case = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f10406case.intValue();
        }

        /* renamed from: goto, reason: not valid java name */
        private boolean m11994goto(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: this, reason: not valid java name */
        private boolean m11995this(int i, int i2) {
            return m11994goto(i) && m11994goto(i2);
        }

        /* renamed from: try, reason: not valid java name */
        private int m11996try(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f10409for && this.f10408do.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f10408do.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable(Cdo.f10398case, 4);
            return m11993for(this.f10408do.getContext());
        }

        /* renamed from: catch, reason: not valid java name */
        public void m11997catch(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.f10410if.remove(sizeReadyCallback);
        }

        /* renamed from: do, reason: not valid java name */
        public void m11998do() {
            if (this.f10410if.isEmpty()) {
                return;
            }
            int iM11992else = m11992else();
            int iM11991case = m11991case();
            if (m11995this(iM11992else, iM11991case)) {
                m11990break(iM11992else, iM11991case);
                m11999if();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m11999if() {
            ViewTreeObserver viewTreeObserver = this.f10408do.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f10411new);
            }
            this.f10411new = null;
            this.f10410if.clear();
        }

        /* renamed from: new, reason: not valid java name */
        public void m12000new(@NonNull SizeReadyCallback sizeReadyCallback) {
            int iM11992else = m11992else();
            int iM11991case = m11991case();
            if (m11995this(iM11992else, iM11991case)) {
                sizeReadyCallback.onSizeReady(iM11992else, iM11991case);
                return;
            }
            if (!this.f10410if.contains(sizeReadyCallback)) {
                this.f10410if.add(sizeReadyCallback);
            }
            if (this.f10411new == null) {
                ViewTreeObserver viewTreeObserver = this.f10408do.getViewTreeObserver();
                ViewTreeObserverOnPreDrawListenerC0043do viewTreeObserverOnPreDrawListenerC0043do = new ViewTreeObserverOnPreDrawListenerC0043do(this);
                this.f10411new = viewTreeObserverOnPreDrawListenerC0043do;
                viewTreeObserver.addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0043do);
            }
        }
    }

    public Cdo(@NonNull T t) {
        this.f10402if = (T) cf1.m900new(t);
        this.f10400do = new Cif(t);
    }

    /* renamed from: break, reason: not valid java name */
    private void m11979break(@Nullable Object obj) {
        this.f10402if.setTag(f10399else, obj);
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private Object m11980if() {
        return this.f10402if.getTag(f10399else);
    }

    /* renamed from: new, reason: not valid java name */
    private void m11981new() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f10401for;
        if (onAttachStateChangeListener == null || this.f10404try) {
            return;
        }
        this.f10402if.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f10404try = true;
    }

    /* renamed from: try, reason: not valid java name */
    private void m11982try() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f10401for;
        if (onAttachStateChangeListener == null || !this.f10404try) {
            return;
        }
        this.f10402if.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f10404try = false;
    }

    /* renamed from: case */
    public abstract void mo11226case(@Nullable Drawable drawable);

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public final Cdo<T, Z> m11983catch(@IdRes int i) {
        return this;
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public final Cdo<T, Z> m11984class() {
        this.f10400do.f10409for = true;
        return this;
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public final Cdo<T, Z> m11985do() {
        if (this.f10401for != null) {
            return this;
        }
        this.f10401for = new ViewOnAttachStateChangeListenerC0042do();
        m11981new();
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public void m11986else(@Nullable Drawable drawable) {
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public final T m11987for() {
        return this.f10402if;
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public final Request getRequest() {
        Object objM11980if = m11980if();
        if (objM11980if == null) {
            return null;
        }
        if (objM11980if instanceof Request) {
            return (Request) objM11980if;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f10400do.m12000new(sizeReadyCallback);
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m11988goto() {
        Request request = getRequest();
        if (request != null) {
            this.f10403new = true;
            request.clear();
            this.f10403new = false;
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadCleared(@Nullable Drawable drawable) {
        this.f10400do.m11999if();
        mo11226case(drawable);
        if (this.f10403new) {
            return;
        }
        m11982try();
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void onLoadStarted(@Nullable Drawable drawable) {
        m11981new();
        m11986else(drawable);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f10400do.m11997catch(sizeReadyCallback);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void setRequest(@Nullable Request request) {
        m11979break(request);
    }

    /* renamed from: this, reason: not valid java name */
    public final void m11989this() {
        Request request = getRequest();
        if (request == null || !request.isCleared()) {
            return;
        }
        request.begin();
    }

    public String toString() {
        return "Target for: " + this.f10402if;
    }
}
