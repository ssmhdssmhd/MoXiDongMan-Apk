package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.a71;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class MaterialCalendar<S> extends com.google.android.material.datepicker.Celse<S> {

    /* renamed from: class, reason: not valid java name */
    private static final String f11696class = "THEME_RES_ID_KEY";

    /* renamed from: const, reason: not valid java name */
    private static final String f11697const = "GRID_SELECTOR_KEY";

    /* renamed from: final, reason: not valid java name */
    private static final String f11698final = "CALENDAR_CONSTRAINTS_KEY";

    /* renamed from: super, reason: not valid java name */
    private static final String f11702super = "CURRENT_MONTH_KEY";

    /* renamed from: throw, reason: not valid java name */
    private static final int f11703throw = 3;

    /* renamed from: break, reason: not valid java name */
    private View f11705break;

    /* renamed from: case, reason: not valid java name */
    private Ccatch f11706case;

    /* renamed from: catch, reason: not valid java name */
    private View f11707catch;

    /* renamed from: else, reason: not valid java name */
    private com.google.android.material.datepicker.Cif f11708else;

    /* renamed from: for, reason: not valid java name */
    @Nullable
    private DateSelector<S> f11709for;

    /* renamed from: goto, reason: not valid java name */
    private RecyclerView f11710goto;

    /* renamed from: if, reason: not valid java name */
    @StyleRes
    private int f11711if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private CalendarConstraints f11712new;

    /* renamed from: this, reason: not valid java name */
    private RecyclerView f11713this;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private Month f11714try;

    /* renamed from: while, reason: not valid java name */
    @VisibleForTesting
    public static final Object f11704while = "MONTHS_VIEW_GROUP_TAG";

    /* renamed from: import, reason: not valid java name */
    @VisibleForTesting
    public static final Object f11699import = "NAVIGATION_PREV_TAG";

    /* renamed from: native, reason: not valid java name */
    @VisibleForTesting
    public static final Object f11700native = "NAVIGATION_NEXT_TAG";

    /* renamed from: public, reason: not valid java name */
    @VisibleForTesting
    public static final Object f11701public = "SELECTOR_TOGGLE_TAG";

    public interface OnDayClickListener {
        void onDayClick(long j);
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$break, reason: invalid class name */
    public class Cbreak implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ MonthsPagerAdapter f11715do;

        public Cbreak(MonthsPagerAdapter monthsPagerAdapter) {
            this.f11715do = monthsPagerAdapter;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindLastVisibleItemPosition = MaterialCalendar.this.m13161import().findLastVisibleItemPosition() - 1;
            if (iFindLastVisibleItemPosition >= 0) {
                MaterialCalendar.this.m13162return(this.f11715do.m13235if(iFindLastVisibleItemPosition));
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$case, reason: invalid class name */
    public class Ccase extends AccessibilityDelegateCompat {
        public Ccase() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setHintText(MaterialCalendar.this.f11707catch.getVisibility() == 0 ? MaterialCalendar.this.getString(R.string.mtrl_picker_toggle_to_year_selection) : MaterialCalendar.this.getString(R.string.mtrl_picker_toggle_to_day_selection));
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$catch, reason: invalid class name */
    public enum Ccatch {
        DAY,
        YEAR
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$do, reason: invalid class name */
    public class Cdo implements Runnable {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f11719do;

        public Cdo(int i) {
            this.f11719do = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaterialCalendar.this.f11713this.smoothScrollToPosition(this.f11719do);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$else, reason: invalid class name */
    public class Celse extends RecyclerView.OnScrollListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ MonthsPagerAdapter f11721do;

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ MaterialButton f11723if;

        public Celse(MonthsPagerAdapter monthsPagerAdapter, MaterialButton materialButton) {
            this.f11721do = monthsPagerAdapter;
            this.f11723if = materialButton;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            if (i == 0) {
                CharSequence text = this.f11723if.getText();
                if (Build.VERSION.SDK_INT >= 16) {
                    recyclerView.announceForAccessibility(text);
                } else {
                    recyclerView.sendAccessibilityEvent(2048);
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(@NonNull RecyclerView recyclerView, int i, int i2) {
            int iFindFirstVisibleItemPosition = i < 0 ? MaterialCalendar.this.m13161import().findFirstVisibleItemPosition() : MaterialCalendar.this.m13161import().findLastVisibleItemPosition();
            MaterialCalendar.this.f11714try = this.f11721do.m13235if(iFindFirstVisibleItemPosition);
            this.f11723if.setText(this.f11721do.m13234for(iFindFirstVisibleItemPosition));
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$for, reason: invalid class name */
    public class Cfor extends com.google.android.material.datepicker.Cgoto {

        /* renamed from: if, reason: not valid java name */
        public final /* synthetic */ int f11725if;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(Context context, int i, boolean z, int i2) {
            super(context, i, z);
            this.f11725if = i2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        public void calculateExtraLayoutSpace(@NonNull RecyclerView.State state, @NonNull int[] iArr) {
            if (this.f11725if == 0) {
                iArr[0] = MaterialCalendar.this.f11713this.getWidth();
                iArr[1] = MaterialCalendar.this.f11713this.getWidth();
            } else {
                iArr[0] = MaterialCalendar.this.f11713this.getHeight();
                iArr[1] = MaterialCalendar.this.f11713this.getHeight();
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$goto, reason: invalid class name */
    public class Cgoto implements View.OnClickListener {
        public Cgoto() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MaterialCalendar.this.m13165switch();
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$if, reason: invalid class name */
    public class Cif extends AccessibilityDelegateCompat {
        public Cif() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(null);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$new, reason: invalid class name */
    public class Cnew implements OnDayClickListener {
        public Cnew() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.datepicker.MaterialCalendar.OnDayClickListener
        public void onDayClick(long j) {
            if (MaterialCalendar.this.f11712new.m13117case().isValid(j)) {
                MaterialCalendar.this.f11709for.select(j);
                Iterator<a71<S>> it = MaterialCalendar.this.f11834do.iterator();
                while (it.hasNext()) {
                    it.next().mo53if(MaterialCalendar.this.f11709for.getSelection());
                }
                MaterialCalendar.this.f11713this.getAdapter().notifyDataSetChanged();
                if (MaterialCalendar.this.f11710goto != null) {
                    MaterialCalendar.this.f11710goto.getAdapter().notifyDataSetChanged();
                }
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$this, reason: invalid class name */
    public class Cthis implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ MonthsPagerAdapter f11729do;

        public Cthis(MonthsPagerAdapter monthsPagerAdapter) {
            this.f11729do = monthsPagerAdapter;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iFindFirstVisibleItemPosition = MaterialCalendar.this.m13161import().findFirstVisibleItemPosition() + 1;
            if (iFindFirstVisibleItemPosition < MaterialCalendar.this.f11713this.getAdapter().getItemCount()) {
                MaterialCalendar.this.m13162return(this.f11729do.m13235if(iFindFirstVisibleItemPosition));
            }
        }
    }

    /* renamed from: com.google.android.material.datepicker.MaterialCalendar$try, reason: invalid class name */
    public class Ctry extends RecyclerView.ItemDecoration {

        /* renamed from: do, reason: not valid java name */
        private final Calendar f11731do = com.google.android.material.datepicker.Cbreak.m13285static();

        /* renamed from: if, reason: not valid java name */
        private final Calendar f11733if = com.google.android.material.datepicker.Cbreak.m13285static();

        public Ctry() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void onDraw(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.State state) {
            if ((recyclerView.getAdapter() instanceof YearGridAdapter) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView.getAdapter();
                GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                for (Pair<Long, Long> pair : MaterialCalendar.this.f11709for.getSelectedRanges()) {
                    Long l = pair.first;
                    if (l != null && pair.second != null) {
                        this.f11731do.setTimeInMillis(l.longValue());
                        this.f11733if.setTimeInMillis(pair.second.longValue());
                        int iM13263for = yearGridAdapter.m13263for(this.f11731do.get(1));
                        int iM13263for2 = yearGridAdapter.m13263for(this.f11733if.get(1));
                        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(iM13263for);
                        View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(iM13263for2);
                        int spanCount = iM13263for / gridLayoutManager.getSpanCount();
                        int spanCount2 = iM13263for2 / gridLayoutManager.getSpanCount();
                        int i = spanCount;
                        while (i <= spanCount2) {
                            if (gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i) != null) {
                                canvas.drawRect(i == spanCount ? viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2) : 0, r9.getTop() + MaterialCalendar.this.f11708else.f11854new.m13312try(), i == spanCount2 ? viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2) : recyclerView.getWidth(), r9.getBottom() - MaterialCalendar.this.f11708else.f11854new.m13310if(), MaterialCalendar.this.f11708else.f11852goto);
                            }
                            i++;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m13149class(@NonNull View view, @NonNull MonthsPagerAdapter monthsPagerAdapter) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R.id.month_navigation_fragment_toggle);
        materialButton.setTag(f11701public);
        ViewCompat.setAccessibilityDelegate(materialButton, new Ccase());
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(R.id.month_navigation_previous);
        materialButton2.setTag(f11699import);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(R.id.month_navigation_next);
        materialButton3.setTag(f11700native);
        this.f11705break = view.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f11707catch = view.findViewById(R.id.mtrl_calendar_day_selector_frame);
        m13163static(Ccatch.DAY);
        materialButton.setText(this.f11714try.m13227goto(view.getContext()));
        this.f11713this.addOnScrollListener(new Celse(monthsPagerAdapter, materialButton));
        materialButton.setOnClickListener(new Cgoto());
        materialButton3.setOnClickListener(new Cthis(monthsPagerAdapter));
        materialButton2.setOnClickListener(new Cbreak(monthsPagerAdapter));
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    private RecyclerView.ItemDecoration m13150const() {
        return new Ctry();
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    public static <T> MaterialCalendar<T> m13153native(@NonNull DateSelector<T> dateSelector, @StyleRes int i, @NonNull CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt(f11696class, i);
        bundle.putParcelable(f11697const, dateSelector);
        bundle.putParcelable(f11698final, calendarConstraints);
        bundle.putParcelable(f11702super, calendarConstraints.m13123this());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    /* renamed from: public, reason: not valid java name */
    private void m13154public(int i) {
        this.f11713this.post(new Cdo(i));
    }

    @Px
    /* renamed from: while, reason: not valid java name */
    public static int m13157while(@NonNull Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height);
    }

    @Override // com.google.android.material.datepicker.Celse
    /* renamed from: do, reason: not valid java name */
    public boolean mo13158do(@NonNull a71<S> a71Var) {
        return super.mo13158do(a71Var);
    }

    @Nullable
    /* renamed from: final, reason: not valid java name */
    public CalendarConstraints m13159final() {
        return this.f11712new;
    }

    @Override // com.google.android.material.datepicker.Celse
    @Nullable
    /* renamed from: for, reason: not valid java name */
    public DateSelector<S> mo13160for() {
        return this.f11709for;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public LinearLayoutManager m13161import() {
        return (LinearLayoutManager) this.f11713this.getLayoutManager();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f11711if = bundle.getInt(f11696class);
        this.f11709for = (DateSelector) bundle.getParcelable(f11697const);
        this.f11712new = (CalendarConstraints) bundle.getParcelable(f11698final);
        this.f11714try = (Month) bundle.getParcelable(f11702super);
    }

    @Override // androidx.fragment.app.Fragment
    @NonNull
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) throws IllegalStateException, Resources.NotFoundException {
        int i;
        int i2;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.f11711if);
        this.f11708else = new com.google.android.material.datepicker.Cif(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month monthM13116break = this.f11712new.m13116break();
        if (MaterialDatePicker.m13188throws(contextThemeWrapper)) {
            i = R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i, viewGroup, false);
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new Cif());
        gridView.setAdapter((ListAdapter) new com.google.android.material.datepicker.Ctry());
        gridView.setNumColumns(monthM13116break.f11788new);
        gridView.setEnabled(false);
        this.f11713this = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.f11713this.setLayoutManager(new Cfor(getContext(), i2, false, i2));
        this.f11713this.setTag(f11704while);
        MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.f11709for, this.f11712new, new Cnew());
        this.f11713this.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.f11710goto = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f11710goto.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.f11710goto.setAdapter(new YearGridAdapter(this));
            this.f11710goto.addItemDecoration(m13150const());
        }
        if (viewInflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            m13149class(viewInflate, monthsPagerAdapter);
        }
        if (!MaterialDatePicker.m13188throws(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.f11713this);
        }
        this.f11713this.scrollToPosition(monthsPagerAdapter.m13236new(this.f11714try));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(f11696class, this.f11711if);
        bundle.putParcelable(f11697const, this.f11709for);
        bundle.putParcelable(f11698final, this.f11712new);
        bundle.putParcelable(f11702super, this.f11714try);
    }

    /* renamed from: return, reason: not valid java name */
    public void m13162return(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.f11713this.getAdapter();
        int iM13236new = monthsPagerAdapter.m13236new(month);
        int iM13236new2 = iM13236new - monthsPagerAdapter.m13236new(this.f11714try);
        boolean z = Math.abs(iM13236new2) > 3;
        boolean z2 = iM13236new2 > 0;
        this.f11714try = month;
        if (z && z2) {
            this.f11713this.scrollToPosition(iM13236new - 3);
            m13154public(iM13236new);
        } else if (!z) {
            m13154public(iM13236new);
        } else {
            this.f11713this.scrollToPosition(iM13236new + 3);
            m13154public(iM13236new);
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m13163static(Ccatch ccatch) {
        this.f11706case = ccatch;
        if (ccatch == Ccatch.YEAR) {
            this.f11710goto.getLayoutManager().scrollToPosition(((YearGridAdapter) this.f11710goto.getAdapter()).m13263for(this.f11714try.f11786for));
            this.f11705break.setVisibility(0);
            this.f11707catch.setVisibility(8);
        } else if (ccatch == Ccatch.DAY) {
            this.f11705break.setVisibility(8);
            this.f11707catch.setVisibility(0);
            m13162return(this.f11714try);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public com.google.android.material.datepicker.Cif m13164super() {
        return this.f11708else;
    }

    /* renamed from: switch, reason: not valid java name */
    public void m13165switch() {
        Ccatch ccatch = this.f11706case;
        Ccatch ccatch2 = Ccatch.YEAR;
        if (ccatch == ccatch2) {
            m13163static(Ccatch.DAY);
        } else if (ccatch == Ccatch.DAY) {
            m13163static(ccatch2);
        }
    }

    @Nullable
    /* renamed from: throw, reason: not valid java name */
    public Month m13166throw() {
        return this.f11714try;
    }
}
