package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;

/* loaded from: classes.dex */
class MonthsPagerAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private final Context f11790do;

    /* renamed from: for, reason: not valid java name */
    private final DateSelector<?> f11791for;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final CalendarConstraints f11792if;

    /* renamed from: new, reason: not valid java name */
    private final MaterialCalendar.OnDayClickListener f11793new;

    /* renamed from: try, reason: not valid java name */
    private final int f11794try;

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public final TextView f11795do;

        /* renamed from: if, reason: not valid java name */
        public final MaterialCalendarGridView f11796if;

        public ViewHolder(@NonNull LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.f11795do = textView;
            ViewCompat.setAccessibilityHeading(textView, true);
            this.f11796if = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (z) {
                return;
            }
            textView.setVisibility(8);
        }
    }

    /* renamed from: com.google.android.material.datepicker.MonthsPagerAdapter$do, reason: invalid class name */
    public class Cdo implements AdapterView.OnItemClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ MaterialCalendarGridView f11797do;

        public Cdo(MaterialCalendarGridView materialCalendarGridView) {
            this.f11797do = materialCalendarGridView;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            if (this.f11797do.getAdapter().m13302final(i)) {
                MonthsPagerAdapter.this.f11793new.onDayClick(this.f11797do.getAdapter().getItem(i).longValue());
            }
        }
    }

    public MonthsPagerAdapter(@NonNull Context context, DateSelector<?> dateSelector, @NonNull CalendarConstraints calendarConstraints, MaterialCalendar.OnDayClickListener onDayClickListener) {
        Month monthM13116break = calendarConstraints.m13116break();
        Month monthM13121else = calendarConstraints.m13121else();
        Month monthM13123this = calendarConstraints.m13123this();
        if (monthM13116break.compareTo(monthM13123this) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (monthM13123this.compareTo(monthM13121else) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        int iM13157while = Ccase.f11822case * MaterialCalendar.m13157while(context);
        int iM13157while2 = MaterialDatePicker.m13188throws(context) ? MaterialCalendar.m13157while(context) : 0;
        this.f11790do = context;
        this.f11794try = iM13157while + iM13157while2;
        this.f11792if = calendarConstraints;
        this.f11791for = dateSelector;
        this.f11793new = onDayClickListener;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!MaterialDatePicker.m13188throws(viewGroup.getContext())) {
            return new ViewHolder(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.f11794try));
        return new ViewHolder(linearLayout, true);
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public CharSequence m13234for(int i) {
        return m13235if(i).m13227goto(this.f11790do);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f11792if.m13122goto();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return this.f11792if.m13116break().m13222break(i).m13228this();
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public Month m13235if(int i) {
        return this.f11792if.m13116break().m13222break(i);
    }

    /* renamed from: new, reason: not valid java name */
    public int m13236new(@NonNull Month month) {
        return this.f11792if.m13116break().m13224catch(month);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        Month monthM13222break = this.f11792if.m13116break().m13222break(i);
        viewHolder.f11795do.setText(monthM13222break.m13227goto(viewHolder.itemView.getContext()));
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder.f11796if.findViewById(R.id.month_grid);
        if (materialCalendarGridView.getAdapter() == null || !monthM13222break.equals(materialCalendarGridView.getAdapter().f11823do)) {
            Ccase ccase = new Ccase(monthM13222break, this.f11791for, this.f11792if);
            materialCalendarGridView.setNumColumns(monthM13222break.f11788new);
            materialCalendarGridView.setAdapter((ListAdapter) ccase);
        } else {
            materialCalendarGridView.invalidate();
            materialCalendarGridView.getAdapter().m13299const(materialCalendarGridView);
        }
        materialCalendarGridView.setOnItemClickListener(new Cdo(materialCalendarGridView));
    }
}
