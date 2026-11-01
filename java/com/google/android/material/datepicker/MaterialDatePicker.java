package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.support.v4.a71;
import android.support.v4.px0;
import android.support.v4.ym0;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.util.Pair;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.google.android.material.R;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class MaterialDatePicker<S> extends DialogFragment {

    /* renamed from: finally, reason: not valid java name */
    public static final int f11739finally = 0;

    /* renamed from: import, reason: not valid java name */
    private static final String f11740import = "OVERRIDE_THEME_RES_ID";

    /* renamed from: native, reason: not valid java name */
    private static final String f11741native = "DATE_SELECTOR_KEY";

    /* renamed from: package, reason: not valid java name */
    public static final int f11742package = 1;

    /* renamed from: public, reason: not valid java name */
    private static final String f11743public = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: return, reason: not valid java name */
    private static final String f11744return = "TITLE_TEXT_RES_ID_KEY";

    /* renamed from: static, reason: not valid java name */
    private static final String f11745static = "TITLE_TEXT_KEY";

    /* renamed from: switch, reason: not valid java name */
    private static final String f11746switch = "INPUT_MODE_KEY";

    /* renamed from: break, reason: not valid java name */
    @StringRes
    private int f11748break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private DateSelector<S> f11749case;

    /* renamed from: catch, reason: not valid java name */
    private CharSequence f11750catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f11751class;

    /* renamed from: const, reason: not valid java name */
    private int f11752const;

    /* renamed from: else, reason: not valid java name */
    private Celse<S> f11754else;

    /* renamed from: final, reason: not valid java name */
    private TextView f11755final;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private CalendarConstraints f11757goto;

    /* renamed from: super, reason: not valid java name */
    private CheckableImageButton f11760super;

    /* renamed from: this, reason: not valid java name */
    private MaterialCalendar<S> f11761this;

    /* renamed from: throw, reason: not valid java name */
    @Nullable
    private MaterialShapeDrawable f11762throw;

    /* renamed from: try, reason: not valid java name */
    @StyleRes
    private int f11763try;

    /* renamed from: while, reason: not valid java name */
    private Button f11764while;

    /* renamed from: throws, reason: not valid java name */
    public static final Object f11747throws = "CONFIRM_BUTTON_TAG";

    /* renamed from: default, reason: not valid java name */
    public static final Object f11737default = "CANCEL_BUTTON_TAG";

    /* renamed from: extends, reason: not valid java name */
    public static final Object f11738extends = "TOGGLE_BUTTON_TAG";

    /* renamed from: do, reason: not valid java name */
    private final LinkedHashSet<MaterialPickerOnPositiveButtonClickListener<? super S>> f11753do = new LinkedHashSet<>();

    /* renamed from: if, reason: not valid java name */
    private final LinkedHashSet<View.OnClickListener> f11758if = new LinkedHashSet<>();

    /* renamed from: for, reason: not valid java name */
    private final LinkedHashSet<DialogInterface.OnCancelListener> f11756for = new LinkedHashSet<>();

    /* renamed from: new, reason: not valid java name */
    private final LinkedHashSet<DialogInterface.OnDismissListener> f11759new = new LinkedHashSet<>();

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$case, reason: invalid class name */
    public @interface Ccase {
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {
        public Cdo() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f11753do.iterator();
            while (it.hasNext()) {
                ((MaterialPickerOnPositiveButtonClickListener) it.next()).onPositiveButtonClick(MaterialDatePicker.this.m13203return());
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$for, reason: invalid class name */
    public class Cfor extends a71<S> {
        public Cfor() {
        }

        @Override // android.support.v4.a71
        /* renamed from: do */
        public void mo52do() {
            MaterialDatePicker.this.f11764while.setEnabled(false);
        }

        @Override // android.support.v4.a71
        /* renamed from: if */
        public void mo53if(S s) {
            MaterialDatePicker.this.m13183protected();
            MaterialDatePicker.this.f11764while.setEnabled(MaterialDatePicker.this.f11749case.isSelectionComplete());
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Iterator it = MaterialDatePicker.this.f11758if.iterator();
            while (it.hasNext()) {
                ((View.OnClickListener) it.next()).onClick(view);
            }
            MaterialDatePicker.this.dismiss();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialDatePicker.this.f11764while.setEnabled(MaterialDatePicker.this.f11749case.isSelectionComplete());
            MaterialDatePicker.this.f11760super.toggle();
            MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
            materialDatePicker.m13189transient(materialDatePicker.f11760super);
            MaterialDatePicker.this.m13186strictfp();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialDatePicker$try, reason: invalid class name */
    public static final class Ctry<S> {

        /* renamed from: do, reason: not valid java name */
        public final DateSelector<S> f11770do;

        /* renamed from: for, reason: not valid java name */
        public CalendarConstraints f11772for;

        /* renamed from: if, reason: not valid java name */
        public int f11773if = 0;

        /* renamed from: new, reason: not valid java name */
        public int f11774new = 0;

        /* renamed from: try, reason: not valid java name */
        public CharSequence f11775try = null;

        /* renamed from: case, reason: not valid java name */
        @Nullable
        public S f11769case = null;

        /* renamed from: else, reason: not valid java name */
        public int f11771else = 0;

        private Ctry(DateSelector<S> dateSelector) {
            this.f11770do = dateSelector;
        }

        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* renamed from: for, reason: not valid java name */
        public static <S> Ctry<S> m13207for(@NonNull DateSelector<S> dateSelector) {
            return new Ctry<>(dateSelector);
        }

        /* renamed from: if, reason: not valid java name */
        private Month m13208if() {
            long j = this.f11772for.m13116break().f11783case;
            long j2 = this.f11772for.m13121else().f11783case;
            if (!this.f11770do.getSelectedDays().isEmpty()) {
                long jLongValue = this.f11770do.getSelectedDays().iterator().next().longValue();
                if (jLongValue >= j && jLongValue <= j2) {
                    return Month.m13219for(jLongValue);
                }
            }
            long jM13191volatile = MaterialDatePicker.m13191volatile();
            if (j <= jM13191volatile && jM13191volatile <= j2) {
                j = jM13191volatile;
            }
            return Month.m13219for(j);
        }

        @NonNull
        /* renamed from: new, reason: not valid java name */
        public static Ctry<Long> m13209new() {
            return new Ctry<>(new SingleDateSelector());
        }

        @NonNull
        /* renamed from: try, reason: not valid java name */
        public static Ctry<Pair<Long, Long>> m13210try() {
            return new Ctry<>(new RangeDateSelector());
        }

        @NonNull
        /* renamed from: break, reason: not valid java name */
        public Ctry<S> m13211break(@StringRes int i) {
            this.f11774new = i;
            this.f11775try = null;
            return this;
        }

        @NonNull
        /* renamed from: case, reason: not valid java name */
        public Ctry<S> m13212case(CalendarConstraints calendarConstraints) {
            this.f11772for = calendarConstraints;
            return this;
        }

        @NonNull
        /* renamed from: catch, reason: not valid java name */
        public Ctry<S> m13213catch(@Nullable CharSequence charSequence) {
            this.f11775try = charSequence;
            this.f11774new = 0;
            return this;
        }

        @NonNull
        /* renamed from: do, reason: not valid java name */
        public MaterialDatePicker<S> m13214do() {
            if (this.f11772for == null) {
                this.f11772for = new CalendarConstraints.Cif().m13127do();
            }
            if (this.f11774new == 0) {
                this.f11774new = this.f11770do.getDefaultTitleResId();
            }
            S s = this.f11769case;
            if (s != null) {
                this.f11770do.setSelection(s);
            }
            if (this.f11772for.m13123this() == null) {
                this.f11772for.m13120const(m13208if());
            }
            return MaterialDatePicker.m13175extends(this);
        }

        @NonNull
        /* renamed from: else, reason: not valid java name */
        public Ctry<S> m13215else(int i) {
            this.f11771else = i;
            return this;
        }

        @NonNull
        /* renamed from: goto, reason: not valid java name */
        public Ctry<S> m13216goto(S s) {
            this.f11769case = s;
            return this;
        }

        @NonNull
        /* renamed from: this, reason: not valid java name */
        public Ctry<S> m13217this(@StyleRes int i) {
            this.f11773if = i;
            return this;
        }
    }

    /* renamed from: default, reason: not valid java name */
    public static boolean m13172default(@NonNull Context context) {
        return m13176finally(context, R.attr.nestedScrollable);
    }

    @NonNull
    /* renamed from: extends, reason: not valid java name */
    public static <S> MaterialDatePicker<S> m13175extends(@NonNull Ctry<S> ctry) {
        MaterialDatePicker<S> materialDatePicker = new MaterialDatePicker<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f11740import, ctry.f11773if);
        bundle.putParcelable(f11741native, ctry.f11770do);
        bundle.putParcelable(f11743public, ctry.f11772for);
        bundle.putInt(f11744return, ctry.f11774new);
        bundle.putCharSequence(f11745static, ctry.f11775try);
        bundle.putInt(f11746switch, ctry.f11771else);
        materialDatePicker.setArguments(bundle);
        return materialDatePicker;
    }

    /* renamed from: finally, reason: not valid java name */
    public static boolean m13176finally(@NonNull Context context, int i) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(px0.m6244else(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), new int[]{i});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    /* renamed from: import, reason: not valid java name */
    private static int m13180import(@NonNull Context context) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding);
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height);
        int i = com.google.android.material.datepicker.Ccase.f11822case;
        return dimensionPixelSize + dimensionPixelSize2 + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * i) + ((i - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding)) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding);
    }

    /* renamed from: interface, reason: not valid java name */
    public static long m13181interface() {
        return Cbreak.m13283public().getTimeInMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public void m13183protected() {
        String strM13200native = m13200native();
        this.f11755final.setContentDescription(String.format(getString(R.string.mtrl_picker_announce_current_selection), strM13200native));
        this.f11755final.setText(strM13200native);
    }

    /* renamed from: public, reason: not valid java name */
    private static int m13184public(@NonNull Context context) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        int i = Month.m13221new().f11788new;
        return (dimensionPixelOffset * 2) + (resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * i) + ((i - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding));
    }

    /* renamed from: static, reason: not valid java name */
    private int m13185static(Context context) {
        int i = this.f11763try;
        return i != 0 ? i : this.f11749case.getDefaultThemeResId(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public void m13186strictfp() {
        int iM13185static = m13185static(requireContext());
        this.f11761this = MaterialCalendar.m13153native(this.f11749case, iM13185static, this.f11757goto);
        this.f11754else = this.f11760super.isChecked() ? MaterialTextInputPicker.m13218try(this.f11749case, iM13185static, this.f11757goto) : this.f11761this;
        m13183protected();
        FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.replace(R.id.mtrl_calendar_frame, this.f11754else);
        fragmentTransactionBeginTransaction.commitNow();
        this.f11754else.mo13158do(new Cfor());
    }

    /* renamed from: switch, reason: not valid java name */
    private void m13187switch(Context context) {
        this.f11760super.setTag(f11738extends);
        this.f11760super.setImageDrawable(m13192while(context));
        this.f11760super.setChecked(this.f11752const != 0);
        ViewCompat.setAccessibilityDelegate(this.f11760super, null);
        m13189transient(this.f11760super);
        this.f11760super.setOnClickListener(new Cnew());
    }

    /* renamed from: throws, reason: not valid java name */
    public static boolean m13188throws(@NonNull Context context) {
        return m13176finally(context, android.R.attr.windowFullscreen);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public void m13189transient(@NonNull CheckableImageButton checkableImageButton) {
        this.f11760super.setContentDescription(this.f11760super.isChecked() ? checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
    }

    /* renamed from: volatile, reason: not valid java name */
    public static long m13191volatile() {
        return Month.m13221new().f11783case;
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    private static Drawable m13192while(Context context) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AppCompatResources.getDrawable(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], AppCompatResources.getDrawable(context, R.drawable.material_ic_edit_black_24dp));
        return stateListDrawable;
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m13193abstract(View.OnClickListener onClickListener) {
        return this.f11758if.remove(onClickListener);
    }

    /* renamed from: break, reason: not valid java name */
    public boolean m13194break(DialogInterface.OnDismissListener onDismissListener) {
        return this.f11759new.add(onDismissListener);
    }

    /* renamed from: catch, reason: not valid java name */
    public boolean m13195catch(View.OnClickListener onClickListener) {
        return this.f11758if.add(onClickListener);
    }

    /* renamed from: class, reason: not valid java name */
    public boolean m13196class(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.f11753do.add(materialPickerOnPositiveButtonClickListener);
    }

    /* renamed from: const, reason: not valid java name */
    public void m13197const() {
        this.f11756for.clear();
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m13198continue(MaterialPickerOnPositiveButtonClickListener<? super S> materialPickerOnPositiveButtonClickListener) {
        return this.f11753do.remove(materialPickerOnPositiveButtonClickListener);
    }

    /* renamed from: final, reason: not valid java name */
    public void m13199final() {
        this.f11759new.clear();
    }

    /* renamed from: native, reason: not valid java name */
    public String m13200native() {
        return this.f11749case.getSelectionDisplayString(getContext());
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f11756for.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f11763try = bundle.getInt(f11740import);
        this.f11749case = (DateSelector) bundle.getParcelable(f11741native);
        this.f11757goto = (CalendarConstraints) bundle.getParcelable(f11743public);
        this.f11748break = bundle.getInt(f11744return);
        this.f11750catch = bundle.getCharSequence(f11745static);
        this.f11752const = bundle.getInt(f11746switch);
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), m13185static(requireContext()));
        Context context = dialog.getContext();
        this.f11751class = m13188throws(context);
        int iM6244else = px0.m6244else(context, R.attr.colorSurface, MaterialDatePicker.class.getCanonicalName());
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.f11762throw = materialShapeDrawable;
        materialShapeDrawable.k(context);
        this.f11762throw.z(ColorStateList.valueOf(iM6244else));
        this.f11762throw.y(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public final View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f11751class ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f11751class) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(m13184public(context), -2));
        } else {
            View viewFindViewById = viewInflate.findViewById(R.id.mtrl_calendar_main_pane);
            View viewFindViewById2 = viewInflate.findViewById(R.id.mtrl_calendar_frame);
            viewFindViewById.setLayoutParams(new LinearLayout.LayoutParams(m13184public(context), -1));
            viewFindViewById2.setMinimumHeight(m13180import(requireContext()));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.f11755final = textView;
        ViewCompat.setAccessibilityLiveRegion(textView, 1);
        this.f11760super = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.f11750catch;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f11748break);
        }
        m13187switch(context);
        this.f11764while = (Button) viewInflate.findViewById(R.id.confirm_button);
        if (this.f11749case.isSelectionComplete()) {
            this.f11764while.setEnabled(true);
        } else {
            this.f11764while.setEnabled(false);
        }
        this.f11764while.setTag(f11747throws);
        this.f11764while.setOnClickListener(new Cdo());
        Button button = (Button) viewInflate.findViewById(R.id.cancel_button);
        button.setTag(f11737default);
        button.setOnClickListener(new Cif());
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(@NonNull DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f11759new.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f11740import, this.f11763try);
        bundle.putParcelable(f11741native, this.f11749case);
        CalendarConstraints.Cif cif = new CalendarConstraints.Cif(this.f11757goto);
        if (this.f11761this.m13166throw() != null) {
            cif.m13128for(this.f11761this.m13166throw().f11783case);
        }
        bundle.putParcelable(f11743public, cif.m13127do());
        bundle.putInt(f11744return, this.f11748break);
        bundle.putCharSequence(f11745static, this.f11750catch);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() throws Resources.NotFoundException {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f11751class) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f11762throw);
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f11762throw, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new ym0(requireDialog(), rect));
        }
        m13186strictfp();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        this.f11754else.m13313if();
        super.onStop();
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m13201package(DialogInterface.OnCancelListener onCancelListener) {
        return this.f11756for.remove(onCancelListener);
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m13202private(DialogInterface.OnDismissListener onDismissListener) {
        return this.f11759new.remove(onDismissListener);
    }

    @Nullable
    /* renamed from: return, reason: not valid java name */
    public final S m13203return() {
        return this.f11749case.getSelection();
    }

    /* renamed from: super, reason: not valid java name */
    public void m13204super() {
        this.f11758if.clear();
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m13205this(DialogInterface.OnCancelListener onCancelListener) {
        return this.f11756for.add(onCancelListener);
    }

    /* renamed from: throw, reason: not valid java name */
    public void m13206throw() {
        this.f11753do.clear();
    }
}
