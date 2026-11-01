package com.luck.picture.lib.widget;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.luck.picture.lib.R;

/* loaded from: classes2.dex */
public class PhotoPopupWindow extends PopupWindow implements View.OnClickListener {

    /* renamed from: case, reason: not valid java name */
    private Animation f18881case;

    /* renamed from: do, reason: not valid java name */
    private TextView f18882do;

    /* renamed from: else, reason: not valid java name */
    private Animation f18883else;

    /* renamed from: for, reason: not valid java name */
    private TextView f18884for;

    /* renamed from: goto, reason: not valid java name */
    private boolean f18885goto;

    /* renamed from: if, reason: not valid java name */
    private TextView f18886if;

    /* renamed from: new, reason: not valid java name */
    private LinearLayout f18887new;

    /* renamed from: this, reason: not valid java name */
    private OnItemClickListener f18888this;

    /* renamed from: try, reason: not valid java name */
    private FrameLayout f18889try;

    public interface OnItemClickListener {
        void onItemClick(int i);
    }

    /* renamed from: com.luck.picture.lib.widget.PhotoPopupWindow$do, reason: invalid class name */
    public class Cdo implements Animation.AnimationListener {
        public Cdo() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            PhotoPopupWindow.this.f18885goto = false;
            if (Build.VERSION.SDK_INT <= 16) {
                PhotoPopupWindow.this.m23323else();
            } else {
                PhotoPopupWindow.super.dismiss();
            }
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: com.luck.picture.lib.widget.PhotoPopupWindow$if, reason: invalid class name */
    public class Cif implements Runnable {
        public Cif() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PhotoPopupWindow.super.dismiss();
        }
    }

    public PhotoPopupWindow(Context context) {
        super(context);
        this.f18885goto = false;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.picture_camera_pop_layout, (ViewGroup) null);
        setWidth(-1);
        setHeight(-1);
        setBackgroundDrawable(new ColorDrawable());
        setFocusable(true);
        setOutsideTouchable(true);
        update();
        setBackgroundDrawable(new ColorDrawable());
        setContentView(viewInflate);
        this.f18881case = AnimationUtils.loadAnimation(context, R.anim.up_in);
        this.f18883else = AnimationUtils.loadAnimation(context, R.anim.down_out);
        this.f18887new = (LinearLayout) viewInflate.findViewById(R.id.ll_root);
        this.f18889try = (FrameLayout) viewInflate.findViewById(R.id.fl_content);
        this.f18882do = (TextView) viewInflate.findViewById(R.id.picture_tv_photo);
        this.f18884for = (TextView) viewInflate.findViewById(R.id.picture_tv_cancel);
        TextView textView = (TextView) viewInflate.findViewById(R.id.picture_tv_video);
        this.f18886if = textView;
        textView.setOnClickListener(this);
        this.f18884for.setOnClickListener(this);
        this.f18882do.setOnClickListener(this);
        this.f18889try.setOnClickListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: else, reason: not valid java name */
    public void m23323else() {
        new Handler().post(new Cif());
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        if (this.f18885goto) {
            return;
        }
        this.f18885goto = true;
        this.f18887new.startAnimation(this.f18883else);
        dismiss();
        this.f18883else.setAnimationListener(new Cdo());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        OnItemClickListener onItemClickListener;
        OnItemClickListener onItemClickListener2;
        int id = view.getId();
        if (id == R.id.picture_tv_photo && (onItemClickListener2 = this.f18888this) != null) {
            onItemClickListener2.onItemClick(0);
            super.dismiss();
        }
        if (id == R.id.picture_tv_video && (onItemClickListener = this.f18888this) != null) {
            onItemClickListener.onItemClick(1);
            super.dismiss();
        }
        dismiss();
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.f18888this = onItemClickListener;
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                int[] iArr = new int[2];
                view.getLocationOnScreen(iArr);
                showAtLocation(view, 80, iArr[0], iArr[1] + view.getHeight());
            } else {
                showAtLocation(view, 80, 0, 0);
            }
            this.f18885goto = false;
            this.f18887new.startAnimation(this.f18881case);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
