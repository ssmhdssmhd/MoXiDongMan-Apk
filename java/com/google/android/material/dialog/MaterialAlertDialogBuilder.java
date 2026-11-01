package com.google.android.material.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.px0;
import android.support.v4.qx0;
import android.support.v4.rx0;
import android.support.v4.vx0;
import android.support.v4.ym0;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.annotation.ArrayRes;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

/* loaded from: classes.dex */
public class MaterialAlertDialogBuilder extends AlertDialog.Builder {

    /* renamed from: for, reason: not valid java name */
    @AttrRes
    private static final int f11864for = R.attr.alertDialogStyle;

    /* renamed from: new, reason: not valid java name */
    @StyleRes
    private static final int f11865new = R.style.MaterialAlertDialog_MaterialComponents;

    /* renamed from: try, reason: not valid java name */
    @AttrRes
    private static final int f11866try = R.attr.materialAlertDialogTheme;

    /* renamed from: do, reason: not valid java name */
    @Nullable
    private Drawable f11867do;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    @Dimension
    private final Rect f11868if;

    public MaterialAlertDialogBuilder(@NonNull Context context) {
        this(context, 0);
    }

    /* renamed from: do, reason: not valid java name */
    private static Context m13340do(@NonNull Context context) {
        int iM13341for = m13341for(context);
        Context contextM8993for = vx0.m8993for(context, null, f11864for, f11865new);
        return iM13341for == 0 ? contextM8993for : new ContextThemeWrapper(contextM8993for, iM13341for);
    }

    /* renamed from: for, reason: not valid java name */
    private static int m13341for(@NonNull Context context) {
        TypedValue typedValueM6243do = px0.m6243do(context, f11866try);
        if (typedValueM6243do == null) {
            return 0;
        }
        return typedValueM6243do.data;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m13342new(@NonNull Context context, int i) {
        return i == 0 ? m13341for(context) : i;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setSingleChoiceItems(@Nullable CharSequence[] charSequenceArr, int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setSingleChoiceItems(charSequenceArr, i, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: abstract, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setOnCancelListener(@Nullable DialogInterface.OnCancelListener onCancelListener) {
        return (MaterialAlertDialogBuilder) super.setOnCancelListener(onCancelListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setTitle(@StringRes int i) {
        return (MaterialAlertDialogBuilder) super.setTitle(i);
    }

    @NonNull
    /* renamed from: break, reason: not valid java name */
    public MaterialAlertDialogBuilder m13344break(@Px int i) {
        this.f11868if.top = i;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setTitle(@Nullable CharSequence charSequence) {
        return (MaterialAlertDialogBuilder) super.setTitle(charSequence);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public MaterialAlertDialogBuilder m13345case(@Nullable Drawable drawable) {
        this.f11867do = drawable;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: catch, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setCancelable(boolean z) {
        return (MaterialAlertDialogBuilder) super.setCancelable(z);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: class, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setCursor(@Nullable Cursor cursor, @Nullable DialogInterface.OnClickListener onClickListener, @NonNull String str) {
        return (MaterialAlertDialogBuilder) super.setCursor(cursor, onClickListener, str);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: const, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setCustomTitle(@Nullable View view) {
        return (MaterialAlertDialogBuilder) super.setCustomTitle(view);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: continue, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setOnDismissListener(@Nullable DialogInterface.OnDismissListener onDismissListener) {
        return (MaterialAlertDialogBuilder) super.setOnDismissListener(onDismissListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    public AlertDialog create() {
        AlertDialog alertDialogCreate = super.create();
        Window window = alertDialogCreate.getWindow();
        View decorView = window.getDecorView();
        Drawable drawable = this.f11867do;
        if (drawable instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) drawable).y(ViewCompat.getElevation(decorView));
        }
        window.setBackgroundDrawable(rx0.m7191if(this.f11867do, this.f11868if));
        decorView.setOnTouchListener(new ym0(alertDialogCreate, this.f11868if));
        return alertDialogCreate;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setView(int i) {
        return (MaterialAlertDialogBuilder) super.setView(i);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: default, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setNegativeButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setNegativeButton(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setView(@Nullable View view) {
        return (MaterialAlertDialogBuilder) super.setView(view);
    }

    @NonNull
    /* renamed from: else, reason: not valid java name */
    public MaterialAlertDialogBuilder m13351else(@Px int i) {
        this.f11868if.bottom = i;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: extends, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setNegativeButtonIcon(@Nullable Drawable drawable) {
        return (MaterialAlertDialogBuilder) super.setNegativeButtonIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: final, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setIcon(@DrawableRes int i) {
        return (MaterialAlertDialogBuilder) super.setIcon(i);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: finally, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setNeutralButton(@StringRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setNeutralButton(i, onClickListener);
    }

    @NonNull
    /* renamed from: goto, reason: not valid java name */
    public MaterialAlertDialogBuilder m13355goto(@Px int i) {
        if (Build.VERSION.SDK_INT < 17 || getContext().getResources().getConfiguration().getLayoutDirection() != 1) {
            this.f11868if.right = i;
        } else {
            this.f11868if.left = i;
        }
        return this;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    public Drawable m13356if() {
        return this.f11867do;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: implements, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setSingleChoiceItems(@ArrayRes int i, int i2, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setSingleChoiceItems(i, i2, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setItems(@Nullable CharSequence[] charSequenceArr, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setItems(charSequenceArr, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: instanceof, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setSingleChoiceItems(@Nullable Cursor cursor, int i, @NonNull String str, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setSingleChoiceItems(cursor, i, str, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: interface, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setPositiveButton(@StringRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setPositiveButton(i, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setMessage(@StringRes int i) {
        return (MaterialAlertDialogBuilder) super.setMessage(i);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: package, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setNeutralButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setNeutralButton(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: private, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setNeutralButtonIcon(@Nullable Drawable drawable) {
        return (MaterialAlertDialogBuilder) super.setNeutralButtonIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: protected, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setPositiveButton(@Nullable CharSequence charSequence, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setPositiveButton(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setMessage(@Nullable CharSequence charSequence) {
        return (MaterialAlertDialogBuilder) super.setMessage(charSequence);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setMultiChoiceItems(@ArrayRes int i, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (MaterialAlertDialogBuilder) super.setMultiChoiceItems(i, zArr, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: static, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setMultiChoiceItems(@Nullable Cursor cursor, @NonNull String str, @NonNull String str2, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (MaterialAlertDialogBuilder) super.setMultiChoiceItems(cursor, str, str2, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: strictfp, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setOnItemSelectedListener(@Nullable AdapterView.OnItemSelectedListener onItemSelectedListener) {
        return (MaterialAlertDialogBuilder) super.setOnItemSelectedListener(onItemSelectedListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: super, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setIcon(@Nullable Drawable drawable) {
        return (MaterialAlertDialogBuilder) super.setIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: switch, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setMultiChoiceItems(@Nullable CharSequence[] charSequenceArr, @Nullable boolean[] zArr, @Nullable DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (MaterialAlertDialogBuilder) super.setMultiChoiceItems(charSequenceArr, zArr, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: synchronized, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setSingleChoiceItems(@Nullable ListAdapter listAdapter, int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setSingleChoiceItems(listAdapter, i, onClickListener);
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public MaterialAlertDialogBuilder m13372this(@Px int i) {
        if (Build.VERSION.SDK_INT < 17 || getContext().getResources().getConfiguration().getLayoutDirection() != 1) {
            this.f11868if.left = i;
        } else {
            this.f11868if.right = i;
        }
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: throw, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setIconAttribute(@AttrRes int i) {
        return (MaterialAlertDialogBuilder) super.setIconAttribute(i);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: throws, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setNegativeButton(@StringRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setNegativeButton(i, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: transient, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setPositiveButtonIcon(@Nullable Drawable drawable) {
        return (MaterialAlertDialogBuilder) super.setPositiveButtonIcon(drawable);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setAdapter(@Nullable ListAdapter listAdapter, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setAdapter(listAdapter, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: volatile, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setOnKeyListener(@Nullable DialogInterface.OnKeyListener onKeyListener) {
        return (MaterialAlertDialogBuilder) super.setOnKeyListener(onKeyListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    @NonNull
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public MaterialAlertDialogBuilder setItems(@ArrayRes int i, @Nullable DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setItems(i, onClickListener);
    }

    public MaterialAlertDialogBuilder(@NonNull Context context, int i) {
        super(m13340do(context), m13342new(context, i));
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        int i2 = f11864for;
        int i3 = f11865new;
        this.f11868if = rx0.m7190do(context2, i2, i3);
        int iM6676for = qx0.m6676for(context2, R.attr.colorSurface, getClass().getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, i2, i3);
        materialShapeDrawable.k(context2);
        materialShapeDrawable.z(ColorStateList.valueOf(iM6676for));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                materialShapeDrawable.v(dimension);
            }
        }
        this.f11867do = materialShapeDrawable;
    }
}
