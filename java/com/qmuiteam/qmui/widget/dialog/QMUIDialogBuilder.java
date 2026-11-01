package com.qmuiteam.qmui.widget.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.ih1;
import android.support.v4.sh1;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import androidx.core.content.ContextCompat;
import androidx.legacy.widget.Space;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.layout.QMUIButton;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class QMUIDialogBuilder<T extends QMUIDialogBuilder> {

    /* renamed from: return, reason: not valid java name */
    public static final int f19782return = 0;

    /* renamed from: static, reason: not valid java name */
    public static final int f19783static = 1;

    /* renamed from: switch, reason: not valid java name */
    private static OnProvideDefaultTheme f19784switch;

    /* renamed from: case, reason: not valid java name */
    public LinearLayout f19786case;

    /* renamed from: catch, reason: not valid java name */
    private QMUIDialogView.OnDecorationListener f19787catch;

    /* renamed from: class, reason: not valid java name */
    public TextView f19788class;

    /* renamed from: const, reason: not valid java name */
    public QMUILinearLayout f19789const;

    /* renamed from: do, reason: not valid java name */
    private Context f19790do;

    /* renamed from: else, reason: not valid java name */
    public QMUIDialogView f19791else;

    /* renamed from: for, reason: not valid java name */
    public String f19793for;

    /* renamed from: goto, reason: not valid java name */
    public View f19794goto;

    /* renamed from: if, reason: not valid java name */
    public QMUIDialog f19795if;

    /* renamed from: this, reason: not valid java name */
    public View f19801this;

    /* renamed from: new, reason: not valid java name */
    private boolean f19798new = true;

    /* renamed from: try, reason: not valid java name */
    private boolean f19803try = true;

    /* renamed from: break, reason: not valid java name */
    public List<QMUIDialogAction> f19785break = new ArrayList();

    /* renamed from: final, reason: not valid java name */
    private int f19792final = -1;

    /* renamed from: super, reason: not valid java name */
    private int f19800super = 0;

    /* renamed from: throw, reason: not valid java name */
    private boolean f19802throw = true;

    /* renamed from: while, reason: not valid java name */
    private int f19804while = 0;

    /* renamed from: import, reason: not valid java name */
    private int f19796import = R.color.qmui_config_color_separator;

    /* renamed from: native, reason: not valid java name */
    private int f19797native = 0;

    /* renamed from: public, reason: not valid java name */
    private int f19799public = 0;

    public interface OnProvideDefaultTheme {
        int getThemeForBuilder(QMUIDialogBuilder qMUIDialogBuilder);
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder$do, reason: invalid class name */
    public class Cdo implements View.OnLayoutChangeListener {
        public Cdo() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            int i9 = i3 - i;
            int childCount = QMUIDialogBuilder.this.f19789const.getChildCount();
            if (childCount > 0) {
                View childAt = QMUIDialogBuilder.this.f19789const.getChildAt(childCount - 1);
                if (childAt.getRight() > i9) {
                    int iMax = Math.max(0, childAt.getPaddingLeft() - ih1.m3450new(QMUIDialogBuilder.this.f19790do, 3));
                    for (int i10 = 0; i10 < childCount; i10++) {
                        QMUIDialogBuilder.this.f19789const.getChildAt(i10).setPadding(iMax, 0, iMax, 0);
                    }
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder$for, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cfor {
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIDialogBuilder$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            QMUIDialogBuilder.this.f19795if.m23988do();
        }
    }

    public QMUIDialogBuilder(Context context) {
        this.f19790do = context;
    }

    /* renamed from: catch, reason: not valid java name */
    private View m24027catch(Context context) {
        Space space = new Space(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, 0);
        layoutParams.weight = 1.0f;
        space.setLayoutParams(layoutParams);
        return space;
    }

    /* renamed from: continue, reason: not valid java name */
    public static void m24028continue(OnProvideDefaultTheme onProvideDefaultTheme) {
        f19784switch = onProvideDefaultTheme;
    }

    /* renamed from: abstract, reason: not valid java name */
    public T m24030abstract(QMUIDialogView.OnDecorationListener onDecorationListener) {
        this.f19787catch = onDecorationListener;
        return this;
    }

    @SuppressLint({"InflateParams"})
    /* renamed from: break */
    public QMUIDialog mo3035break(@StyleRes int i) {
        QMUIDialog qMUIDialog = new QMUIDialog(this.f19790do, i);
        this.f19795if = qMUIDialog;
        Context context = qMUIDialog.getContext();
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.qmui_dialog_layout, (ViewGroup) null);
        this.f19786case = linearLayout;
        QMUIDialogView qMUIDialogView = (QMUIDialogView) linearLayout.findViewById(R.id.dialog);
        this.f19791else = qMUIDialogView;
        qMUIDialogView.setOnDecorationListener(this.f19787catch);
        this.f19794goto = this.f19786case.findViewById(R.id.anchor_top);
        this.f19801this = this.f19786case.findViewById(R.id.anchor_bottom);
        m24050switch(this.f19795if, this.f19791else, context);
        mo3038return(this.f19795if, this.f19791else, context);
        m24047static(this.f19795if, this.f19791else, context);
        this.f19795if.addContentView(this.f19786case, new ViewGroup.LayoutParams(-1, -2));
        this.f19795if.setCancelable(this.f19798new);
        this.f19795if.setCanceledOnTouchOutside(this.f19803try);
        mo24001native(this.f19795if, this.f19786case, context);
        return this.f19795if;
    }

    /* renamed from: case, reason: not valid java name */
    public T m24031case(int i, CharSequence charSequence, QMUIDialogAction.ActionListener actionListener) {
        return (T) m24054try(i, charSequence, 1, actionListener);
    }

    /* renamed from: class, reason: not valid java name */
    public View m24032class() {
        return this.f19801this;
    }

    /* renamed from: const, reason: not valid java name */
    public View m24033const() {
        return this.f19794goto;
    }

    /* renamed from: default, reason: not valid java name */
    public T m24034default(int i, int i2, int i3, int i4) {
        this.f19804while = i;
        this.f19796import = i2;
        this.f19797native = i3;
        this.f19799public = i4;
        return this;
    }

    /* renamed from: else, reason: not valid java name */
    public T m24035else(@Nullable QMUIDialogAction qMUIDialogAction) {
        if (qMUIDialogAction != null) {
            this.f19785break.add(qMUIDialogAction);
        }
        return this;
    }

    /* renamed from: extends, reason: not valid java name */
    public T m24036extends(boolean z) {
        this.f19798new = z;
        return this;
    }

    /* renamed from: final, reason: not valid java name */
    public Context m24037final() {
        return this.f19790do;
    }

    /* renamed from: finally, reason: not valid java name */
    public T m24038finally(boolean z) {
        this.f19803try = z;
        return this;
    }

    /* renamed from: for, reason: not valid java name */
    public T m24039for(int i, int i2, QMUIDialogAction.ActionListener actionListener) {
        return (T) m24041if(i, i2, 1, actionListener);
    }

    /* renamed from: goto, reason: not valid java name */
    public T m24040goto(CharSequence charSequence, QMUIDialogAction.ActionListener actionListener) {
        return (T) m24054try(0, charSequence, 1, actionListener);
    }

    /* renamed from: if, reason: not valid java name */
    public T m24041if(int i, int i2, int i3, QMUIDialogAction.ActionListener actionListener) {
        return (T) m24054try(i, this.f19790do.getResources().getString(i2), i3, actionListener);
    }

    /* renamed from: import, reason: not valid java name */
    public boolean m24042import() {
        String str = this.f19793for;
        return (str == null || str.length() == 0) ? false : true;
    }

    /* renamed from: interface, reason: not valid java name */
    public QMUIDialog m24043interface() {
        QMUIDialog qMUIDialogM24051this = m24051this();
        qMUIDialogM24051this.show();
        return qMUIDialogM24051this;
    }

    /* renamed from: native */
    public void mo24001native(QMUIDialog qMUIDialog, LinearLayout linearLayout, Context context) {
        Cif cif = new Cif();
        this.f19801this.setOnClickListener(cif);
        this.f19794goto.setOnClickListener(cif);
        this.f19786case.setOnClickListener(cif);
    }

    /* renamed from: new, reason: not valid java name */
    public T m24044new(int i, QMUIDialogAction.ActionListener actionListener) {
        return (T) m24039for(0, i, actionListener);
    }

    /* renamed from: package, reason: not valid java name */
    public T m24045package(boolean z) {
        this.f19802throw = z;
        return this;
    }

    /* renamed from: private, reason: not valid java name */
    public T m24046private(int i) {
        this.f19792final = i;
        return this;
    }

    /* renamed from: public */
    public void mo3037public(TextView textView) {
    }

    /* renamed from: return */
    public abstract void mo3038return(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context);

    /* JADX WARN: Removed duplicated region for block: B:21:0x0054  */
    /* renamed from: static, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m24047static(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
        LinearLayout.LayoutParams layoutParams;
        int size = this.f19785break.size();
        if (size > 0) {
            int i = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.QMUIDialogActionContainerCustomDef, R.attr.qmui_dialog_action_container_style, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            int integer = 1;
            int integer2 = 0;
            int dimensionPixelSize = -1;
            int dimensionPixelSize2 = 0;
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == R.styleable.QMUIDialogActionContainerCustomDef_qmui_dialog_action_container_justify_content) {
                    integer = typedArrayObtainStyledAttributes.getInteger(index, integer);
                } else if (index == R.styleable.QMUIDialogActionContainerCustomDef_qmui_dialog_action_container_custom_space_index) {
                    integer2 = typedArrayObtainStyledAttributes.getInteger(index, 0);
                } else if (index == R.styleable.QMUIDialogActionContainerCustomDef_qmui_dialog_action_space) {
                    dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == R.styleable.QMUIDialogActionContainerCustomDef_qmui_dialog_action_height) {
                    dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            if (this.f19800super != 1) {
                if (integer == 0) {
                    integer2 = size;
                } else if (integer == 1) {
                    integer2 = 0;
                } else if (integer != 3) {
                    integer2 = -1;
                }
            }
            QMUILinearLayout qMUILinearLayout = new QMUILinearLayout(context, null, R.attr.qmui_dialog_action_container_style);
            this.f19789const = qMUILinearLayout;
            qMUILinearLayout.setOrientation(this.f19800super == 1 ? 1 : 0);
            int i3 = -2;
            this.f19789const.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
            while (i < size) {
                if (integer2 == i) {
                    this.f19789const.addView(m24027catch(context));
                }
                QMUIDialogAction qMUIDialogAction = this.f19785break.get(i);
                if (this.f19800super == 1) {
                    layoutParams = new LinearLayout.LayoutParams(-1, dimensionPixelSize);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(i3, dimensionPixelSize);
                    if (integer2 >= 0) {
                        if (i >= integer2) {
                            layoutParams.leftMargin = dimensionPixelSize2;
                        } else {
                            layoutParams.rightMargin = dimensionPixelSize2;
                        }
                    }
                    if (integer == 2) {
                        layoutParams.weight = 1.0f;
                    }
                }
                QMUIButton qMUIButtonM24025for = qMUIDialogAction.m24025for(this.f19795if, i);
                int i4 = this.f19804while;
                if (i4 > 0 && i > 0 && integer2 != i) {
                    if (this.f19800super == 1) {
                        qMUIButtonM24025for.onlyShowTopDivider(this.f19797native, this.f19799public, i4, ContextCompat.getColor(context, this.f19796import));
                    } else {
                        qMUIButtonM24025for.onlyShowLeftDivider(this.f19797native, this.f19799public, i4, ContextCompat.getColor(context, this.f19796import));
                    }
                }
                qMUIButtonM24025for.setChangeAlphaWhenDisable(this.f19802throw);
                qMUIButtonM24025for.setChangeAlphaWhenPress(this.f19802throw);
                this.f19789const.addView(qMUIButtonM24025for, layoutParams);
                i++;
                i3 = -2;
            }
            if (integer2 == size) {
                this.f19789const.addView(m24027catch(context));
            }
            if (this.f19800super == 0) {
                this.f19789const.addOnLayoutChangeListener(new Cdo());
            }
            viewGroup.addView(this.f19789const);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public T m24048strictfp(int i) {
        return (T) m24055volatile(this.f19790do.getResources().getString(i));
    }

    /* renamed from: super, reason: not valid java name */
    public int m24049super() {
        int i = this.f19792final;
        if (i != -1) {
            return i;
        }
        double dM3440final = ih1.m3440final(this.f19790do);
        Double.isNaN(dM3440final);
        return ((int) (dM3440final * 0.85d)) - ih1.m3450new(this.f19790do, 100);
    }

    /* renamed from: switch, reason: not valid java name */
    public void m24050switch(QMUIDialog qMUIDialog, ViewGroup viewGroup, Context context) {
        if (m24042import()) {
            TextView textView = new TextView(context);
            this.f19788class = textView;
            textView.setText(this.f19793for);
            sh1.m7401do(this.f19788class, R.attr.qmui_dialog_title_style);
            mo3037public(this.f19788class);
            this.f19788class.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
            viewGroup.addView(this.f19788class);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public QMUIDialog m24051this() {
        int themeForBuilder;
        OnProvideDefaultTheme onProvideDefaultTheme = f19784switch;
        return (onProvideDefaultTheme == null || (themeForBuilder = onProvideDefaultTheme.getThemeForBuilder(this)) <= 0) ? mo3035break(R.style.QMUI_Dialog) : mo3035break(themeForBuilder);
    }

    /* renamed from: throw, reason: not valid java name */
    public List<QMUIDialogAction> m24052throw() {
        ArrayList arrayList = new ArrayList();
        for (QMUIDialogAction qMUIDialogAction : this.f19785break) {
            if (qMUIDialogAction.m24026try() == 0) {
                arrayList.add(qMUIDialogAction);
            }
        }
        return arrayList;
    }

    /* renamed from: throws, reason: not valid java name */
    public T m24053throws(int i) {
        this.f19800super = i;
        return this;
    }

    /* renamed from: try, reason: not valid java name */
    public T m24054try(int i, CharSequence charSequence, int i2, QMUIDialogAction.ActionListener actionListener) {
        this.f19785break.add(new QMUIDialogAction(this.f19790do, i, charSequence, i2, actionListener));
        return this;
    }

    /* renamed from: volatile, reason: not valid java name */
    public T m24055volatile(String str) {
        if (str != null && str.length() > 0) {
            this.f19793for = str + this.f19790do.getString(R.string.qmui_tool_fixellipsize);
        }
        return this;
    }

    /* renamed from: while, reason: not valid java name */
    public TextView m24056while() {
        return this.f19788class;
    }
}
