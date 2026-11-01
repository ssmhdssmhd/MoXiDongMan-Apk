package com.qmuiteam.qmui.widget.grouplist;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v4.sh1;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.qmuiteam.qmui.R;
import com.qmuiteam.qmui.util.Cfor;
import com.qmuiteam.qmui.widget.grouplist.QMUICommonListItemView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes2.dex */
public class QMUIGroupListView extends LinearLayout {

    /* renamed from: for, reason: not valid java name */
    public static final int f19846for = 0;

    /* renamed from: new, reason: not valid java name */
    public static final int f19847new = 1;

    /* renamed from: do, reason: not valid java name */
    private int f19848do;

    /* renamed from: if, reason: not valid java name */
    private SparseArray<Cdo> f19849if;

    /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUIGroupListView$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private Context f19854do;

        /* renamed from: for, reason: not valid java name */
        private QMUIGroupListSectionHeaderFooterView f19856for;

        /* renamed from: if, reason: not valid java name */
        private QMUIGroupListSectionHeaderFooterView f19858if;

        /* renamed from: try, reason: not valid java name */
        private boolean f19861try;

        /* renamed from: case, reason: not valid java name */
        private boolean f19851case = true;

        /* renamed from: else, reason: not valid java name */
        private int f19855else = 0;

        /* renamed from: goto, reason: not valid java name */
        private int f19857goto = 0;

        /* renamed from: this, reason: not valid java name */
        private int f19860this = 0;

        /* renamed from: break, reason: not valid java name */
        private int f19850break = 0;

        /* renamed from: catch, reason: not valid java name */
        private int f19852catch = -2;

        /* renamed from: class, reason: not valid java name */
        private int f19853class = -2;

        /* renamed from: new, reason: not valid java name */
        private SparseArray<QMUICommonListItemView> f19859new = new SparseArray<>();

        /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUIGroupListView$do$do, reason: invalid class name and collision with other inner class name */
        public class ViewOnClickListenerC0189do implements View.OnClickListener {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ QMUICommonListItemView f19862do;

            public ViewOnClickListenerC0189do(QMUICommonListItemView qMUICommonListItemView) {
                this.f19862do = qMUICommonListItemView;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.f19862do.getSwitch().toggle();
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUIGroupListView$do$if, reason: invalid class name */
        public class Cif implements QMUICommonListItemView.LayoutParamConfig {
            public Cif() {
            }

            @Override // com.qmuiteam.qmui.widget.grouplist.QMUICommonListItemView.LayoutParamConfig
            public RelativeLayout.LayoutParams onConfig(RelativeLayout.LayoutParams layoutParams) {
                layoutParams.width = Cdo.this.f19852catch;
                layoutParams.height = Cdo.this.f19853class;
                return layoutParams;
            }
        }

        public Cdo(Context context) {
            this.f19854do = context;
        }

        /* renamed from: break, reason: not valid java name */
        public Cdo m24089break(int i, int i2) {
            this.f19853class = i2;
            this.f19852catch = i;
            return this;
        }

        /* renamed from: case, reason: not valid java name */
        public QMUIGroupListSectionHeaderFooterView m24090case(CharSequence charSequence) {
            return new QMUIGroupListSectionHeaderFooterView(this.f19854do, charSequence, true);
        }

        /* renamed from: catch, reason: not valid java name */
        public Cdo m24091catch(int i) {
            this.f19850break = i;
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public Cdo m24092class(int i, int i2, int i3, int i4) {
            this.f19855else = i;
            this.f19857goto = i2;
            this.f19860this = i3;
            this.f19850break = i4;
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public Cdo m24093const(CharSequence charSequence) {
            this.f19858if = m24094else(charSequence);
            return this;
        }

        /* renamed from: else, reason: not valid java name */
        public QMUIGroupListSectionHeaderFooterView m24094else(CharSequence charSequence) {
            return new QMUIGroupListSectionHeaderFooterView(this.f19854do, charSequence);
        }

        /* renamed from: final, reason: not valid java name */
        public Cdo m24095final(boolean z) {
            this.f19861try = z;
            return this;
        }

        /* renamed from: for, reason: not valid java name */
        public Cdo m24096for(QMUICommonListItemView qMUICommonListItemView, View.OnClickListener onClickListener) {
            return m24098new(qMUICommonListItemView, onClickListener, null);
        }

        /* renamed from: goto, reason: not valid java name */
        public void m24097goto(QMUIGroupListView qMUIGroupListView) {
            QMUIGroupListSectionHeaderFooterView qMUIGroupListSectionHeaderFooterView = this.f19858if;
            if (qMUIGroupListSectionHeaderFooterView != null && qMUIGroupListSectionHeaderFooterView.getParent() == qMUIGroupListView) {
                qMUIGroupListView.removeView(this.f19858if);
            }
            for (int i = 0; i < this.f19859new.size(); i++) {
                qMUIGroupListView.removeView(this.f19859new.get(i));
            }
            QMUIGroupListSectionHeaderFooterView qMUIGroupListSectionHeaderFooterView2 = this.f19856for;
            if (qMUIGroupListSectionHeaderFooterView2 != null && qMUIGroupListSectionHeaderFooterView2.getParent() == qMUIGroupListView) {
                qMUIGroupListView.removeView(this.f19856for);
            }
            qMUIGroupListView.m24077break(this);
        }

        /* renamed from: new, reason: not valid java name */
        public Cdo m24098new(QMUICommonListItemView qMUICommonListItemView, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
            if (qMUICommonListItemView.getAccessoryType() == 2) {
                qMUICommonListItemView.setOnClickListener(new ViewOnClickListenerC0189do(qMUICommonListItemView));
            } else if (onClickListener != null) {
                qMUICommonListItemView.setOnClickListener(onClickListener);
            }
            if (onLongClickListener != null) {
                qMUICommonListItemView.setOnLongClickListener(onLongClickListener);
            }
            SparseArray<QMUICommonListItemView> sparseArray = this.f19859new;
            sparseArray.append(sparseArray.size(), qMUICommonListItemView);
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public Cdo m24099super(boolean z) {
            this.f19851case = z;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public Cdo m24100this(CharSequence charSequence) {
            this.f19856for = m24090case(charSequence);
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public void m24101try(QMUIGroupListView qMUIGroupListView) {
            if (this.f19858if == null) {
                if (this.f19861try) {
                    m24093const("Section " + qMUIGroupListView.getSectionCount());
                } else if (this.f19851case) {
                    m24093const("");
                }
            }
            View view = this.f19858if;
            if (view != null) {
                qMUIGroupListView.addView(view);
            }
            if (qMUIGroupListView.getSeparatorStyle() == 0) {
                if (this.f19855else == 0) {
                    this.f19855else = R.drawable.qmui_s_list_item_bg_with_border_double;
                }
                if (this.f19857goto == 0) {
                    this.f19857goto = R.drawable.qmui_s_list_item_bg_with_border_double;
                }
                if (this.f19860this == 0) {
                    this.f19860this = R.drawable.qmui_s_list_item_bg_with_border_bottom;
                }
                if (this.f19850break == 0) {
                    this.f19850break = R.drawable.qmui_s_list_item_bg_with_border_bottom;
                }
            }
            int size = this.f19859new.size();
            Cif cif = new Cif();
            int i = 0;
            while (i < size) {
                QMUICommonListItemView qMUICommonListItemView = this.f19859new.get(i);
                int i2 = qMUIGroupListView.getSeparatorStyle() == 0 ? size == 1 ? this.f19855else : i == 0 ? this.f19857goto : i == size + (-1) ? this.f19860this : this.f19850break : R.drawable.qmui_s_list_item_bg_with_border_none;
                qMUICommonListItemView.m24070case(cif);
                Cfor.m23656throws(qMUICommonListItemView, i2);
                qMUIGroupListView.addView(qMUICommonListItemView);
                i++;
            }
            View view2 = this.f19856for;
            if (view2 != null) {
                qMUIGroupListView.addView(view2);
            }
            qMUIGroupListView.m24079for(this);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.qmuiteam.qmui.widget.grouplist.QMUIGroupListView$if, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cif {
    }

    public QMUIGroupListView(Context context) {
        this(context, null, R.attr.QMUIGroupListViewStyle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: break, reason: not valid java name */
    public void m24077break(Cdo cdo) {
        for (int i = 0; i < this.f19849if.size(); i++) {
            if (this.f19849if.valueAt(i) == cdo) {
                this.f19849if.remove(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: for, reason: not valid java name */
    public void m24079for(Cdo cdo) {
        SparseArray<Cdo> sparseArray = this.f19849if;
        sparseArray.append(sparseArray.size(), cdo);
    }

    /* renamed from: this, reason: not valid java name */
    public static Cdo m24081this(Context context) {
        return new Cdo(context);
    }

    /* renamed from: case, reason: not valid java name */
    public QMUICommonListItemView m24082case(Drawable drawable, CharSequence charSequence, String str, int i, int i2, int i3) {
        QMUICommonListItemView qMUICommonListItemView = new QMUICommonListItemView(getContext());
        qMUICommonListItemView.setOrientation(i);
        qMUICommonListItemView.setLayoutParams(new LinearLayout.LayoutParams(-1, i3));
        qMUICommonListItemView.setImageDrawable(drawable);
        qMUICommonListItemView.setText(charSequence);
        qMUICommonListItemView.setDetailText(str);
        qMUICommonListItemView.setAccessoryType(i2);
        return qMUICommonListItemView;
    }

    /* renamed from: else, reason: not valid java name */
    public QMUICommonListItemView m24083else(CharSequence charSequence) {
        return m24086try(null, charSequence, null, 1, 0);
    }

    public int getSectionCount() {
        return this.f19849if.size();
    }

    public int getSeparatorStyle() {
        return this.f19848do;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cdo m24084goto(int i) {
        return this.f19849if.get(i);
    }

    /* renamed from: new, reason: not valid java name */
    public QMUICommonListItemView m24085new(int i) {
        return m24086try(null, null, null, i, 0);
    }

    public void setSeparatorStyle(int i) {
        this.f19848do = i;
    }

    /* renamed from: try, reason: not valid java name */
    public QMUICommonListItemView m24086try(Drawable drawable, CharSequence charSequence, String str, int i, int i2) {
        return i == 0 ? m24082case(drawable, charSequence, str, i, i2, sh1.m7405new(getContext(), R.attr.qmui_list_item_height_higher)) : m24082case(drawable, charSequence, str, i, i2, sh1.m7405new(getContext(), R.attr.qmui_list_item_height));
    }

    public QMUIGroupListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.QMUIGroupListViewStyle);
    }

    public QMUIGroupListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.QMUIGroupListView, i, 0);
        this.f19848do = typedArrayObtainStyledAttributes.getInt(R.styleable.QMUIGroupListView_separatorStyle, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f19849if = new SparseArray<>();
        setOrientation(1);
    }
}
