package com.google.android.material.datepicker;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;
import com.google.android.material.timepicker.TimeModel;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: do, reason: not valid java name */
    private final MaterialCalendar<?> f11816do;

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: do, reason: not valid java name */
        public final TextView f11817do;

        public ViewHolder(TextView textView) {
            super(textView);
            this.f11817do = textView;
        }
    }

    /* renamed from: com.google.android.material.datepicker.YearGridAdapter$do, reason: invalid class name */
    public class Cdo implements View.OnClickListener {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ int f11818do;

        public Cdo(int i) {
            this.f11818do = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            YearGridAdapter.this.f11816do.m13162return(YearGridAdapter.this.f11816do.m13159final().m13124try(Month.m13220if(this.f11818do, YearGridAdapter.this.f11816do.m13166throw().f11787if)));
            YearGridAdapter.this.f11816do.m13163static(MaterialCalendar.Ccatch.DAY);
        }
    }

    public YearGridAdapter(MaterialCalendar<?> materialCalendar) {
        this.f11816do = materialCalendar;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    private View.OnClickListener m13261if(int i) {
        return new Cdo(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    /* renamed from: case, reason: not valid java name and merged with bridge method [inline-methods] */
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }

    /* renamed from: for, reason: not valid java name */
    public int m13263for(int i) {
        return i - this.f11816do.m13159final().m13116break().f11786for;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f11816do.m13159final().m13118catch();
    }

    /* renamed from: new, reason: not valid java name */
    public int m13264new(int i) {
        return this.f11816do.m13159final().m13116break().f11786for + i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: try, reason: not valid java name and merged with bridge method [inline-methods] */
    public void onBindViewHolder(@NonNull ViewHolder viewHolder, int i) {
        int iM13264new = m13264new(i);
        String string = viewHolder.f11817do.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        viewHolder.f11817do.setText(String.format(Locale.getDefault(), TimeModel.f13130this, Integer.valueOf(iM13264new)));
        viewHolder.f11817do.setContentDescription(String.format(string, Integer.valueOf(iM13264new)));
        Cif cifM13164super = this.f11816do.m13164super();
        Calendar calendarM13283public = Cbreak.m13283public();
        com.google.android.material.datepicker.Cdo cdo = calendarM13283public.get(1) == iM13264new ? cifM13164super.f11848case : cifM13164super.f11854new;
        Iterator<Long> it = this.f11816do.mo13160for().getSelectedDays().iterator();
        while (it.hasNext()) {
            calendarM13283public.setTimeInMillis(it.next().longValue());
            if (calendarM13283public.get(1) == iM13264new) {
                cdo = cifM13164super.f11855try;
            }
        }
        cdo.m13308case(viewHolder.f11817do);
        viewHolder.f11817do.setOnClickListener(m13261if(iM13264new));
    }
}
