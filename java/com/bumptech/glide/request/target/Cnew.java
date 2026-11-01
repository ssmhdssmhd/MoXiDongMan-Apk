package com.bumptech.glide.request.target;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.support.v4.cf1;
import android.support.v4.p7;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.R;
import com.bumptech.glide.request.Request;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Deprecated
/* renamed from: com.bumptech.glide.request.target.new, reason: invalid class name */
/* loaded from: classes.dex */
public abstract class Cnew<T extends View, Z> extends p7<Z> {

    /* renamed from: else, reason: not valid java name */
    private static final String f10425else = "ViewTarget";

    /* renamed from: goto, reason: not valid java name */
    private static boolean f10426goto;

    /* renamed from: this, reason: not valid java name */
    private static int f10427this = R.id.glide_custom_view_target_tag;

    /* renamed from: case, reason: not valid java name */
    private boolean f10428case;

    /* renamed from: for, reason: not valid java name */
    private final Cif f10429for;

    /* renamed from: if, reason: not valid java name */
    public final T f10430if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private View.OnAttachStateChangeListener f10431new;

    /* renamed from: try, reason: not valid java name */
    private boolean f10432try;

    /* renamed from: com.bumptech.glide.request.target.new$do, reason: invalid class name */
    public class Cdo implements View.OnAttachStateChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            Cnew.this.m12009case();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            Cnew.this.m12012try();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.request.target.new$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: case, reason: not valid java name */
        @Nullable
        @VisibleForTesting
        public static Integer f10434case;

        /* renamed from: try, reason: not valid java name */
        private static final int f10435try = 0;

        /* renamed from: do, reason: not valid java name */
        private final View f10436do;

        /* renamed from: for, reason: not valid java name */
        public boolean f10437for;

        /* renamed from: if, reason: not valid java name */
        private final List<SizeReadyCallback> f10438if = new ArrayList();

        /* renamed from: new, reason: not valid java name */
        @Nullable
        private Cdo f10439new;

        /* renamed from: com.bumptech.glide.request.target.new$if$do, reason: invalid class name */
        public static final class Cdo implements ViewTreeObserver.OnPreDrawListener {

            /* renamed from: do, reason: not valid java name */
            private final WeakReference<Cif> f10440do;

            public Cdo(@NonNull Cif cif) {
                this.f10440do = new WeakReference<>(cif);
            }

            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (Log.isLoggable(Cnew.f10425else, 2)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("OnGlobalLayoutListener called attachStateListener=");
                    sb.append(this);
                }
                Cif cif = this.f10440do.get();
                if (cif == null) {
                    return true;
                }
                cif.m12021do();
                return true;
            }
        }

        public Cif(@NonNull View view) {
            this.f10436do = view;
        }

        /* renamed from: break, reason: not valid java name */
        private void m12013break(int i, int i2) {
            Iterator it = new ArrayList(this.f10438if).iterator();
            while (it.hasNext()) {
                ((SizeReadyCallback) it.next()).onSizeReady(i, i2);
            }
        }

        /* renamed from: case, reason: not valid java name */
        private int m12014case() {
            int paddingTop = this.f10436do.getPaddingTop() + this.f10436do.getPaddingBottom();
            ViewGroup.LayoutParams layoutParams = this.f10436do.getLayoutParams();
            return m12019try(this.f10436do.getHeight(), layoutParams != null ? layoutParams.height : 0, paddingTop);
        }

        /* renamed from: else, reason: not valid java name */
        private int m12015else() {
            int paddingLeft = this.f10436do.getPaddingLeft() + this.f10436do.getPaddingRight();
            ViewGroup.LayoutParams layoutParams = this.f10436do.getLayoutParams();
            return m12019try(this.f10436do.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingLeft);
        }

        /* renamed from: for, reason: not valid java name */
        private static int m12016for(@NonNull Context context) {
            if (f10434case == null) {
                Display defaultDisplay = ((WindowManager) cf1.m900new((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
                Point point = new Point();
                defaultDisplay.getSize(point);
                f10434case = Integer.valueOf(Math.max(point.x, point.y));
            }
            return f10434case.intValue();
        }

        /* renamed from: goto, reason: not valid java name */
        private boolean m12017goto(int i) {
            return i > 0 || i == Integer.MIN_VALUE;
        }

        /* renamed from: this, reason: not valid java name */
        private boolean m12018this(int i, int i2) {
            return m12017goto(i) && m12017goto(i2);
        }

        /* renamed from: try, reason: not valid java name */
        private int m12019try(int i, int i2, int i3) {
            int i4 = i2 - i3;
            if (i4 > 0) {
                return i4;
            }
            if (this.f10437for && this.f10436do.isLayoutRequested()) {
                return 0;
            }
            int i5 = i - i3;
            if (i5 > 0) {
                return i5;
            }
            if (this.f10436do.isLayoutRequested() || i2 != -2) {
                return 0;
            }
            Log.isLoggable(Cnew.f10425else, 4);
            return m12016for(this.f10436do.getContext());
        }

        /* renamed from: catch, reason: not valid java name */
        public void m12020catch(@NonNull SizeReadyCallback sizeReadyCallback) {
            this.f10438if.remove(sizeReadyCallback);
        }

        /* renamed from: do, reason: not valid java name */
        public void m12021do() {
            if (this.f10438if.isEmpty()) {
                return;
            }
            int iM12015else = m12015else();
            int iM12014case = m12014case();
            if (m12018this(iM12015else, iM12014case)) {
                m12013break(iM12015else, iM12014case);
                m12022if();
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m12022if() {
            ViewTreeObserver viewTreeObserver = this.f10436do.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener(this.f10439new);
            }
            this.f10439new = null;
            this.f10438if.clear();
        }

        /* renamed from: new, reason: not valid java name */
        public void m12023new(@NonNull SizeReadyCallback sizeReadyCallback) {
            int iM12015else = m12015else();
            int iM12014case = m12014case();
            if (m12018this(iM12015else, iM12014case)) {
                sizeReadyCallback.onSizeReady(iM12015else, iM12014case);
                return;
            }
            if (!this.f10438if.contains(sizeReadyCallback)) {
                this.f10438if.add(sizeReadyCallback);
            }
            if (this.f10439new == null) {
                ViewTreeObserver viewTreeObserver = this.f10436do.getViewTreeObserver();
                Cdo cdo = new Cdo(this);
                this.f10439new = cdo;
                viewTreeObserver.addOnPreDrawListener(cdo);
            }
        }
    }

    public Cnew(@NonNull T t) {
        this.f10430if = (T) cf1.m900new(t);
        this.f10429for = new Cif(t);
    }

    /* renamed from: else, reason: not valid java name */
    private void m12004else(@Nullable Object obj) {
        f10426goto = true;
        this.f10430if.setTag(f10427this, obj);
    }

    /* renamed from: for, reason: not valid java name */
    private void m12005for() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f10431new;
        if (onAttachStateChangeListener == null || this.f10428case) {
            return;
        }
        this.f10430if.addOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f10428case = true;
    }

    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    public static void m12006goto(int i) {
        if (f10426goto) {
            throw new IllegalArgumentException("You cannot set the tag id more than once or change the tag id after the first request has been made");
        }
        f10427this = i;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private Object m12007if() {
        return this.f10430if.getTag(f10427this);
    }

    /* renamed from: new, reason: not valid java name */
    private void m12008new() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.f10431new;
        if (onAttachStateChangeListener == null || !this.f10428case) {
            return;
        }
        this.f10430if.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        this.f10428case = false;
    }

    /* renamed from: case, reason: not valid java name */
    public void m12009case() {
        Request request = getRequest();
        if (request == null || !request.isCleared()) {
            return;
        }
        request.begin();
    }

    @NonNull
    /* renamed from: do, reason: not valid java name */
    public final Cnew<T, Z> m12010do() {
        if (this.f10431new != null) {
            return this;
        }
        this.f10431new = new Cdo();
        m12005for();
        return this;
    }

    @Override // android.support.v4.p7, com.bumptech.glide.request.target.Target
    @Nullable
    public Request getRequest() {
        Object objM12007if = m12007if();
        if (objM12007if == null) {
            return null;
        }
        if (objM12007if instanceof Request) {
            return (Request) objM12007if;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // com.bumptech.glide.request.target.Target
    @CallSuper
    public void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f10429for.m12023new(sizeReadyCallback);
    }

    @NonNull
    public T getView() {
        return this.f10430if;
    }

    @Override // android.support.v4.p7, com.bumptech.glide.request.target.Target
    @CallSuper
    public void onLoadCleared(@Nullable Drawable drawable) {
        super.onLoadCleared(drawable);
        this.f10429for.m12022if();
        if (this.f10432try) {
            return;
        }
        m12008new();
    }

    @Override // android.support.v4.p7, com.bumptech.glide.request.target.Target
    @CallSuper
    public void onLoadStarted(@Nullable Drawable drawable) {
        super.onLoadStarted(drawable);
        m12005for();
    }

    @Override // com.bumptech.glide.request.target.Target
    @CallSuper
    public void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
        this.f10429for.m12020catch(sizeReadyCallback);
    }

    @Override // android.support.v4.p7, com.bumptech.glide.request.target.Target
    public void setRequest(@Nullable Request request) {
        m12004else(request);
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public final Cnew<T, Z> m12011this() {
        this.f10429for.f10437for = true;
        return this;
    }

    public String toString() {
        return "Target for: " + this.f10430if;
    }

    /* renamed from: try, reason: not valid java name */
    public void m12012try() {
        Request request = getRequest();
        if (request != null) {
            this.f10432try = true;
            request.clear();
            this.f10432try = false;
        }
    }

    @Deprecated
    public Cnew(@NonNull T t, boolean z) {
        this(t);
        if (z) {
            m12011this();
        }
    }
}
