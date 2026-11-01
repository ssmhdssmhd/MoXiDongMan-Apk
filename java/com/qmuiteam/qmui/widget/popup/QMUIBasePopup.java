package com.qmuiteam.qmui.widget.popup;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.ih1;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.layout.QMUIFrameLayout;

/* loaded from: classes2.dex */
public abstract class QMUIBasePopup {

    /* renamed from: class, reason: not valid java name */
    private static final String f19865class = "QMUIBasePopup";

    /* renamed from: case, reason: not valid java name */
    public WindowManager f19867case;

    /* renamed from: do, reason: not valid java name */
    public Context f19869do;

    /* renamed from: else, reason: not valid java name */
    private PopupWindow.OnDismissListener f19870else;

    /* renamed from: for, reason: not valid java name */
    private RootView f19871for;

    /* renamed from: goto, reason: not valid java name */
    private View f19872goto;

    /* renamed from: if, reason: not valid java name */
    public PopupWindow f19873if;

    /* renamed from: new, reason: not valid java name */
    public View f19874new;

    /* renamed from: try, reason: not valid java name */
    public Drawable f19876try = null;

    /* renamed from: this, reason: not valid java name */
    public Point f19875this = new Point();

    /* renamed from: break, reason: not valid java name */
    public int f19866break = 0;

    /* renamed from: catch, reason: not valid java name */
    public int f19868catch = 0;

    public class RootView extends QMUIFrameLayout {
        public RootView(QMUIBasePopup qMUIBasePopup, Context context) {
            this(context, null);
        }

        @Override // android.view.ViewGroup
        public void addView(View view) {
            if (getChildCount() > 0) {
                throw new RuntimeException("only support one child");
            }
            super.addView(view);
        }

        @Override // android.view.View
        public void onConfigurationChanged(Configuration configuration) {
            PopupWindow popupWindow = QMUIBasePopup.this.f19873if;
            if (popupWindow != null && popupWindow.isShowing()) {
                QMUIBasePopup.this.f19873if.dismiss();
            }
            QMUIBasePopup.this.m24103break(configuration);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
            if (getChildCount() == 0) {
                return;
            }
            View childAt = getChildAt(0);
            childAt.layout(getPaddingLeft(), getPaddingTop(), childAt.getMeasuredWidth(), childAt.getMeasuredHeight());
        }

        @Override // com.qmuiteam.qmui.layout.QMUIFrameLayout, android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            if (getChildCount() == 0) {
                setMeasuredDimension(0, 0);
            }
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int iM24110goto = QMUIBasePopup.this.m24110goto(this);
            int iM24107else = QMUIBasePopup.this.m24107else(this);
            int size3 = View.MeasureSpec.getSize(iM24110goto);
            int mode = View.MeasureSpec.getMode(iM24110goto);
            int size4 = View.MeasureSpec.getSize(iM24107else);
            int mode2 = View.MeasureSpec.getMode(iM24107else);
            if (size < size3) {
                iM24110goto = View.MeasureSpec.makeMeasureSpec(size, mode);
            }
            if (size2 < size4) {
                iM24107else = View.MeasureSpec.makeMeasureSpec(size2, mode2);
            }
            View childAt = getChildAt(0);
            childAt.measure(iM24110goto, iM24107else);
            QMUIBasePopup qMUIBasePopup = QMUIBasePopup.this;
            int i3 = qMUIBasePopup.f19868catch;
            int i4 = qMUIBasePopup.f19866break;
            qMUIBasePopup.f19868catch = childAt.getMeasuredWidth();
            QMUIBasePopup.this.f19866break = childAt.getMeasuredHeight();
            QMUIBasePopup qMUIBasePopup2 = QMUIBasePopup.this;
            if (i3 != qMUIBasePopup2.f19868catch || (i4 != qMUIBasePopup2.f19866break && qMUIBasePopup2.f19873if.isShowing())) {
                QMUIBasePopup.this.mo6984super();
            }
            StringBuilder sb = new StringBuilder();
            sb.append("in measure: mWindowWidth = ");
            sb.append(QMUIBasePopup.this.f19868catch);
            sb.append(" ;mWindowHeight = ");
            sb.append(QMUIBasePopup.this.f19866break);
            QMUIBasePopup qMUIBasePopup3 = QMUIBasePopup.this;
            setMeasuredDimension(qMUIBasePopup3.f19868catch, qMUIBasePopup3.f19866break);
        }

        public RootView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.popup.QMUIBasePopup$do, reason: invalid class name */
    public class Cdo implements View.OnTouchListener {
        public Cdo() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                QMUIBasePopup.this.f19873if.dismiss();
            }
            return false;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.popup.QMUIBasePopup$for, reason: invalid class name */
    public class Cfor implements PopupWindow.OnDismissListener {
        public Cfor() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            QMUIBasePopup.this.m24105catch();
            if (QMUIBasePopup.this.f19870else != null) {
                QMUIBasePopup.this.f19870else.onDismiss();
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.popup.QMUIBasePopup$if, reason: invalid class name */
    public class Cif implements View.OnAttachStateChangeListener {
        public Cif() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            if (QMUIBasePopup.this.m24104case()) {
                QMUIBasePopup.this.m24109for();
            }
        }
    }

    public QMUIBasePopup(Context context) {
        this.f19869do = context;
        PopupWindow popupWindow = new PopupWindow(context);
        this.f19873if = popupWindow;
        popupWindow.setTouchInterceptor(new Cdo());
        this.f19867case = (WindowManager) context.getSystemService("window");
    }

    /* renamed from: break, reason: not valid java name */
    public void m24103break(Configuration configuration) {
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m24104case() {
        PopupWindow popupWindow = this.f19873if;
        return popupWindow != null && popupWindow.isShowing();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m24105catch() {
    }

    /* renamed from: class */
    public abstract Point mo6976class(@NonNull View view, @NonNull View view2);

    /* renamed from: const, reason: not valid java name */
    public void m24106const() {
        if (this.f19871for == null) {
            throw new IllegalStateException("setContentView was not called with a view to display.");
        }
        Drawable drawable = this.f19876try;
        if (drawable == null) {
            this.f19873if.setBackgroundDrawable(new ColorDrawable(0));
        } else {
            this.f19873if.setBackgroundDrawable(drawable);
        }
        this.f19873if.setTouchable(true);
        this.f19873if.setFocusable(true);
        this.f19873if.setOutsideTouchable(true);
        this.f19873if.setContentView(this.f19871for);
        this.f19867case.getDefaultDisplay().getSize(this.f19875this);
    }

    /* renamed from: else, reason: not valid java name */
    public int m24107else(View view) {
        return View.MeasureSpec.makeMeasureSpec(ih1.m3440final(this.f19869do), Integer.MIN_VALUE);
    }

    /* renamed from: final, reason: not valid java name */
    public void m24108final() {
    }

    /* renamed from: for, reason: not valid java name */
    public void m24109for() {
        this.f19873if.dismiss();
    }

    /* renamed from: goto, reason: not valid java name */
    public int m24110goto(View view) {
        return View.MeasureSpec.makeMeasureSpec(ih1.m3458super(this.f19869do), Integer.MIN_VALUE);
    }

    /* renamed from: if, reason: not valid java name */
    public void m24111if(float f) {
        if (!m24104case()) {
            throw new RuntimeException("should call after method show() or in onShowEnd()");
        }
        View viewM24113new = m24113new();
        if (viewM24113new != null) {
            WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) viewM24113new.getLayoutParams();
            layoutParams.flags |= 2;
            layoutParams.dimAmount = f;
            this.f19867case.updateViewLayout(viewM24113new, layoutParams);
        }
    }

    /* renamed from: import */
    public void mo6980import(View view) {
        if (view == null) {
            throw new IllegalStateException("setContentView was not called with a view to display.");
        }
        RootView rootView = new RootView(this, this.f19869do);
        this.f19871for = rootView;
        rootView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.f19874new = view;
        this.f19871for.addView(view);
        this.f19873if.setContentView(this.f19871for);
        this.f19873if.setOnDismissListener(new Cfor());
    }

    /* renamed from: native, reason: not valid java name */
    public boolean m24112native() {
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public View m24113new() {
        try {
            return this.f19873if.getBackground() == null ? Build.VERSION.SDK_INT >= 23 ? (View) this.f19873if.getContentView().getParent() : this.f19873if.getContentView() : Build.VERSION.SDK_INT >= 23 ? (View) this.f19873if.getContentView().getParent().getParent() : (View) this.f19873if.getContentView().getParent();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: public, reason: not valid java name */
    public final void m24114public(@NonNull View view) {
        m24115return(view, view);
    }

    /* renamed from: return, reason: not valid java name */
    public final void m24115return(@NonNull View view, @NonNull View view2) {
        if (ViewCompat.isAttachedToWindow(view2)) {
            m24106const();
            if (this.f19868catch == 0 || this.f19866break == 0 || this.f19871for.isLayoutRequested() || m24112native()) {
                m24116this();
            }
            this.f19873if.setWidth(this.f19868catch);
            this.f19873if.setHeight(this.f19866break);
            if (Build.VERSION.SDK_INT >= 22) {
                this.f19873if.setAttachedInDecor(false);
            }
            Point pointMo6976class = mo6976class(view, view2);
            this.f19873if.showAtLocation(view, 0, pointMo6976class.x, pointMo6976class.y);
            this.f19872goto = view;
            m24108final();
            view.addOnAttachStateChangeListener(new Cif());
        }
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f19870else = onDismissListener;
    }

    /* renamed from: super */
    public abstract void mo6984super();

    /* renamed from: this, reason: not valid java name */
    public void m24116this() {
        this.f19874new.measure(m24110goto(this.f19871for), m24107else(this.f19871for));
        this.f19868catch = this.f19874new.getMeasuredWidth();
        this.f19866break = this.f19874new.getMeasuredHeight();
        StringBuilder sb = new StringBuilder();
        sb.append("measureWindowSize: mWindowWidth = ");
        sb.append(this.f19868catch);
        sb.append(" ;mWindowHeight = ");
        sb.append(this.f19866break);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m24117throw(Drawable drawable) {
        this.f19876try = drawable;
    }

    /* renamed from: try, reason: not valid java name */
    public View m24118try() {
        return this.f19872goto;
    }

    /* renamed from: while, reason: not valid java name */
    public void m24119while(int i) {
        mo6980import(((LayoutInflater) this.f19869do.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null));
    }
}
