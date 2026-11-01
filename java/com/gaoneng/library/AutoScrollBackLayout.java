package com.gaoneng.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.hz;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.gaoneng.library.ScrollUtil;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;

/* loaded from: classes.dex */
public class AutoScrollBackLayout extends FrameLayout {

    /* renamed from: class, reason: not valid java name */
    public static final String f10936class = "AutoScrollBackLayout";

    /* renamed from: const, reason: not valid java name */
    private static final int f10937const = 1500;

    /* renamed from: break, reason: not valid java name */
    private int f10938break;

    /* renamed from: case, reason: not valid java name */
    private Animation f10939case;

    /* renamed from: catch, reason: not valid java name */
    private int f10940catch;

    /* renamed from: do, reason: not valid java name */
    public boolean f10941do;

    /* renamed from: else, reason: not valid java name */
    private int f10942else;

    /* renamed from: for, reason: not valid java name */
    private ImageView f10943for;

    /* renamed from: goto, reason: not valid java name */
    private Cnew f10944goto;

    /* renamed from: if, reason: not valid java name */
    private View f10945if;

    /* renamed from: new, reason: not valid java name */
    private boolean f10946new;

    /* renamed from: this, reason: not valid java name */
    private Cif f10947this;

    /* renamed from: try, reason: not valid java name */
    private Animation f10948try;

    /* renamed from: com.gaoneng.library.AutoScrollBackLayout$case, reason: invalid class name */
    public class Ccase implements InvocationHandler {

        /* renamed from: do, reason: not valid java name */
        private AbsListView.OnScrollListener f10949do;

        public Ccase(AbsListView.OnScrollListener onScrollListener) {
            this.f10949do = onScrollListener;
        }

        /* renamed from: do, reason: not valid java name */
        public AbsListView.OnScrollListener m12374do() {
            return (AbsListView.OnScrollListener) Proxy.newProxyInstance(this.f10949do.getClass().getClassLoader(), new Class[]{AbsListView.OnScrollListener.class}, this);
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (AutoScrollBackLayout.this.f10941do) {
                StringBuilder sb = new StringBuilder();
                sb.append("动态代理拦截  method=");
                sb.append(method.getName());
            }
            if (AutoScrollBackLayout.this.f10944goto != null) {
                if (method.getName().equals("onScroll")) {
                    AutoScrollBackLayout.this.f10944goto.m12375do((View) objArr[0], ((Integer) objArr[1]).intValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
                } else if (method.getName().equals("onScrollStateChanged")) {
                    AutoScrollBackLayout.this.f10944goto.m12376if((View) objArr[0], ((Integer) objArr[1]).intValue());
                }
            }
            return method.invoke(this.f10949do, objArr);
        }
    }

    /* renamed from: com.gaoneng.library.AutoScrollBackLayout$do, reason: invalid class name */
    public class Cdo extends RecyclerView.OnScrollListener {
        public Cdo() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (AutoScrollBackLayout.this.f10944goto != null) {
                AutoScrollBackLayout.this.f10944goto.m12376if(recyclerView, i);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            if (AutoScrollBackLayout.this.f10944goto != null) {
                AutoScrollBackLayout.this.f10944goto.m12375do(recyclerView, i2, 0, 0);
            }
        }
    }

    /* renamed from: com.gaoneng.library.AutoScrollBackLayout$for, reason: invalid class name */
    public class Cfor implements AbsListView.OnScrollListener {
        private Cfor() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
        }

        public /* synthetic */ Cfor(AutoScrollBackLayout autoScrollBackLayout, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.gaoneng.library.AutoScrollBackLayout$if, reason: invalid class name */
    public class Cif implements Runnable {
        private Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AutoScrollBackLayout.this.m12369class(true);
        }

        public /* synthetic */ Cif(AutoScrollBackLayout autoScrollBackLayout, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.gaoneng.library.AutoScrollBackLayout$new, reason: invalid class name */
    public class Cnew {

        /* renamed from: do, reason: not valid java name */
        private int f10954do;

        /* renamed from: if, reason: not valid java name */
        private int f10956if;

        private Cnew() {
        }

        /* renamed from: do, reason: not valid java name */
        public void m12375do(View view, int i, int i2, int i3) {
            if (this.f10954do == 0) {
                return;
            }
            this.f10956if = AutoScrollBackLayout.this.m12357catch(i);
            String str = view.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(view));
            if (this.f10956if >= AutoScrollBackLayout.this.f10938break) {
                if (AutoScrollBackLayout.this.f10941do) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    sb.append(" show()!!! scrollState=");
                    sb.append(this.f10954do);
                    sb.append(",scrollDistance=");
                    sb.append(this.f10956if);
                    sb.append(",firstVisibleItem=");
                    sb.append(i);
                }
                if (AutoScrollBackLayout.this.f10947this != null) {
                    AutoScrollBackLayout autoScrollBackLayout = AutoScrollBackLayout.this;
                    autoScrollBackLayout.removeCallbacks(autoScrollBackLayout.f10947this);
                    AutoScrollBackLayout autoScrollBackLayout2 = AutoScrollBackLayout.this;
                    autoScrollBackLayout2.postDelayed(autoScrollBackLayout2.f10947this, 1500L);
                }
                AutoScrollBackLayout.this.m12370import(true);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m12376if(View view, int i) {
            this.f10954do = i;
            String str = view.getClass().getSimpleName() + "@" + Integer.toHexString(System.identityHashCode(view));
            if (AutoScrollBackLayout.this.f10941do) {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(" scrollState=");
                sb.append(i);
                sb.append(",scrollDistance=");
                sb.append(this.f10956if);
                sb.append(",showScrollDistance=");
                sb.append(AutoScrollBackLayout.this.f10938break);
            }
            if (i == 0) {
                if (AutoScrollBackLayout.this.f10941do) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str);
                    sb2.append(" hide()!!! scrollState=");
                    sb2.append(0);
                    sb2.append(",scrollDistance=");
                    sb2.append(this.f10956if);
                    sb2.append(",showScrollDistance=");
                    sb2.append(AutoScrollBackLayout.this.f10938break);
                }
                if (AutoScrollBackLayout.this.f10947this != null) {
                    AutoScrollBackLayout autoScrollBackLayout = AutoScrollBackLayout.this;
                    autoScrollBackLayout.removeCallbacks(autoScrollBackLayout.f10947this);
                    AutoScrollBackLayout autoScrollBackLayout2 = AutoScrollBackLayout.this;
                    autoScrollBackLayout2.postDelayed(autoScrollBackLayout2.f10947this, this.f10956if >= AutoScrollBackLayout.this.f10938break ? 1500L : 0L);
                }
            }
        }

        public /* synthetic */ Cnew(AutoScrollBackLayout autoScrollBackLayout, Cdo cdo) {
            this();
        }
    }

    /* renamed from: com.gaoneng.library.AutoScrollBackLayout$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {

        /* renamed from: com.gaoneng.library.AutoScrollBackLayout$try$do, reason: invalid class name */
        public class Cdo implements ScrollUtil.ScrollToTopListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f10958do;

            public Cdo(View view) {
                this.f10958do = view;
            }

            @Override // com.gaoneng.library.ScrollUtil.ScrollToTopListener
            public void scrollComplete() {
                this.f10958do.post(AutoScrollBackLayout.this.f10947this);
            }
        }

        private Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ScrollUtil.m12377do(AutoScrollBackLayout.this.f10945if, new Cdo(view));
        }

        public /* synthetic */ Ctry(AutoScrollBackLayout autoScrollBackLayout, Cdo cdo) {
            this();
        }
    }

    public AutoScrollBackLayout(@NonNull Context context) {
        super(context);
        this.f10941do = false;
        m12361final(context, null, 0);
    }

    /* renamed from: break, reason: not valid java name */
    private View m12355break(View view) {
        View viewM12355break = null;
        if (view != null) {
            if ((view instanceof AbsListView) || (view instanceof RecyclerView)) {
                return view;
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    viewM12355break = m12355break(viewGroup.getChildAt(i));
                }
                return viewM12355break;
            }
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    private void m12356case() {
        ((RecyclerView) this.f10945if).addOnScrollListener(new Cdo());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: catch, reason: not valid java name */
    public int m12357catch(int i) {
        View view = this.f10945if;
        if (view == null) {
            return 0;
        }
        if (view instanceof AbsListView) {
            AbsListView absListView = (AbsListView) view;
            View childAt = absListView.getChildAt(0);
            if (childAt == null) {
                return 0;
            }
            return (absListView.getFirstVisiblePosition() * childAt.getHeight()) - childAt.getTop();
        }
        if (!(view instanceof RecyclerView)) {
            return 0;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (!(layoutManager instanceof LinearLayoutManager)) {
            return i;
        }
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
        View childAt2 = recyclerView.getChildAt(0);
        if (childAt2 == null) {
            return 0;
        }
        return (-childAt2.getTop()) + (linearLayoutManager.findFirstVisibleItemPosition() * childAt2.getHeight());
    }

    /* renamed from: const, reason: not valid java name */
    private void m12358const() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mOnScrollListener");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(this.f10945if);
            AbsListView.OnScrollListener cfor = obj == null ? new Cfor(this, null) : (AbsListView.OnScrollListener) obj;
            AbsListView.OnScrollListener onScrollListenerM12374do = new Ccase(cfor).m12374do();
            if (this.f10941do) {
                StringBuilder sb = new StringBuilder();
                sb.append("target=");
                sb.append(cfor.getClass().getName());
                sb.append(" ,proxy=");
                sb.append(onScrollListenerM12374do.getClass().getName());
                sb.append(", proxied interfaces=");
                sb.append(Arrays.toString(onScrollListenerM12374do.getClass().getInterfaces()));
            }
            declaredField.set(this.f10945if, onScrollListenerM12374do);
        } catch (Exception e) {
            e.toString();
        }
    }

    /* renamed from: else, reason: not valid java name */
    private void m12360else() {
        if (getChildCount() > 0) {
            this.f10945if = m12355break(this);
            if (this.f10941do) {
                StringBuilder sb = new StringBuilder();
                sb.append("find wrapView=");
                View view = this.f10945if;
                sb.append(view == null ? null : view.getClass().getName());
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m12361final(Context context, AttributeSet attributeSet, int i) {
        if (isInEditMode()) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutoScrollBackLayout, i, 0);
        this.f10946new = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AutoScrollBackLayout_show_scroll, true);
        this.f10948try = AnimationUtils.loadAnimation(getContext(), typedArrayObtainStyledAttributes.getResourceId(R.styleable.AutoScrollBackLayout_show_animation, R.anim.fab_scale_up));
        this.f10939case = AnimationUtils.loadAnimation(getContext(), typedArrayObtainStyledAttributes.getResourceId(R.styleable.AutoScrollBackLayout_hide_animation, R.anim.fab_scale_down));
        this.f10942else = typedArrayObtainStyledAttributes.getInt(R.styleable.AutoScrollBackLayout_scroll_gravity, 81);
        this.f10938break = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AutoScrollBackLayout_scroll_distance, 100);
        this.f10940catch = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AutoScrollBackLayout_auto_arrow_icon, R.drawable.go_top);
        typedArrayObtainStyledAttributes.recycle();
        Cdo cdo = null;
        this.f10944goto = new Cnew(this, cdo);
        this.f10947this = new Cif(this, cdo);
    }

    /* renamed from: goto, reason: not valid java name */
    private void m12363goto() {
        ImageView imageView = new ImageView(getContext());
        this.f10943for = imageView;
        imageView.setImageResource(this.f10940catch);
        if (this.f10946new) {
            this.f10943for.setVisibility(4);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = this.f10942else;
            layoutParams.bottomMargin = hz.m3172do(getContext(), 16.0f);
            this.f10943for.setOnClickListener(new Ctry(this, null));
            addView(this.f10943for, layoutParams);
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m12366throw() {
        this.f10948try.cancel();
        ImageView imageView = this.f10943for;
        if (imageView != null) {
            imageView.startAnimation(this.f10939case);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private void m12368while() {
        this.f10939case.cancel();
        ImageView imageView = this.f10943for;
        if (imageView != null) {
            imageView.startAnimation(this.f10948try);
        }
    }

    /* renamed from: class, reason: not valid java name */
    public void m12369class(boolean z) {
        if (m12372super()) {
            return;
        }
        if (z) {
            m12366throw();
        }
        ImageView imageView = this.f10943for;
        if (imageView != null) {
            imageView.setVisibility(4);
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m12370import(boolean z) {
        if (m12372super()) {
            if (z) {
                m12368while();
            }
            ImageView imageView = this.f10943for;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m12371native(boolean z) {
        if (m12372super()) {
            m12370import(z);
        } else {
            m12369class(z);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Cif cif = this.f10947this;
        if (cif != null) {
            removeCallbacks(cif);
        }
        ImageView imageView = this.f10943for;
        if (imageView != null) {
            imageView.clearAnimation();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        m12360else();
        m12363goto();
    }

    /* renamed from: super, reason: not valid java name */
    public boolean m12372super() {
        ImageView imageView = this.f10943for;
        return imageView != null && imageView.getVisibility() == 4;
    }

    /* renamed from: this, reason: not valid java name */
    public void m12373this() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View view = this.f10945if;
        if (view == null || this.f10943for == null || !this.f10946new) {
            return;
        }
        if (view instanceof AbsListView) {
            m12358const();
        } else if (view instanceof RecyclerView) {
            m12356case();
        }
    }

    public AutoScrollBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10941do = false;
        m12361final(context, attributeSet, 0);
    }

    public AutoScrollBackLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        this.f10941do = false;
        m12361final(context, attributeSet, i);
    }
}
