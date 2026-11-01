package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.px0;
import android.text.TextUtils;
import android.util.Pair;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class MaterialTimePicker extends DialogFragment {

    /* renamed from: import, reason: not valid java name */
    public static final int f13096import = 0;

    /* renamed from: native, reason: not valid java name */
    public static final int f13097native = 1;

    /* renamed from: public, reason: not valid java name */
    public static final String f13098public = "TIME_PICKER_TIME_MODEL";

    /* renamed from: return, reason: not valid java name */
    public static final String f13099return = "TIME_PICKER_INPUT_MODE";

    /* renamed from: static, reason: not valid java name */
    public static final String f13100static = "TIME_PICKER_TITLE_RES";

    /* renamed from: switch, reason: not valid java name */
    public static final String f13101switch = "TIME_PICKER_TITLE_TEXT";

    /* renamed from: throws, reason: not valid java name */
    public static final String f13102throws = "TIME_PICKER_OVERRIDE_THEME_RES_ID";

    /* renamed from: break, reason: not valid java name */
    @DrawableRes
    private int f13103break;

    /* renamed from: case, reason: not valid java name */
    private ViewStub f13104case;

    /* renamed from: catch, reason: not valid java name */
    @DrawableRes
    private int f13105catch;

    /* renamed from: const, reason: not valid java name */
    private String f13107const;

    /* renamed from: else, reason: not valid java name */
    @Nullable
    private com.google.android.material.timepicker.Cnew f13109else;

    /* renamed from: final, reason: not valid java name */
    private MaterialButton f13110final;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private Ccase f13112goto;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private TimePickerPresenter f13116this;

    /* renamed from: throw, reason: not valid java name */
    private TimeModel f13117throw;

    /* renamed from: try, reason: not valid java name */
    private TimePickerView f13118try;

    /* renamed from: do, reason: not valid java name */
    private final Set<View.OnClickListener> f13108do = new LinkedHashSet();

    /* renamed from: if, reason: not valid java name */
    private final Set<View.OnClickListener> f13113if = new LinkedHashSet();

    /* renamed from: for, reason: not valid java name */
    private final Set<DialogInterface.OnCancelListener> f13111for = new LinkedHashSet();

    /* renamed from: new, reason: not valid java name */
    private final Set<DialogInterface.OnDismissListener> f13114new = new LinkedHashSet();

    /* renamed from: class, reason: not valid java name */
    private int f13106class = 0;

    /* renamed from: super, reason: not valid java name */
    private int f13115super = 0;

    /* renamed from: while, reason: not valid java name */
    private int f13119while = 0;

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$do, reason: invalid class name */
    public class Cdo implements TimePickerView.OnDoubleTapListener {
        public Cdo() {
        }

        @Override // com.google.android.material.timepicker.TimePickerView.OnDoubleTapListener
        public void onDoubleTap() {
            MaterialTimePicker.this.f13115super = 1;
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            materialTimePicker.m14532abstract(materialTimePicker.f13110final);
            MaterialTimePicker.this.f13112goto.m14607try();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$for, reason: invalid class name */
    public class Cfor implements View.OnClickListener {
        public Cfor() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.f13113if.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialTimePicker.this.f13108do.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialTimePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialTimePicker materialTimePicker = MaterialTimePicker.this;
            materialTimePicker.f13115super = materialTimePicker.f13115super == 0 ? 1 : 0;
            MaterialTimePicker materialTimePicker2 = MaterialTimePicker.this;
            materialTimePicker2.m14532abstract(materialTimePicker2.f13110final);
        }
    }

    /* renamed from: com.google.android.material.timepicker.MaterialTimePicker$try, reason: invalid class name */
    public static final class Ctry {

        /* renamed from: if, reason: not valid java name */
        private int f13126if;

        /* renamed from: new, reason: not valid java name */
        private CharSequence f13127new;

        /* renamed from: do, reason: not valid java name */
        private TimeModel f13124do = new TimeModel();

        /* renamed from: for, reason: not valid java name */
        private int f13125for = 0;

        /* renamed from: try, reason: not valid java name */
        private int f13128try = 0;

        @NonNull
        /* renamed from: break, reason: not valid java name */
        public Ctry m14567break(@StyleRes int i) {
            this.f13128try = i;
            return this;
        }

        @NonNull
        /* renamed from: case, reason: not valid java name */
        public MaterialTimePicker m14568case() {
            return MaterialTimePicker.m14543throws(this);
        }

        @NonNull
        /* renamed from: catch, reason: not valid java name */
        public Ctry m14569catch(int i) {
            TimeModel timeModel = this.f13124do;
            int i2 = timeModel.f13136new;
            int i3 = timeModel.f13137try;
            TimeModel timeModel2 = new TimeModel(i);
            this.f13124do = timeModel2;
            timeModel2.m14583this(i3);
            this.f13124do.m14581goto(i2);
            return this;
        }

        @NonNull
        /* renamed from: class, reason: not valid java name */
        public Ctry m14570class(@StringRes int i) {
            this.f13125for = i;
            return this;
        }

        @NonNull
        /* renamed from: const, reason: not valid java name */
        public Ctry m14571const(@Nullable CharSequence charSequence) {
            this.f13127new = charSequence;
            return this;
        }

        @NonNull
        /* renamed from: else, reason: not valid java name */
        public Ctry m14572else(@IntRange(from = 0, to = 23) int i) {
            this.f13124do.m14581goto(i);
            return this;
        }

        @NonNull
        /* renamed from: goto, reason: not valid java name */
        public Ctry m14573goto(int i) {
            this.f13126if = i;
            return this;
        }

        @NonNull
        /* renamed from: this, reason: not valid java name */
        public Ctry m14574this(@IntRange(from = 0, to = 60) int i) {
            this.f13124do.m14583this(i);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public void m14532abstract(MaterialButton materialButton) {
        TimePickerPresenter timePickerPresenter = this.f13116this;
        if (timePickerPresenter != null) {
            timePickerPresenter.hide();
        }
        TimePickerPresenter timePickerPresenterM14542switch = m14542switch(this.f13115super);
        this.f13116this = timePickerPresenterM14542switch;
        timePickerPresenterM14542switch.show();
        this.f13116this.invalidate();
        Pair<Integer, Integer> pairM14545while = m14545while(this.f13115super);
        materialButton.setIconResource(((Integer) pairM14545while.first).intValue());
        materialButton.setContentDescription(getResources().getString(((Integer) pairM14545while.second).intValue()));
    }

    /* renamed from: private, reason: not valid java name */
    private void m14540private(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(f13098public);
        this.f13117throw = timeModel;
        if (timeModel == null) {
            this.f13117throw = new TimeModel();
        }
        this.f13115super = bundle.getInt(f13099return, 0);
        this.f13106class = bundle.getInt(f13100static, 0);
        this.f13107const = bundle.getString(f13101switch);
        this.f13119while = bundle.getInt(f13102throws, 0);
    }

    /* renamed from: return, reason: not valid java name */
    private int m14541return() {
        int i = this.f13119while;
        if (i != 0) {
            return i;
        }
        TypedValue typedValueM6243do = px0.m6243do(requireContext(), R.attr.materialTimePickerTheme);
        if (typedValueM6243do == null) {
            return 0;
        }
        return typedValueM6243do.data;
    }

    /* renamed from: switch, reason: not valid java name */
    private TimePickerPresenter m14542switch(int i) {
        if (i != 0) {
            if (this.f13112goto == null) {
                this.f13112goto = new Ccase((LinearLayout) this.f13104case.inflate(), this.f13117throw);
            }
            this.f13112goto.m14606for();
            return this.f13112goto;
        }
        com.google.android.material.timepicker.Cnew cnew = this.f13109else;
        if (cnew == null) {
            cnew = new com.google.android.material.timepicker.Cnew(this.f13118try, this.f13117throw);
        }
        this.f13109else = cnew;
        return cnew;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    /* renamed from: throws, reason: not valid java name */
    public static MaterialTimePicker m14543throws(@NonNull Ctry ctry) {
        MaterialTimePicker materialTimePicker = new MaterialTimePicker();
        Bundle bundle = new Bundle();
        bundle.putParcelable(f13098public, ctry.f13124do);
        bundle.putInt(f13099return, ctry.f13126if);
        bundle.putInt(f13100static, ctry.f13125for);
        bundle.putInt(f13102throws, ctry.f13128try);
        if (ctry.f13127new != null) {
            bundle.putString(f13101switch, ctry.f13127new.toString());
        }
        materialTimePicker.setArguments(bundle);
        return materialTimePicker;
    }

    /* renamed from: while, reason: not valid java name */
    private Pair<Integer, Integer> m14545while(int i) {
        if (i == 0) {
            return new Pair<>(Integer.valueOf(this.f13103break), Integer.valueOf(R.string.material_timepicker_text_input_mode_description));
        }
        if (i == 1) {
            return new Pair<>(Integer.valueOf(this.f13105catch), Integer.valueOf(R.string.material_timepicker_clock_mode_description));
        }
        throw new IllegalArgumentException("no icon for mode: " + i);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m14546break(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f13114new.add(onDismissListener);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m14547catch(@NonNull View.OnClickListener onClickListener) {
        return this.f13113if.add(onClickListener);
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m14548class(@NonNull View.OnClickListener onClickListener) {
        return this.f13108do.add(onClickListener);
    }

    /* renamed from: const, reason: not valid java name */
    public void m14549const() {
        this.f13111for.clear();
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m14550default(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f13111for.remove(onCancelListener);
    }

    /* renamed from: extends, reason: not valid java name */
    public boolean m14551extends(@NonNull DialogInterface.OnDismissListener onDismissListener) {
        return this.f13114new.remove(onDismissListener);
    }

    /* renamed from: final, reason: not valid java name */
    public void m14552final() {
        this.f13114new.clear();
    }

    /* renamed from: finally, reason: not valid java name */
    public boolean m14553finally(@NonNull View.OnClickListener onClickListener) {
        return this.f13113if.remove(onClickListener);
    }

    @IntRange(from = 0, to = 23)
    /* renamed from: import, reason: not valid java name */
    public int m14554import() {
        return this.f13117throw.f13136new % 24;
    }

    /* renamed from: native, reason: not valid java name */
    public int m14555native() {
        return this.f13115super;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f13111for.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        m14540private(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), m14541return());
        Context context = dialog.getContext();
        int iM6244else = px0.m6244else(context, R.attr.colorSurface, MaterialTimePicker.class.getCanonicalName());
        int i = R.attr.materialTimePickerStyle;
        int i2 = R.style.Widget_MaterialComponents_TimePicker;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, i, i2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R.styleable.MaterialTimePicker, i, i2);
        this.f13105catch = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_clockIcon, 0);
        this.f13103break = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialTimePicker_keyboardIcon, 0);
        typedArrayObtainStyledAttributes.recycle();
        materialShapeDrawable.k(context);
        materialShapeDrawable.z(ColorStateList.valueOf(iM6244else));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(R.id.material_timepicker_view);
        this.f13118try = timePickerView;
        timePickerView.setOnDoubleTapListener(new Cdo());
        this.f13104case = (ViewStub) viewGroup2.findViewById(R.id.material_textinput_timepicker);
        this.f13110final = (MaterialButton) viewGroup2.findViewById(R.id.material_timepicker_mode_button);
        TextView textView = (TextView) viewGroup2.findViewById(R.id.header_title);
        if (!TextUtils.isEmpty(this.f13107const)) {
            textView.setText(this.f13107const);
        }
        int i = this.f13106class;
        if (i != 0) {
            textView.setText(i);
        }
        m14532abstract(this.f13110final);
        ((Button) viewGroup2.findViewById(R.id.material_timepicker_ok_button)).setOnClickListener(new Cif());
        ((Button) viewGroup2.findViewById(R.id.material_timepicker_cancel_button)).setOnClickListener(new Cfor());
        this.f13110final.setOnClickListener(new Cnew());
        return viewGroup2;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f13114new.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(f13098public, this.f13117throw);
        bundle.putInt(f13099return, this.f13115super);
        bundle.putInt(f13100static, this.f13106class);
        bundle.putString(f13101switch, this.f13107const);
        bundle.putInt(f13102throws, this.f13119while);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f13116this = null;
        this.f13109else = null;
        this.f13112goto = null;
        this.f13118try = null;
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m14556package(@NonNull View.OnClickListener onClickListener) {
        return this.f13108do.remove(onClickListener);
    }

    @IntRange(from = 0, to = 60)
    /* renamed from: public, reason: not valid java name */
    public int m14557public() {
        return this.f13117throw.f13137try;
    }

    @Nullable
    /* renamed from: static, reason: not valid java name */
    public com.google.android.material.timepicker.Cnew m14558static() {
        return this.f13109else;
    }

    /* renamed from: super, reason: not valid java name */
    public void m14559super() {
        this.f13113if.clear();
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m14560this(@NonNull DialogInterface.OnCancelListener onCancelListener) {
        return this.f13111for.add(onCancelListener);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m14561throw() {
        this.f13108do.clear();
    }
}
