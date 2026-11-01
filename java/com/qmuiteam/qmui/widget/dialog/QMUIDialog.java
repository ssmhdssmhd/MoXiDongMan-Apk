package com.qmuiteam.qmui.widget.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.ai1;
import android.support.v4.ih1;
import android.support.v4.kh1;
import android.support.v4.sh1;
import android.text.method.TransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.LayoutRes;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.ViewCompat;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.widget.QMUIWrapContentScrollView;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogMenuItemView;
import com.qmuiteam.qmui.widget.textview.QMUISpanTouchFixTextView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class QMUIDialog extends Dialog {

    /* renamed from: do, reason: not valid java name */
    public boolean f19712do;

    /* renamed from: for, reason: not valid java name */
    private boolean f19713for;

    /* renamed from: if, reason: not valid java name */
    private boolean f19714if;

    /* renamed from: new, reason: not valid java name */
    private Context f19715new;

    public static class MenuBaseDialogBuilder<T extends QMUIDialogBuilder> extends QMUIDialogBuilder<T> {

        /* renamed from: default, reason: not valid java name */
        public LinearLayout f19716default;

        /* renamed from: extends, reason: not valid java name */
        public QMUIWrapContentScrollView f19717extends;

        /* renamed from: finally, reason: not valid java name */
        public LinearLayout.LayoutParams f19718finally;

        /* renamed from: package, reason: not valid java name */
        public ArrayList<QMUIDialogMenuItemView> f19719package;

        /* renamed from: throws, reason: not valid java name */
        public ArrayList<ItemViewFactory> f19720throws;

        public interface ItemViewFactory {
            QMUIDialogMenuItemView createItemView(Context context);
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$MenuBaseDialogBuilder$do, reason: invalid class name */
        public class Cdo implements QMUIDialogMenuItemView.MenuItemViewListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ DialogInterface.OnClickListener f19721do;

            public Cdo(DialogInterface.OnClickListener onClickListener) {
                this.f19721do = onClickListener;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogMenuItemView.MenuItemViewListener
            public void onClick(int i) {
                MenuBaseDialogBuilder.this.mo23992instanceof(i);
                DialogInterface.OnClickListener onClickListener = this.f19721do;
                if (onClickListener != null) {
                    onClickListener.onClick(MenuBaseDialogBuilder.this.f19795if, i);
                }
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$MenuBaseDialogBuilder$for, reason: invalid class name */
        public class Cfor implements ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ ItemViewFactory f19723do;

            /* renamed from: if, reason: not valid java name */
            public final /* synthetic */ DialogInterface.OnClickListener f19725if;

            /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$MenuBaseDialogBuilder$for$do, reason: invalid class name */
            public class Cdo implements QMUIDialogMenuItemView.MenuItemViewListener {
                public Cdo() {
                }

                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogMenuItemView.MenuItemViewListener
                public void onClick(int i) {
                    MenuBaseDialogBuilder.this.mo23992instanceof(i);
                    Cfor cfor = Cfor.this;
                    DialogInterface.OnClickListener onClickListener = cfor.f19725if;
                    if (onClickListener != null) {
                        onClickListener.onClick(MenuBaseDialogBuilder.this.f19795if, i);
                    }
                }
            }

            public Cfor(ItemViewFactory itemViewFactory, DialogInterface.OnClickListener onClickListener) {
                this.f19723do = itemViewFactory;
                this.f19725if = onClickListener;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder.ItemViewFactory
            public QMUIDialogMenuItemView createItemView(Context context) {
                QMUIDialogMenuItemView qMUIDialogMenuItemViewCreateItemView = this.f19723do.createItemView(context);
                qMUIDialogMenuItemViewCreateItemView.setMenuIndex(MenuBaseDialogBuilder.this.f19720throws.indexOf(this));
                qMUIDialogMenuItemViewCreateItemView.setListener(new Cdo());
                return qMUIDialogMenuItemViewCreateItemView;
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$MenuBaseDialogBuilder$if, reason: invalid class name */
        public class Cif implements ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ QMUIDialogMenuItemView f19727do;

            public Cif(QMUIDialogMenuItemView qMUIDialogMenuItemView) {
                this.f19727do = qMUIDialogMenuItemView;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder.ItemViewFactory
            public QMUIDialogMenuItemView createItemView(Context context) {
                return this.f19727do;
            }
        }

        public MenuBaseDialogBuilder(Context context) {
            super(context);
            this.f19719package = new ArrayList<>();
            this.f19720throws = new ArrayList<>();
        }

        /* renamed from: implements, reason: not valid java name */
        public void m23991implements() {
            this.f19720throws.clear();
        }

        /* renamed from: instanceof, reason: not valid java name */
        public void mo23992instanceof(int i) {
        }

        /* renamed from: protected, reason: not valid java name */
        public T mo23993protected(ItemViewFactory itemViewFactory, DialogInterface.OnClickListener onClickListener) {
            this.f19720throws.add(new Cfor(itemViewFactory, onClickListener));
            return this;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            LinearLayout linearLayout = new LinearLayout(context);
            this.f19716default = linearLayout;
            linearLayout.setOrientation(1);
            this.f19716default.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogMenuContainerStyleDef, R.attr.qmui_dialog_menu_container_style, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            int dimensionPixelSize = -1;
            int dimensionPixelSize2 = 0;
            int dimensionPixelSize3 = 0;
            int dimensionPixelSize4 = 0;
            int dimensionPixelSize5 = 0;
            int dimensionPixelSize6 = 0;
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == R.styleable.QMUIDialogMenuContainerStyleDef_android_paddingTop) {
                    dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize3);
                } else if (index == R.styleable.QMUIDialogMenuContainerStyleDef_android_paddingBottom) {
                    dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize5);
                } else if (index == R.styleable.QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_container_single_padding_vertical) {
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize2);
                } else if (index == R.styleable.QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_container_padding_top_when_title_exist) {
                    dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize4);
                } else if (index == R.styleable.QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_container_padding_bottom_when_action_exist) {
                    dimensionPixelSize6 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize6);
                } else if (index == R.styleable.QMUIDialogMenuContainerStyleDef_qmui_dialog_menu_item_height) {
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, dimensionPixelSize);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, dimensionPixelSize);
            this.f19718finally = layoutParams;
            layoutParams.gravity = 16;
            if (this.f19720throws.size() == 1) {
                dimensionPixelSize5 = dimensionPixelSize2;
            } else {
                dimensionPixelSize2 = dimensionPixelSize3;
            }
            if (!m24042import()) {
                dimensionPixelSize4 = dimensionPixelSize2;
            }
            if (this.f19785break.size() <= 0) {
                dimensionPixelSize6 = dimensionPixelSize5;
            }
            this.f19716default.setPadding(0, dimensionPixelSize4, 0, dimensionPixelSize6);
            this.f19719package.clear();
            Iterator<ItemViewFactory> it = this.f19720throws.iterator();
            while (it.hasNext()) {
                QMUIDialogMenuItemView qMUIDialogMenuItemViewCreateItemView = it.next().createItemView(context);
                this.f19716default.addView(qMUIDialogMenuItemViewCreateItemView, this.f19718finally);
                this.f19719package.add(qMUIDialogMenuItemViewCreateItemView);
            }
            QMUIWrapContentScrollView qMUIWrapContentScrollView = new QMUIWrapContentScrollView(context);
            this.f19717extends = qMUIWrapContentScrollView;
            qMUIWrapContentScrollView.setMaxHeight(m24049super());
            this.f19717extends.addView(this.f19716default);
            this.f19717extends.setVerticalScrollBarEnabled(false);
            viewGroup.addView(this.f19717extends);
        }

        @Deprecated
        /* renamed from: transient, reason: not valid java name */
        public T mo23994transient(QMUIDialogMenuItemView qMUIDialogMenuItemView, DialogInterface.OnClickListener onClickListener) {
            qMUIDialogMenuItemView.setMenuIndex(this.f19720throws.size());
            qMUIDialogMenuItemView.setListener(new Cdo(onClickListener));
            this.f19720throws.add(new Cif(qMUIDialogMenuItemView));
            return this;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$case, reason: invalid class name */
    public static class Ccase extends MenuBaseDialogBuilder<Ccase> {

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$case$do, reason: invalid class name */
        public class Cdo implements MenuBaseDialogBuilder.ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CharSequence f19729do;

            public Cdo(CharSequence charSequence) {
                this.f19729do = charSequence;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder.ItemViewFactory
            public QMUIDialogMenuItemView createItemView(Context context) {
                return new QMUIDialogMenuItemView.TextItemView(context, this.f19729do);
            }
        }

        public Ccase(Context context) {
            super(context);
        }

        public Ccase a(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            for (CharSequence charSequence : charSequenceArr) {
                m23995synchronized(charSequence, onClickListener);
            }
            return this;
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Ccase m23995synchronized(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            mo23993protected(new Cdo(charSequence), onClickListener);
            return this;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$do, reason: invalid class name */
    public static abstract class Cdo extends QMUIDialogBuilder {

        /* renamed from: default, reason: not valid java name */
        private boolean f19731default;

        /* renamed from: extends, reason: not valid java name */
        private int f19732extends;

        /* renamed from: finally, reason: not valid java name */
        private int f19733finally;

        /* renamed from: package, reason: not valid java name */
        private Rect f19734package;

        /* renamed from: private, reason: not valid java name */
        private Rect f19735private;

        /* renamed from: throws, reason: not valid java name */
        private ScrollView f19736throws;

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$do$do, reason: invalid class name and collision with other inner class name */
        public class ViewOnAttachStateChangeListenerC0188do implements View.OnAttachStateChangeListener {
            public ViewOnAttachStateChangeListenerC0188do() {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                Cdo.this.f19734package = ai1.m254if(view);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                Cdo.this.f19734package = null;
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$do$for, reason: invalid class name */
        public class Cfor implements View.OnClickListener {
            public Cfor() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Cdo.this.f19795if.dismiss();
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$do$if, reason: invalid class name */
        public class Cif implements View.OnClickListener {
            public Cif() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Cdo.this.f19795if.dismiss();
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$do$new, reason: invalid class name */
        public class Cnew implements View.OnLayoutChangeListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ Context f19740do;

            public Cnew(Context context) {
                this.f19740do = context;
            }

            /* renamed from: do, reason: not valid java name */
            private int m24002do() {
                if (Cdo.this.f19736throws.getChildCount() <= 0) {
                    return 0;
                }
                return Cdo.this.f19736throws.getChildAt(0).getMeasuredHeight();
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int iM3440final;
                int iMax;
                view.getWindowVisibleDisplayFrame(Cdo.this.f19735private);
                if (Cdo.this.f19734package != null) {
                    iM3440final = Cdo.this.f19735private.height() + Cdo.this.f19734package.top + Cdo.this.f19734package.bottom;
                    iMax = Cdo.this.f19734package.bottom;
                } else {
                    iM3440final = ih1.m3440final(this.f19740do);
                    iMax = Math.max(0, iM3440final - Cdo.this.f19735private.bottom);
                }
                if (iMax != Cdo.this.f19732extends) {
                    Cdo.this.f19731default = true;
                    Cdo.this.f19732extends = iMax;
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) Cdo.this.f19801this.getLayoutParams();
                    layoutParams.height = Cdo.this.f19732extends;
                    Cdo.this.f19801this.setLayoutParams(layoutParams);
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) Cdo.this.f19736throws.getLayoutParams();
                    if (Cdo.this.h() == -2) {
                        Cdo cdo = Cdo.this;
                        cdo.f19733finally = Math.max(cdo.f19733finally, Cdo.this.f19736throws.getMeasuredHeight());
                    } else {
                        Cdo cdo2 = Cdo.this;
                        cdo2.f19733finally = cdo2.h();
                    }
                    if (Cdo.this.f19732extends == 0) {
                        layoutParams2.height = Cdo.this.f19733finally;
                    } else {
                        Cdo.this.f19736throws.getChildAt(0).requestFocus();
                        layoutParams2.height = Cdo.this.f19733finally - Cdo.this.f19732extends;
                    }
                    Cdo.this.f19736throws.setLayoutParams(layoutParams2);
                    return;
                }
                if (Cdo.this.f19731default) {
                    return;
                }
                Cdo.this.f19731default = true;
                if (Cdo.this.h() == -2) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) Cdo.this.f19791else.getLayoutParams();
                    int iM3450new = (iM3440final - layoutParams3.bottomMargin) - layoutParams3.topMargin;
                    if (Cdo.this.m24042import()) {
                        iM3450new -= Cdo.this.f19788class.getMeasuredHeight();
                    }
                    if (Cdo.this.f19789const != null) {
                        iM3450new -= ih1.m3450new(this.f19740do, 150);
                    }
                    int iM24002do = m24002do();
                    Cdo.this.f19733finally = Math.min(iM3450new, iM24002do);
                    LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) Cdo.this.f19736throws.getLayoutParams();
                    layoutParams4.height = Cdo.this.f19733finally;
                    Cdo.this.f19736throws.setLayoutParams(layoutParams4);
                }
            }
        }

        public Cdo(Context context) {
            super(context);
            this.f19731default = false;
            this.f19732extends = 0;
            this.f19733finally = 0;
            this.f19734package = null;
            this.f19735private = new Rect();
        }

        private void f(Context context, View view) {
            if (ViewCompat.isAttachedToWindow(view)) {
                this.f19734package = ai1.m254if(view);
            } else {
                view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0188do());
            }
            this.f19794goto.setOnClickListener(new Cif());
            this.f19801this.setOnClickListener(new Cfor());
            view.addOnLayoutChangeListener(new Cnew(context));
        }

        public abstract View g(QMUIDialog qMUIDialog, ScrollView scrollView);

        public int h() {
            return -2;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: native, reason: not valid java name */
        public void mo24001native(QMUIDialog qMUIDialog, LinearLayout linearLayout, Context context) {
            super.mo24001native(qMUIDialog, linearLayout, context);
            f(context, linearLayout);
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            ScrollView scrollView = new ScrollView(context);
            this.f19736throws = scrollView;
            scrollView.setLayoutParams(new LinearLayout.LayoutParams(-1, h()));
            ScrollView scrollView2 = this.f19736throws;
            scrollView2.addView(g(qMUIDialog, scrollView2));
            viewGroup.addView(this.f19736throws);
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$else, reason: invalid class name */
    public static class Celse extends QMUIDialogBuilder<Celse> {

        /* renamed from: default, reason: not valid java name */
        private QMUIWrapContentScrollView f19742default;

        /* renamed from: extends, reason: not valid java name */
        private QMUISpanTouchFixTextView f19743extends;

        /* renamed from: throws, reason: not valid java name */
        public CharSequence f19744throws;

        public Celse(Context context) {
            super(context);
        }

        /* renamed from: protected, reason: not valid java name */
        public static void m24003protected(TextView textView, boolean z, int i) {
            sh1.m7401do(textView, i);
            if (z) {
                return;
            }
            TypedArray typedArrayObtainStyledAttributes = textView.getContext().obtainStyledAttributes(null, R.styleable.QMUIDialogMessageTvCustomDef, i, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.QMUIDialogMessageTvCustomDef_qmui_paddingTopWhenNotTitle) {
                    textView.setPadding(textView.getPaddingLeft(), typedArrayObtainStyledAttributes.getDimensionPixelSize(index, textView.getPaddingTop()), textView.getPaddingRight(), textView.getPaddingBottom());
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        /* renamed from: implements, reason: not valid java name */
        public Celse m24004implements(int i) {
            return m24005instanceof(m24037final().getResources().getString(i));
        }

        /* renamed from: instanceof, reason: not valid java name */
        public Celse m24005instanceof(CharSequence charSequence) {
            this.f19744throws = charSequence;
            return this;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: public */
        public void mo3037public(TextView textView) {
            super.mo3037public(textView);
            CharSequence charSequence = this.f19744throws;
            if (charSequence == null || charSequence.length() == 0) {
                TypedArray typedArrayObtainStyledAttributes = textView.getContext().obtainStyledAttributes(null, R.styleable.QMUIDialogTitleTvCustomDef, R.attr.qmui_dialog_title_style, 0);
                int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = typedArrayObtainStyledAttributes.getIndex(i);
                    if (index == R.styleable.QMUIDialogTitleTvCustomDef_qmui_paddingBottomWhenNotContent) {
                        textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), typedArrayObtainStyledAttributes.getDimensionPixelSize(index, textView.getPaddingBottom()));
                    }
                }
                typedArrayObtainStyledAttributes.recycle();
            }
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            CharSequence charSequence = this.f19744throws;
            if (charSequence == null || charSequence.length() == 0) {
                return;
            }
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
            this.f19743extends = qMUISpanTouchFixTextView;
            m24003protected(qMUISpanTouchFixTextView, m24042import(), R.attr.qmui_dialog_message_content_style);
            this.f19743extends.setText(this.f19744throws);
            this.f19743extends.m24248if();
            QMUIWrapContentScrollView qMUIWrapContentScrollView = new QMUIWrapContentScrollView(context);
            this.f19742default = qMUIWrapContentScrollView;
            qMUIWrapContentScrollView.setMaxHeight(m24049super());
            this.f19742default.setVerticalScrollBarEnabled(false);
            this.f19742default.addView(this.f19743extends);
            viewGroup.addView(this.f19742default);
        }

        /* renamed from: transient, reason: not valid java name */
        public QMUISpanTouchFixTextView m24006transient() {
            return this.f19743extends;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$for, reason: invalid class name */
    public static class Cfor extends MenuBaseDialogBuilder<Cfor> {

        /* renamed from: private, reason: not valid java name */
        private int f19745private;

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$for$do, reason: invalid class name */
        public class Cdo implements MenuBaseDialogBuilder.ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CharSequence f19746do;

            public Cdo(CharSequence charSequence) {
                this.f19746do = charSequence;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder.ItemViewFactory
            public QMUIDialogMenuItemView createItemView(Context context) {
                return new QMUIDialogMenuItemView.MarkItemView(context, this.f19746do);
            }
        }

        public Cfor(Context context) {
            super(context);
            this.f19745private = -1;
        }

        public int a() {
            return this.f19745private;
        }

        public Cfor b(int i) {
            this.f19745private = i;
            return this;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder
        /* renamed from: instanceof */
        public void mo23992instanceof(int i) {
            for (int i2 = 0; i2 < this.f19719package.size(); i2++) {
                QMUIDialogMenuItemView qMUIDialogMenuItemView = this.f19719package.get(i2);
                if (i2 == i) {
                    qMUIDialogMenuItemView.setChecked(true);
                    this.f19745private = i;
                } else {
                    qMUIDialogMenuItemView.setChecked(false);
                }
            }
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            super.mo3038return(qMUIDialog, viewGroup, context);
            int i = this.f19745private;
            if (i <= -1 || i >= this.f19719package.size()) {
                return;
            }
            this.f19719package.get(this.f19745private).setChecked(true);
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Cfor m24007synchronized(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            for (CharSequence charSequence : charSequenceArr) {
                mo23993protected(new Cdo(charSequence), onClickListener);
            }
            return this;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$goto, reason: invalid class name */
    public static class Cgoto extends MenuBaseDialogBuilder<Cgoto> {

        /* renamed from: private, reason: not valid java name */
        private int f19748private;

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$goto$do, reason: invalid class name */
        public class Cdo implements MenuBaseDialogBuilder.ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ CharSequence f19749do;

            public Cdo(CharSequence charSequence) {
                this.f19749do = charSequence;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder.ItemViewFactory
            public QMUIDialogMenuItemView createItemView(Context context) {
                return new QMUIDialogMenuItemView.CheckItemView(context, true, this.f19749do);
            }
        }

        public Cgoto(Context context) {
            super(context);
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Cgoto mo23994transient(QMUIDialogMenuItemView qMUIDialogMenuItemView, DialogInterface.OnClickListener onClickListener) {
            if (this.f19720throws.size() < 32) {
                return (Cgoto) super.mo23994transient(qMUIDialogMenuItemView, onClickListener);
            }
            throw new RuntimeException("there are more than 32 items, please use LiseView to improve performance!!");
        }

        public Cgoto b(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            for (CharSequence charSequence : charSequenceArr) {
                mo23993protected(new Cdo(charSequence), onClickListener);
            }
            return this;
        }

        public boolean c() {
            return e() <= 0;
        }

        public int[] d() {
            ArrayList arrayList = new ArrayList();
            int size = this.f19719package.size();
            for (int i = 0; i < size; i++) {
                QMUIDialogMenuItemView qMUIDialogMenuItemView = this.f19719package.get(i);
                if (qMUIDialogMenuItemView.m24058for()) {
                    arrayList.add(Integer.valueOf(qMUIDialogMenuItemView.getMenuIndex()));
                }
            }
            int[] iArr = new int[arrayList.size()];
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                iArr[i2] = ((Integer) arrayList.get(i2)).intValue();
            }
            return iArr;
        }

        public int e() {
            int size = this.f19719package.size();
            int menuIndex = 0;
            for (int i = 0; i < size; i++) {
                QMUIDialogMenuItemView qMUIDialogMenuItemView = this.f19719package.get(i);
                if (qMUIDialogMenuItemView.m24058for()) {
                    menuIndex += 2 << qMUIDialogMenuItemView.getMenuIndex();
                }
            }
            this.f19748private = menuIndex;
            return menuIndex;
        }

        public Cgoto f(int i) {
            this.f19748private = i;
            return this;
        }

        public Cgoto g(int[] iArr) {
            int i = 0;
            if (iArr != null && iArr.length > 0) {
                int length = iArr.length;
                int i2 = 0;
                while (i < length) {
                    i2 += 2 << iArr[i];
                    i++;
                }
                i = i2;
            }
            return f(i);
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder
        /* renamed from: instanceof */
        public void mo23992instanceof(int i) {
            this.f19719package.get(i).setChecked(!r2.m24058for());
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder, com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            super.mo3038return(qMUIDialog, viewGroup, context);
            for (int i = 0; i < this.f19719package.size(); i++) {
                int i2 = 2 << i;
                this.f19719package.get(i).setChecked((this.f19748private & i2) == i2);
            }
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialog.MenuBaseDialogBuilder
        /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cgoto mo23993protected(MenuBaseDialogBuilder.ItemViewFactory itemViewFactory, DialogInterface.OnClickListener onClickListener) {
            if (this.f19720throws.size() < 32) {
                return (Cgoto) super.mo23993protected(itemViewFactory, onClickListener);
            }
            throw new RuntimeException("there are more than 32 items, please use LiseView to improve performance!!");
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$if, reason: invalid class name */
    public static class Cif extends QMUIDialogBuilder<Cif> {

        /* renamed from: default, reason: not valid java name */
        public String f19751default;

        /* renamed from: extends, reason: not valid java name */
        private boolean f19752extends;

        /* renamed from: finally, reason: not valid java name */
        private Drawable f19753finally;

        /* renamed from: package, reason: not valid java name */
        private QMUISpanTouchFixTextView f19754package;

        /* renamed from: throws, reason: not valid java name */
        private QMUIWrapContentScrollView f19755throws;

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$if$do, reason: invalid class name */
        public class Cdo implements View.OnClickListener {
            public Cdo() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Cif.this.m24011instanceof(!r2.f19752extends);
            }
        }

        public Cif(Context context) {
            super(context);
            this.f19752extends = false;
            this.f19753finally = sh1.m7406try(context, R.attr.qmui_s_checkbox);
        }

        public Cif a(String str) {
            this.f19751default = str;
            return this;
        }

        /* renamed from: implements, reason: not valid java name */
        public boolean m24010implements() {
            return this.f19752extends;
        }

        /* renamed from: instanceof, reason: not valid java name */
        public Cif m24011instanceof(boolean z) {
            if (this.f19752extends != z) {
                this.f19752extends = z;
                QMUISpanTouchFixTextView qMUISpanTouchFixTextView = this.f19754package;
                if (qMUISpanTouchFixTextView != null) {
                    qMUISpanTouchFixTextView.setSelected(z);
                }
            }
            return this;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            String str = this.f19751default;
            if (str == null || str.length() == 0) {
                return;
            }
            this.f19755throws = new QMUIWrapContentScrollView(context);
            QMUISpanTouchFixTextView qMUISpanTouchFixTextView = new QMUISpanTouchFixTextView(context);
            this.f19754package = qMUISpanTouchFixTextView;
            qMUISpanTouchFixTextView.m24248if();
            Celse.m24003protected(this.f19754package, m24042import(), R.attr.qmui_dialog_message_content_style);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = this.f19754package.getGravity();
            this.f19755throws.addView(this.f19754package, layoutParams);
            this.f19755throws.setVerticalScrollBarEnabled(false);
            this.f19755throws.setMaxHeight(m24049super());
            this.f19754package.setText(this.f19751default);
            Drawable drawable = this.f19753finally;
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), this.f19753finally.getIntrinsicHeight());
            this.f19754package.setCompoundDrawables(this.f19753finally, null, null, null);
            this.f19754package.setOnClickListener(new Cdo());
            this.f19754package.setSelected(this.f19752extends);
            viewGroup.addView(this.f19755throws);
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Cif m24012synchronized(int i) {
            return a(m24037final().getResources().getString(i));
        }

        /* renamed from: transient, reason: not valid java name */
        public QMUISpanTouchFixTextView m24013transient() {
            return this.f19754package;
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$new, reason: invalid class name */
    public static class Cnew extends QMUIDialogBuilder {

        /* renamed from: throws, reason: not valid java name */
        private int f19757throws;

        public Cnew(Context context) {
            super(context);
        }

        /* renamed from: protected, reason: not valid java name */
        public Cnew m24014protected(@LayoutRes int i) {
            this.f19757throws = i;
            return this;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            viewGroup.addView(LayoutInflater.from(context).inflate(this.f19757throws, viewGroup, false));
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$try, reason: invalid class name */
    public static class Ctry extends QMUIDialogBuilder<Ctry> {

        /* renamed from: abstract, reason: not valid java name */
        private CharSequence f19758abstract;

        /* renamed from: default, reason: not valid java name */
        public TransformationMethod f19759default;

        /* renamed from: extends, reason: not valid java name */
        public RelativeLayout f19760extends;

        /* renamed from: finally, reason: not valid java name */
        public EditText f19761finally;

        /* renamed from: package, reason: not valid java name */
        public ImageView f19762package;

        /* renamed from: private, reason: not valid java name */
        private int f19763private;

        /* renamed from: throws, reason: not valid java name */
        public String f19764throws;

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$try$do, reason: invalid class name */
        public class Cdo implements DialogInterface.OnDismissListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InputMethodManager f19765do;

            public Cdo(InputMethodManager inputMethodManager) {
                this.f19765do = inputMethodManager;
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                this.f19765do.hideSoftInputFromWindow(Ctry.this.f19761finally.getWindowToken(), 0);
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialog$try$if, reason: invalid class name */
        public class Cif implements Runnable {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ InputMethodManager f19767do;

            public Cif(InputMethodManager inputMethodManager) {
                this.f19767do = inputMethodManager;
            }

            @Override // java.lang.Runnable
            public void run() {
                Ctry.this.f19761finally.requestFocus();
                this.f19767do.showSoftInput(Ctry.this.f19761finally, 0);
            }
        }

        public Ctry(Context context) {
            super(context);
            this.f19763private = 1;
            this.f19758abstract = null;
        }

        public Ctry a(int i) {
            this.f19763private = i;
            return this;
        }

        public Ctry b(int i) {
            return c(m24037final().getResources().getString(i));
        }

        public Ctry c(String str) {
            this.f19764throws = str;
            return this;
        }

        public Ctry d(TransformationMethod transformationMethod) {
            this.f19759default = transformationMethod;
            return this;
        }

        @Deprecated
        /* renamed from: implements, reason: not valid java name */
        public EditText m24015implements() {
            return this.f19761finally;
        }

        /* renamed from: instanceof, reason: not valid java name */
        public ImageView m24016instanceof() {
            return this.f19762package;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: native */
        public void mo24001native(QMUIDialog qMUIDialog, LinearLayout linearLayout, Context context) {
            super.mo24001native(qMUIDialog, linearLayout, context);
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
            qMUIDialog.setOnDismissListener(new Cdo(inputMethodManager));
            this.f19761finally.postDelayed(new Cif(inputMethodManager), 300L);
        }

        /* renamed from: protected, reason: not valid java name */
        public RelativeLayout.LayoutParams m24017protected() {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(0, this.f19762package.getId());
            layoutParams.addRule(15, -1);
            return layoutParams;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder
        /* renamed from: return */
        public void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
            AppCompatEditText appCompatEditText = new AppCompatEditText(context);
            this.f19761finally = appCompatEditText;
            Celse.m24003protected(appCompatEditText, m24042import(), R.attr.qmui_dialog_edit_content_style);
            this.f19761finally.setFocusable(true);
            this.f19761finally.setFocusableInTouchMode(true);
            this.f19761finally.setImeOptions(2);
            this.f19761finally.setId(R.id.qmui_dialog_edit_input);
            if (!kh1.m4402case(this.f19758abstract)) {
                this.f19761finally.setText(this.f19758abstract);
            }
            ImageView imageView = new ImageView(context);
            this.f19762package = imageView;
            imageView.setId(R.id.qmui_dialog_edit_right_icon);
            this.f19762package.setVisibility(8);
            this.f19760extends = new RelativeLayout(context);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.topMargin = this.f19761finally.getPaddingTop();
            layoutParams.leftMargin = this.f19761finally.getPaddingLeft();
            layoutParams.rightMargin = this.f19761finally.getPaddingRight();
            layoutParams.bottomMargin = this.f19761finally.getPaddingBottom();
            this.f19760extends.setBackgroundResource(R.drawable.qmui_edittext_bg_border_bottom);
            this.f19760extends.setLayoutParams(layoutParams);
            TransformationMethod transformationMethod = this.f19759default;
            if (transformationMethod != null) {
                this.f19761finally.setTransformationMethod(transformationMethod);
            } else {
                this.f19761finally.setInputType(this.f19763private);
            }
            this.f19761finally.setBackgroundResource(0);
            this.f19761finally.setPadding(0, 0, 0, ih1.m3465try(5));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams2.addRule(0, this.f19762package.getId());
            layoutParams2.addRule(15, -1);
            String str = this.f19764throws;
            if (str != null) {
                this.f19761finally.setHint(str);
            }
            this.f19760extends.addView(this.f19761finally, m24017protected());
            this.f19760extends.addView(this.f19762package, m24019transient());
            viewGroup.addView(this.f19760extends);
        }

        /* renamed from: synchronized, reason: not valid java name */
        public Ctry m24018synchronized(CharSequence charSequence) {
            this.f19758abstract = charSequence;
            return this;
        }

        /* renamed from: transient, reason: not valid java name */
        public RelativeLayout.LayoutParams m24019transient() {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(11, -1);
            layoutParams.addRule(15, -1);
            layoutParams.leftMargin = ih1.m3465try(5);
            return layoutParams;
        }
    }

    public QMUIDialog(Context context) {
        this(context, R.style.QMUI_Dialog);
    }

    /* renamed from: for, reason: not valid java name */
    private void m23985for() {
        Window window = getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.gravity = 17;
        window.setAttributes(attributes);
    }

    /* renamed from: if, reason: not valid java name */
    private void m23986if() {
        setCancelable(true);
        setCanceledOnTouchOutside(true);
    }

    /* renamed from: case, reason: not valid java name */
    public void m23987case(Activity activity) {
        Window window = getWindow();
        if (window == null) {
            return;
        }
        int systemUiVisibility = activity.getWindow().getDecorView().getSystemUiVisibility();
        if ((systemUiVisibility & 1024) != 1024 && (systemUiVisibility & 4) != 4) {
            super.show();
            return;
        }
        window.setFlags(8, 8);
        window.getDecorView().setSystemUiVisibility(activity.getWindow().getDecorView().getSystemUiVisibility());
        super.show();
        window.clearFlags(8);
    }

    /* renamed from: do, reason: not valid java name */
    public void m23988do() {
        if (this.f19712do && isShowing() && m23989new()) {
            cancel();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m23989new() {
        if (!this.f19713for) {
            if (Build.VERSION.SDK_INT < 11) {
                this.f19714if = true;
            } else {
                TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{android.R.attr.windowCloseOnTouchOutside});
                this.f19714if = typedArrayObtainStyledAttributes.getBoolean(0, true);
                typedArrayObtainStyledAttributes.recycle();
            }
            this.f19713for = true;
        }
        return this.f19714if;
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m23985for();
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        this.f19712do = z;
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.f19712do) {
            this.f19712do = true;
        }
        this.f19714if = z;
        this.f19713for = true;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
    }

    /* renamed from: try, reason: not valid java name */
    public void m23990try() {
        Context context = this.f19715new;
        if (context instanceof Activity) {
            m23987case((Activity) context);
        } else {
            super.show();
        }
    }

    public QMUIDialog(Context context, int i) {
        super(context, i);
        this.f19712do = true;
        this.f19714if = true;
        this.f19715new = context;
        m23986if();
    }
}
