package com.qmuiteam.qmui.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.ih1;
import android.support.v4.kh1;
import android.support.v4.sh1;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.qmuiteam.qmui.QMUILog;
import com.qmuiteam.qmui.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class QMUIBottomSheet extends Dialog {

    /* renamed from: new, reason: not valid java name */
    private static final String f19650new = "QMUIBottomSheet";

    /* renamed from: try, reason: not valid java name */
    private static final int f19651try = 200;

    /* renamed from: do, reason: not valid java name */
    private View f19652do;

    /* renamed from: for, reason: not valid java name */
    private OnBottomSheetShowListener f19653for;

    /* renamed from: if, reason: not valid java name */
    private boolean f19654if;

    public static class BottomGridSheetBuilder implements View.OnClickListener {

        /* renamed from: const, reason: not valid java name */
        public static final int f19655const = 0;

        /* renamed from: final, reason: not valid java name */
        public static final int f19656final = 1;

        /* renamed from: case, reason: not valid java name */
        private OnSheetItemClickListener f19658case;

        /* renamed from: do, reason: not valid java name */
        private Context f19661do;

        /* renamed from: else, reason: not valid java name */
        private ViewGroup f19662else;

        /* renamed from: goto, reason: not valid java name */
        private TextView f19664goto;

        /* renamed from: if, reason: not valid java name */
        private QMUIBottomSheet f19665if;

        /* renamed from: try, reason: not valid java name */
        private int f19668try = -1;

        /* renamed from: this, reason: not valid java name */
        private Typeface f19667this = null;

        /* renamed from: break, reason: not valid java name */
        private boolean f19657break = true;

        /* renamed from: catch, reason: not valid java name */
        private CharSequence f19659catch = null;

        /* renamed from: class, reason: not valid java name */
        private View.OnClickListener f19660class = null;

        /* renamed from: for, reason: not valid java name */
        private SparseArray<ItemViewFactory> f19663for = new SparseArray<>();

        /* renamed from: new, reason: not valid java name */
        private SparseArray<ItemViewFactory> f19666new = new SparseArray<>();

        public interface ItemViewFactory {
            View create(QMUIBottomSheet qMUIBottomSheet, int i, int i2, View.OnClickListener onClickListener);
        }

        public interface OnSheetItemClickListener {
            void onClick(QMUIBottomSheet qMUIBottomSheet, View view);
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomGridSheetBuilder$do, reason: invalid class name */
        public class Cdo implements ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f19669do;

            public Cdo(View view) {
                this.f19669do = view;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet.BottomGridSheetBuilder.ItemViewFactory
            public View create(QMUIBottomSheet qMUIBottomSheet, int i, int i2, View.OnClickListener onClickListener) {
                return this.f19669do;
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomGridSheetBuilder$for, reason: invalid class name */
        public class Cfor implements View.OnClickListener {
            public Cfor() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BottomGridSheetBuilder.this.f19665if.dismiss();
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomGridSheetBuilder$if, reason: invalid class name */
        public class Cif implements ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            public final /* synthetic */ View f19672do;

            public Cif(View view) {
                this.f19672do = view;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet.BottomGridSheetBuilder.ItemViewFactory
            public View create(QMUIBottomSheet qMUIBottomSheet, int i, int i2, View.OnClickListener onClickListener) {
                return this.f19672do;
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomGridSheetBuilder$new, reason: invalid class name */
        public static class Cnew implements ItemViewFactory {

            /* renamed from: do, reason: not valid java name */
            private Drawable f19674do;

            /* renamed from: for, reason: not valid java name */
            private Object f19675for;

            /* renamed from: if, reason: not valid java name */
            private CharSequence f19676if;

            /* renamed from: new, reason: not valid java name */
            private int f19677new;

            /* renamed from: try, reason: not valid java name */
            private Typeface f19678try;

            public Cnew(Drawable drawable, CharSequence charSequence, Object obj, int i, Typeface typeface) {
                this.f19674do = drawable;
                this.f19676if = charSequence;
                this.f19675for = obj;
                this.f19677new = i;
                this.f19678try = typeface;
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet.BottomGridSheetBuilder.ItemViewFactory
            public View create(QMUIBottomSheet qMUIBottomSheet, int i, int i2, View.OnClickListener onClickListener) {
                QMUIBottomSheetItemView qMUIBottomSheetItemView = (QMUIBottomSheetItemView) LayoutInflater.from(qMUIBottomSheet.getContext()).inflate(i, (ViewGroup) null, false);
                TextView textView = (TextView) qMUIBottomSheetItemView.findViewById(R.id.grid_item_title);
                Typeface typeface = this.f19678try;
                if (typeface != null) {
                    textView.setTypeface(typeface);
                }
                textView.setText(this.f19676if);
                qMUIBottomSheetItemView.setTag(this.f19675for);
                qMUIBottomSheetItemView.setOnClickListener(onClickListener);
                ((AppCompatImageView) qMUIBottomSheetItemView.findViewById(R.id.grid_item_image)).setImageDrawable(this.f19674do);
                if (this.f19677new != 0) {
                    ((ImageView) ((ViewStub) qMUIBottomSheetItemView.findViewById(R.id.grid_item_subscript)).inflate()).setImageResource(this.f19677new);
                }
                return qMUIBottomSheetItemView;
            }
        }

        @Retention(RetentionPolicy.SOURCE)
        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomGridSheetBuilder$try, reason: invalid class name */
        /* loaded from: classes.dex */
        public @interface Ctry {
        }

        public BottomGridSheetBuilder(Context context) {
            this.f19661do = context;
        }

        /* renamed from: catch, reason: not valid java name */
        private View m23934catch(QMUIBottomSheet qMUIBottomSheet) {
            LinearLayout linearLayout = (LinearLayout) View.inflate(qMUIBottomSheet.getContext(), m23952super(), null);
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.findViewById(m23954throw());
            LinearLayout linearLayout3 = (LinearLayout) linearLayout.findViewById(m23946import());
            this.f19662else = (ViewGroup) linearLayout.findViewById(R.id.bottom_sheet_button_container);
            this.f19664goto = (TextView) linearLayout.findViewById(R.id.bottom_sheet_close_button);
            int iMax = Math.max(this.f19663for.size(), this.f19666new.size());
            int iM3458super = ih1.m3458super(qMUIBottomSheet.getContext());
            int iM3440final = ih1.m3440final(qMUIBottomSheet.getContext());
            if (iM3458super >= iM3440final) {
                iM3458super = iM3440final;
            }
            int iM23935class = m23935class(iM3458super, iMax, linearLayout2.getPaddingLeft(), linearLayout2.getPaddingRight());
            m23937goto(qMUIBottomSheet, this.f19663for, linearLayout2, iM23935class, 0);
            m23937goto(qMUIBottomSheet, this.f19666new, linearLayout3, iM23935class, 1);
            boolean z = this.f19663for.size() > 0;
            boolean z2 = this.f19666new.size() > 0;
            if (!z) {
                linearLayout2.setVisibility(8);
            }
            if (!z2) {
                if (z) {
                    linearLayout2.setPadding(linearLayout2.getPaddingLeft(), linearLayout2.getPaddingTop(), linearLayout2.getPaddingRight(), 0);
                }
                linearLayout3.setVisibility(8);
            }
            ViewGroup viewGroup = this.f19662else;
            if (viewGroup != null) {
                if (this.f19657break) {
                    viewGroup.setVisibility(0);
                    linearLayout.setPadding(linearLayout.getPaddingLeft(), linearLayout.getPaddingTop(), linearLayout.getPaddingRight(), 0);
                } else {
                    viewGroup.setVisibility(8);
                }
                Typeface typeface = this.f19667this;
                if (typeface != null) {
                    this.f19664goto.setTypeface(typeface);
                }
                CharSequence charSequence = this.f19659catch;
                if (charSequence != null) {
                    this.f19664goto.setText(charSequence);
                }
                View.OnClickListener onClickListener = this.f19660class;
                if (onClickListener != null) {
                    this.f19664goto.setOnClickListener(onClickListener);
                } else {
                    this.f19664goto.setOnClickListener(new Cfor());
                }
            }
            return linearLayout;
        }

        /* renamed from: class, reason: not valid java name */
        private int m23935class(int i, int i2, int i3, int i4) {
            int i5;
            if (this.f19668try == -1) {
                this.f19668try = sh1.m7405new(this.f19661do, R.attr.qmui_bottom_sheet_grid_item_mini_width);
            }
            int i6 = i - i3;
            int i7 = i6 - i4;
            int i8 = this.f19668try;
            if (i2 >= 3 && (i5 = i7 - (i2 * i8)) > 0 && i5 < i8) {
                i8 = i7 / (i7 / i8);
            }
            return i2 * i8 > i7 ? (int) (i6 / ((i6 / i8) + 0.5f)) : i8;
        }

        /* renamed from: goto, reason: not valid java name */
        private void m23937goto(QMUIBottomSheet qMUIBottomSheet, SparseArray<ItemViewFactory> sparseArray, LinearLayout linearLayout, int i, int i2) {
            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                View viewCreate = sparseArray.get(i3).create(qMUIBottomSheet, m23957while(), i2, this);
                m23938switch(viewCreate, i);
                linearLayout.addView(viewCreate);
            }
        }

        /* renamed from: switch, reason: not valid java name */
        private void m23938switch(View view, int i) {
            LinearLayout.LayoutParams layoutParams;
            if (view.getLayoutParams() != null) {
                layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = i;
            } else {
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(i, -2);
                view.setLayoutParams(layoutParams2);
                layoutParams = layoutParams2;
            }
            layoutParams.gravity = 48;
        }

        /* renamed from: break, reason: not valid java name */
        public QMUIBottomSheet m23939break(int i) {
            QMUIBottomSheet qMUIBottomSheet = new QMUIBottomSheet(this.f19661do, i);
            this.f19665if = qMUIBottomSheet;
            this.f19665if.setContentView(m23934catch(qMUIBottomSheet), new ViewGroup.LayoutParams(-1, -2));
            return this.f19665if;
        }

        @Deprecated
        /* renamed from: case, reason: not valid java name */
        public BottomGridSheetBuilder m23940case(View view, int i) {
            if (i == 0) {
                SparseArray<ItemViewFactory> sparseArray = this.f19663for;
                sparseArray.append(sparseArray.size(), new Cdo(view));
            } else if (i == 1) {
                SparseArray<ItemViewFactory> sparseArray2 = this.f19666new;
                sparseArray2.append(sparseArray2.size(), new Cif(view));
            }
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public ItemViewFactory m23941const(Drawable drawable, CharSequence charSequence, Object obj, int i) {
            return m23943final(drawable, charSequence, obj, i, null);
        }

        /* renamed from: else, reason: not valid java name */
        public BottomGridSheetBuilder m23942else(ItemViewFactory itemViewFactory, int i) {
            if (i == 0) {
                SparseArray<ItemViewFactory> sparseArray = this.f19663for;
                sparseArray.append(sparseArray.size(), itemViewFactory);
            } else if (i == 1) {
                SparseArray<ItemViewFactory> sparseArray2 = this.f19666new;
                sparseArray2.append(sparseArray2.size(), itemViewFactory);
            }
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public ItemViewFactory m23943final(Drawable drawable, CharSequence charSequence, Object obj, int i, Typeface typeface) {
            return new Cnew(drawable, charSequence, obj, i, typeface);
        }

        /* renamed from: for, reason: not valid java name */
        public BottomGridSheetBuilder m23944for(int i, CharSequence charSequence, Object obj, int i2) {
            return m23948new(i, charSequence, obj, i2, 0);
        }

        /* renamed from: if, reason: not valid java name */
        public BottomGridSheetBuilder m23945if(int i, CharSequence charSequence, int i2) {
            return m23948new(i, charSequence, charSequence, i2, 0);
        }

        /* renamed from: import, reason: not valid java name */
        public int m23946import() {
            return R.id.bottom_sheet_second_linear_layout;
        }

        /* renamed from: native, reason: not valid java name */
        public BottomGridSheetBuilder m23947native(Typeface typeface) {
            this.f19667this = typeface;
            return this;
        }

        /* renamed from: new, reason: not valid java name */
        public BottomGridSheetBuilder m23948new(int i, CharSequence charSequence, Object obj, int i2, int i3) {
            return m23956try(i, charSequence, obj, i2, i3, null);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OnSheetItemClickListener onSheetItemClickListener = this.f19658case;
            if (onSheetItemClickListener != null) {
                onSheetItemClickListener.onClick(this.f19665if, view);
            }
        }

        /* renamed from: public, reason: not valid java name */
        public BottomGridSheetBuilder m23949public(View.OnClickListener onClickListener) {
            this.f19660class = onClickListener;
            return this;
        }

        /* renamed from: return, reason: not valid java name */
        public BottomGridSheetBuilder m23950return(CharSequence charSequence) {
            this.f19659catch = charSequence;
            return this;
        }

        /* renamed from: static, reason: not valid java name */
        public BottomGridSheetBuilder m23951static(boolean z) {
            this.f19657break = z;
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public int m23952super() {
            return R.layout.qmui_bottom_sheet_grid;
        }

        /* renamed from: this, reason: not valid java name */
        public QMUIBottomSheet m23953this() {
            return m23939break(R.style.QMUI_BottomSheet);
        }

        /* renamed from: throw, reason: not valid java name */
        public int m23954throw() {
            return R.id.bottom_sheet_first_linear_layout;
        }

        /* renamed from: throws, reason: not valid java name */
        public BottomGridSheetBuilder m23955throws(OnSheetItemClickListener onSheetItemClickListener) {
            this.f19658case = onSheetItemClickListener;
            return this;
        }

        /* renamed from: try, reason: not valid java name */
        public BottomGridSheetBuilder m23956try(int i, CharSequence charSequence, Object obj, int i2, int i3, Typeface typeface) {
            return m23942else(m23943final(AppCompatResources.getDrawable(this.f19661do, i), charSequence, obj, i3, typeface), i2);
        }

        /* renamed from: while, reason: not valid java name */
        public int m23957while() {
            return R.layout.qmui_bottom_sheet_grid_item;
        }
    }

    public static class BottomListSheetBuilder {

        /* renamed from: break, reason: not valid java name */
        private TextView f19679break;

        /* renamed from: case, reason: not valid java name */
        private ListView f19680case;

        /* renamed from: catch, reason: not valid java name */
        private OnSheetItemClickListener f19681catch;

        /* renamed from: class, reason: not valid java name */
        private DialogInterface.OnDismissListener f19682class;

        /* renamed from: do, reason: not valid java name */
        private Context f19683do;

        /* renamed from: else, reason: not valid java name */
        private boolean f19684else;

        /* renamed from: for, reason: not valid java name */
        private List<Cif> f19685for;

        /* renamed from: goto, reason: not valid java name */
        private int f19686goto;

        /* renamed from: if, reason: not valid java name */
        private QMUIBottomSheet f19687if;

        /* renamed from: new, reason: not valid java name */
        private BaseAdapter f19688new;

        /* renamed from: this, reason: not valid java name */
        private String f19689this;

        /* renamed from: try, reason: not valid java name */
        private List<View> f19690try;

        public interface OnSheetItemClickListener {
            void onClick(QMUIBottomSheet qMUIBottomSheet, View view, int i, String str);
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomListSheetBuilder$do, reason: invalid class name */
        public class Cdo implements OnBottomSheetShowListener {
            public Cdo() {
            }

            @Override // com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet.OnBottomSheetShowListener
            public void onShow() {
                BottomListSheetBuilder.this.f19680case.setSelection(BottomListSheetBuilder.this.f19686goto);
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomListSheetBuilder$for, reason: invalid class name */
        public class Cfor extends BaseAdapter {

            /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomListSheetBuilder$for$do, reason: invalid class name */
            public class Cdo implements View.OnClickListener {

                /* renamed from: do, reason: not valid java name */
                public final /* synthetic */ Cif f19693do;

                /* renamed from: for, reason: not valid java name */
                public final /* synthetic */ int f19694for;

                /* renamed from: if, reason: not valid java name */
                public final /* synthetic */ Cnew f19695if;

                public Cdo(Cif cif, Cnew cnew, int i) {
                    this.f19693do = cif;
                    this.f19695if = cnew;
                    this.f19694for = i;
                }

                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Cif cif = this.f19693do;
                    if (cif.f19700new) {
                        cif.f19700new = false;
                        this.f19695if.f19705new.setVisibility(8);
                    }
                    if (BottomListSheetBuilder.this.f19684else) {
                        BottomListSheetBuilder.this.m23978static(this.f19694for);
                        Cfor.this.notifyDataSetChanged();
                    }
                    if (BottomListSheetBuilder.this.f19681catch != null) {
                        BottomListSheetBuilder.this.f19681catch.onClick(BottomListSheetBuilder.this.f19687if, view, this.f19694for, this.f19693do.f19698for);
                    }
                }
            }

            private Cfor() {
            }

            @Override // android.widget.Adapter
            /* renamed from: do, reason: not valid java name and merged with bridge method [inline-methods] */
            public Cif getItem(int i) {
                return (Cif) BottomListSheetBuilder.this.f19685for.get(i);
            }

            @Override // android.widget.Adapter
            public int getCount() {
                return BottomListSheetBuilder.this.f19685for.size();
            }

            @Override // android.widget.Adapter
            public long getItemId(int i) {
                return 0L;
            }

            @Override // android.widget.Adapter
            public View getView(int i, View view, ViewGroup viewGroup) {
                Cnew cnew;
                Cif item = getItem(i);
                if (view == null) {
                    view = LayoutInflater.from(BottomListSheetBuilder.this.f19683do).inflate(R.layout.qmui_bottom_sheet_list_item, viewGroup, false);
                    cnew = new Cnew(null);
                    cnew.f19702do = (ImageView) view.findViewById(R.id.bottom_dialog_list_item_img);
                    cnew.f19704if = (TextView) view.findViewById(R.id.bottom_dialog_list_item_title);
                    cnew.f19703for = view.findViewById(R.id.bottom_dialog_list_item_mark_view_stub);
                    cnew.f19705new = view.findViewById(R.id.bottom_dialog_list_item_point);
                    view.setTag(cnew);
                } else {
                    cnew = (Cnew) view.getTag();
                }
                if (item.f19697do != null) {
                    cnew.f19702do.setVisibility(0);
                    cnew.f19702do.setImageDrawable(item.f19697do);
                } else {
                    cnew.f19702do.setVisibility(8);
                }
                cnew.f19704if.setText(item.f19699if);
                if (item.f19700new) {
                    cnew.f19705new.setVisibility(0);
                } else {
                    cnew.f19705new.setVisibility(8);
                }
                if (item.f19701try) {
                    cnew.f19704if.setEnabled(false);
                    view.setEnabled(false);
                } else {
                    cnew.f19704if.setEnabled(true);
                    view.setEnabled(true);
                }
                if (BottomListSheetBuilder.this.f19684else) {
                    View view2 = cnew.f19703for;
                    if (view2 instanceof ViewStub) {
                        cnew.f19703for = ((ViewStub) view2).inflate();
                    }
                    if (BottomListSheetBuilder.this.f19686goto == i) {
                        cnew.f19703for.setVisibility(0);
                    } else {
                        cnew.f19703for.setVisibility(8);
                    }
                } else {
                    cnew.f19703for.setVisibility(8);
                }
                view.setOnClickListener(new Cdo(item, cnew, i));
                return view;
            }

            public /* synthetic */ Cfor(BottomListSheetBuilder bottomListSheetBuilder, Cdo cdo) {
                this();
            }
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomListSheetBuilder$new, reason: invalid class name */
        public static class Cnew {

            /* renamed from: do, reason: not valid java name */
            public ImageView f19702do;

            /* renamed from: for, reason: not valid java name */
            public View f19703for;

            /* renamed from: if, reason: not valid java name */
            public TextView f19704if;

            /* renamed from: new, reason: not valid java name */
            public View f19705new;

            private Cnew() {
            }

            public /* synthetic */ Cnew(Cdo cdo) {
                this();
            }
        }

        public BottomListSheetBuilder(Context context) {
            this(context, false);
        }

        /* renamed from: public, reason: not valid java name */
        private boolean m23964public() {
            int size = this.f19685for.size() * sh1.m7405new(this.f19683do, R.attr.qmui_bottom_sheet_list_item_height);
            if (this.f19690try.size() > 0) {
                for (View view : this.f19690try) {
                    if (view.getMeasuredHeight() == 0) {
                        view.measure(0, 0);
                    }
                    size += view.getMeasuredHeight();
                }
            }
            if (this.f19679break != null && !kh1.m4402case(this.f19689this)) {
                size += sh1.m7405new(this.f19683do, R.attr.qmui_bottom_sheet_title_height);
            }
            return size > m23976native();
        }

        /* renamed from: while, reason: not valid java name */
        private View m23966while() {
            Cdo cdo = null;
            View viewInflate = View.inflate(this.f19683do, m23975import(), null);
            this.f19679break = (TextView) viewInflate.findViewById(R.id.title);
            this.f19680case = (ListView) viewInflate.findViewById(R.id.listview);
            String str = this.f19689this;
            if (str == null || str.length() == 0) {
                this.f19679break.setVisibility(8);
            } else {
                this.f19679break.setVisibility(0);
                this.f19679break.setText(this.f19689this);
            }
            if (this.f19690try.size() > 0) {
                Iterator<View> it = this.f19690try.iterator();
                while (it.hasNext()) {
                    this.f19680case.addHeaderView(it.next());
                }
            }
            if (m23964public()) {
                this.f19680case.getLayoutParams().height = m23976native();
                this.f19687if.setOnBottomSheetShowListener(new Cdo());
            }
            Cfor cfor = new Cfor(this, cdo);
            this.f19688new = cfor;
            this.f19680case.setAdapter((ListAdapter) cfor);
            return viewInflate;
        }

        /* renamed from: break, reason: not valid java name */
        public BottomListSheetBuilder m23967break(int i, String str, String str2, boolean z) {
            this.f19685for.add(new Cif(i != 0 ? ContextCompat.getDrawable(this.f19683do, i) : null, str, str2, z));
            return this;
        }

        /* renamed from: catch, reason: not valid java name */
        public BottomListSheetBuilder m23968catch(int i, String str, String str2, boolean z, boolean z2) {
            this.f19685for.add(new Cif(i != 0 ? ContextCompat.getDrawable(this.f19683do, i) : null, str, str2, z, z2));
            return this;
        }

        /* renamed from: class, reason: not valid java name */
        public BottomListSheetBuilder m23969class(Drawable drawable, String str) {
            this.f19685for.add(new Cif(drawable, str, str));
            return this;
        }

        /* renamed from: const, reason: not valid java name */
        public BottomListSheetBuilder m23970const(String str) {
            this.f19685for.add(new Cif(str, str));
            return this;
        }

        /* renamed from: default, reason: not valid java name */
        public BottomListSheetBuilder m23971default(int i) {
            this.f19689this = this.f19683do.getResources().getString(i);
            return this;
        }

        /* renamed from: extends, reason: not valid java name */
        public BottomListSheetBuilder m23972extends(String str) {
            this.f19689this = str;
            return this;
        }

        /* renamed from: final, reason: not valid java name */
        public BottomListSheetBuilder m23973final(String str, String str2) {
            this.f19685for.add(new Cif(str, str2));
            return this;
        }

        /* renamed from: goto, reason: not valid java name */
        public BottomListSheetBuilder m23974goto(View view) {
            if (view != null) {
                this.f19690try.add(view);
            }
            return this;
        }

        /* renamed from: import, reason: not valid java name */
        public int m23975import() {
            return R.layout.qmui_bottom_sheet_list;
        }

        /* renamed from: native, reason: not valid java name */
        public int m23976native() {
            double dM3440final = ih1.m3440final(this.f19683do);
            Double.isNaN(dM3440final);
            return (int) (dM3440final * 0.5d);
        }

        /* renamed from: return, reason: not valid java name */
        public void m23977return() {
            BaseAdapter baseAdapter = this.f19688new;
            if (baseAdapter != null) {
                baseAdapter.notifyDataSetChanged();
            }
            if (m23964public()) {
                this.f19680case.getLayoutParams().height = m23976native();
                this.f19680case.setSelection(this.f19686goto);
            }
        }

        /* renamed from: static, reason: not valid java name */
        public BottomListSheetBuilder m23978static(int i) {
            this.f19686goto = i;
            return this;
        }

        /* renamed from: super, reason: not valid java name */
        public QMUIBottomSheet m23979super() {
            return m23982throw(R.style.QMUI_BottomSheet);
        }

        /* renamed from: switch, reason: not valid java name */
        public BottomListSheetBuilder m23980switch(DialogInterface.OnDismissListener onDismissListener) {
            this.f19682class = onDismissListener;
            return this;
        }

        /* renamed from: this, reason: not valid java name */
        public BottomListSheetBuilder m23981this(int i, String str, String str2) {
            this.f19685for.add(new Cif(i != 0 ? ContextCompat.getDrawable(this.f19683do, i) : null, str, str2));
            return this;
        }

        /* renamed from: throw, reason: not valid java name */
        public QMUIBottomSheet m23982throw(int i) {
            this.f19687if = new QMUIBottomSheet(this.f19683do, i);
            this.f19687if.setContentView(m23966while(), new ViewGroup.LayoutParams(-1, -2));
            DialogInterface.OnDismissListener onDismissListener = this.f19682class;
            if (onDismissListener != null) {
                this.f19687if.setOnDismissListener(onDismissListener);
            }
            return this.f19687if;
        }

        /* renamed from: throws, reason: not valid java name */
        public BottomListSheetBuilder m23983throws(OnSheetItemClickListener onSheetItemClickListener) {
            this.f19681catch = onSheetItemClickListener;
            return this;
        }

        public BottomListSheetBuilder(Context context, boolean z) {
            this.f19683do = context;
            this.f19685for = new ArrayList();
            this.f19690try = new ArrayList();
            this.f19684else = z;
        }

        /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$BottomListSheetBuilder$if, reason: invalid class name */
        public static class Cif {

            /* renamed from: do, reason: not valid java name */
            public Drawable f19697do;

            /* renamed from: for, reason: not valid java name */
            public String f19698for;

            /* renamed from: if, reason: not valid java name */
            public String f19699if;

            /* renamed from: new, reason: not valid java name */
            public boolean f19700new;

            /* renamed from: try, reason: not valid java name */
            public boolean f19701try;

            public Cif(String str, String str2) {
                this.f19697do = null;
                this.f19698for = "";
                this.f19700new = false;
                this.f19701try = false;
                this.f19699if = str;
                this.f19698for = str2;
            }

            public Cif(Drawable drawable, String str, String str2) {
                this.f19697do = null;
                this.f19698for = "";
                this.f19700new = false;
                this.f19701try = false;
                this.f19697do = drawable;
                this.f19699if = str;
                this.f19698for = str2;
            }

            public Cif(Drawable drawable, String str, String str2, boolean z) {
                this.f19697do = null;
                this.f19698for = "";
                this.f19700new = false;
                this.f19701try = false;
                this.f19697do = drawable;
                this.f19699if = str;
                this.f19698for = str2;
                this.f19700new = z;
            }

            public Cif(Drawable drawable, String str, String str2, boolean z, boolean z2) {
                this.f19697do = null;
                this.f19698for = "";
                this.f19700new = false;
                this.f19701try = false;
                this.f19697do = drawable;
                this.f19699if = str;
                this.f19698for = str2;
                this.f19700new = z;
                this.f19701try = z2;
            }
        }
    }

    public interface OnBottomSheetShowListener {
        void onShow();
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$do, reason: invalid class name */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                QMUIBottomSheet.super.dismiss();
            } catch (Exception e) {
                QMUILog.m23434case(QMUIBottomSheet.f19650new, "dismiss error\n" + Log.getStackTraceString(e), new Object[0]);
            }
        }
    }

    /* renamed from: com.qmuiteam.qmui.widget.dialog.QMUIBottomSheet$if, reason: invalid class name */
    public class Cif implements Animation.AnimationListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Runnable f19707do;

        public Cif(Runnable runnable) {
            this.f19707do = runnable;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            QMUIBottomSheet.this.f19654if = false;
            QMUIBottomSheet.this.f19652do.post(this.f19707do);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
            QMUIBottomSheet.this.f19654if = true;
        }
    }

    public QMUIBottomSheet(Context context) {
        super(context, R.style.QMUI_BottomSheet);
        this.f19654if = false;
    }

    /* renamed from: new, reason: not valid java name */
    private void m23931new() {
        if (this.f19652do == null) {
            return;
        }
        Cdo cdo = new Cdo();
        if (this.f19652do.getHeight() == 0) {
            cdo.run();
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, 1.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setDuration(200L);
        animationSet.setFillAfter(true);
        animationSet.setAnimationListener(new Cif(cdo));
        this.f19652do.startAnimation(animationSet);
    }

    /* renamed from: try, reason: not valid java name */
    private void m23932try() {
        if (this.f19652do == null) {
            return;
        }
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        AnimationSet animationSet = new AnimationSet(true);
        animationSet.addAnimation(translateAnimation);
        animationSet.addAnimation(alphaAnimation);
        animationSet.setInterpolator(new DecelerateInterpolator());
        animationSet.setDuration(200L);
        animationSet.setFillAfter(true);
        this.f19652do.startAnimation(animationSet);
    }

    /* renamed from: case, reason: not valid java name */
    public View m23933case() {
        return this.f19652do;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.f19654if) {
            return;
        }
        m23931new();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.height = -2;
        attributes.gravity = 81;
        int iM3458super = ih1.m3458super(getContext());
        int iM3440final = ih1.m3440final(getContext());
        if (iM3458super >= iM3440final) {
            iM3458super = iM3440final;
        }
        attributes.width = iM3458super;
        getWindow().setAttributes(attributes);
        setCanceledOnTouchOutside(true);
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        View viewInflate = LayoutInflater.from(getContext()).inflate(i, (ViewGroup) null);
        this.f19652do = viewInflate;
        super.setContentView(viewInflate);
    }

    public void setOnBottomSheetShowListener(OnBottomSheetShowListener onBottomSheetShowListener) {
        this.f19653for = onBottomSheetShowListener;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        m23932try();
        OnBottomSheetShowListener onBottomSheetShowListener = this.f19653for;
        if (onBottomSheetShowListener != null) {
            onBottomSheetShowListener.onShow();
        }
    }

    public QMUIBottomSheet(Context context, int i) {
        super(context, i);
        this.f19654if = false;
    }

    @Override // android.app.Dialog
    public void setContentView(@NonNull View view, ViewGroup.LayoutParams layoutParams) {
        this.f19652do = view;
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setContentView(@NonNull View view) {
        this.f19652do = view;
        super.setContentView(view);
    }
}
