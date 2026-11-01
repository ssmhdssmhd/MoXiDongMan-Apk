package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.timepicker.TimeModel;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: com.google.android.material.datepicker.case, reason: invalid class name */
/* loaded from: classes.dex */
class Ccase extends BaseAdapter {

    /* renamed from: case, reason: not valid java name */
    public static final int f11822case = Cbreak.m13285static().getMaximum(4);

    /* renamed from: do, reason: not valid java name */
    public final Month f11823do;

    /* renamed from: for, reason: not valid java name */
    private Collection<Long> f11824for;

    /* renamed from: if, reason: not valid java name */
    public final DateSelector<?> f11825if;

    /* renamed from: new, reason: not valid java name */
    public Cif f11826new;

    /* renamed from: try, reason: not valid java name */
    public final CalendarConstraints f11827try;

    public Ccase(Month month, DateSelector<?> dateSelector, CalendarConstraints calendarConstraints) {
        this.f11823do = month;
        this.f11825if = dateSelector;
        this.f11827try = calendarConstraints;
        this.f11824for = dateSelector.getSelectedDays();
    }

    /* renamed from: catch, reason: not valid java name */
    private void m13293catch(@Nullable TextView textView, long j) {
        Cdo cdo;
        if (textView == null) {
            return;
        }
        if (this.f11827try.m13117case().isValid(j)) {
            textView.setEnabled(true);
            cdo = m13295goto(j) ? this.f11826new.f11853if : Cbreak.m13283public().getTimeInMillis() == j ? this.f11826new.f11851for : this.f11826new.f11849do;
        } else {
            textView.setEnabled(false);
            cdo = this.f11826new.f11850else;
        }
        cdo.m13308case(textView);
    }

    /* renamed from: class, reason: not valid java name */
    private void m13294class(MaterialCalendarGridView materialCalendarGridView, long j) {
        if (Month.m13219for(j).equals(this.f11823do)) {
            m13293catch((TextView) materialCalendarGridView.getChildAt(materialCalendarGridView.getAdapter().m13300do(this.f11823do.m13226else(j)) - materialCalendarGridView.getFirstVisiblePosition()), j);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m13295goto(long j) {
        Iterator<Long> it = this.f11825if.getSelectedDays().iterator();
        while (it.hasNext()) {
            if (Cbreak.m13272do(j) == Cbreak.m13272do(it.next().longValue())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: try, reason: not valid java name */
    private void m13296try(Context context) {
        if (this.f11826new == null) {
            this.f11826new = new Cif(context);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public int m13297break(int i) {
        return (i - this.f11823do.m13229try()) + 1;
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m13298case(int i) {
        return i % this.f11823do.f11788new == 0;
    }

    /* renamed from: const, reason: not valid java name */
    public void m13299const(MaterialCalendarGridView materialCalendarGridView) {
        Iterator<Long> it = this.f11824for.iterator();
        while (it.hasNext()) {
            m13294class(materialCalendarGridView, it.next().longValue());
        }
        DateSelector<?> dateSelector = this.f11825if;
        if (dateSelector != null) {
            Iterator<Long> it2 = dateSelector.getSelectedDays().iterator();
            while (it2.hasNext()) {
                m13294class(materialCalendarGridView, it2.next().longValue());
            }
            this.f11824for = this.f11825if.getSelectedDays();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m13300do(int i) {
        return m13304if() + (i - 1);
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m13301else(int i) {
        return (i + 1) % this.f11823do.f11788new == 0;
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m13302final(int i) {
        return i >= m13304if() && i <= m13306this();
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: for, reason: not valid java name and merged with bridge method [inline-methods] */
    public Long getItem(int i) {
        if (i < this.f11823do.m13229try() || i > m13306this()) {
            return null;
        }
        return Long.valueOf(this.f11823do.m13223case(m13297break(i)));
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f11823do.f11789try + m13304if();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i / this.f11823do.f11788new;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public int m13304if() {
        return this.f11823do.m13229try();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0075  */
    @Override // android.widget.Adapter
    @NonNull
    /* renamed from: new, reason: not valid java name and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextView getView(int i, @Nullable View view, @NonNull ViewGroup viewGroup) {
        m13296try(viewGroup.getContext());
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day, viewGroup, false);
        }
        int iM13304if = i - m13304if();
        if (iM13304if >= 0) {
            Month month = this.f11823do;
            if (iM13304if >= month.f11789try) {
                textView.setVisibility(8);
                textView.setEnabled(false);
            } else {
                int i2 = iM13304if + 1;
                textView.setTag(month);
                textView.setText(String.format(textView.getResources().getConfiguration().locale, TimeModel.f13130this, Integer.valueOf(i2)));
                long jM13223case = this.f11823do.m13223case(i2);
                if (this.f11823do.f11786for == Month.m13221new().f11786for) {
                    textView.setContentDescription(Cnew.m13326else(jM13223case));
                } else {
                    textView.setContentDescription(Cnew.m13323class(jM13223case));
                }
                textView.setVisibility(0);
                textView.setEnabled(true);
            }
        }
        Long item = getItem(i);
        if (item == null) {
            return textView;
        }
        m13293catch(textView, item.longValue());
        return textView;
    }

    /* renamed from: this, reason: not valid java name */
    public int m13306this() {
        return (this.f11823do.m13229try() + this.f11823do.f11789try) - 1;
    }
}
