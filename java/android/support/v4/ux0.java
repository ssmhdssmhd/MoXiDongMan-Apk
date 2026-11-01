package android.support.v4;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.android.material.shape.MaterialShapeDrawable;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP, RestrictTo.Scope.TESTS})
/* loaded from: classes.dex */
public class ux0 extends DatePickerDialog {

    /* renamed from: for, reason: not valid java name */
    @AttrRes
    private static final int f7006for = 16843612;

    /* renamed from: new, reason: not valid java name */
    @StyleRes
    private static final int f7007new = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final Drawable f7008do;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final Rect f7009if;

    public ux0(@NonNull Context context) {
        this(context, 0);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setBackgroundDrawable(this.f7008do);
        getWindow().getDecorView().setOnTouchListener(new ym0(this, this.f7009if));
    }

    public ux0(@NonNull Context context, int i) {
        this(context, i, null, -1, -1, -1);
    }

    public ux0(@NonNull Context context, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i, int i2, int i3) {
        this(context, 0, onDateSetListener, i, i2, i3);
    }

    public ux0(@NonNull Context context, int i, @Nullable DatePickerDialog.OnDateSetListener onDateSetListener, int i2, int i3, int i4) {
        super(context, i, onDateSetListener, i2, i3, i4);
        Context context2 = getContext();
        int iM6244else = px0.m6244else(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
        int i5 = f7007new;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, 16843612, i5);
        if (Build.VERSION.SDK_INT >= 21) {
            materialShapeDrawable.z(ColorStateList.valueOf(iM6244else));
        } else {
            materialShapeDrawable.z(ColorStateList.valueOf(0));
        }
        Rect rectM7190do = rx0.m7190do(context2, 16843612, i5);
        this.f7009if = rectM7190do;
        this.f7008do = rx0.m7191if(materialShapeDrawable, rectM7190do);
    }
}
