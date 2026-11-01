package com.google.android.material.tabs;

import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class TabLayoutMediator {

    /* renamed from: break, reason: not valid java name */
    @Nullable
    private RecyclerView.AdapterDataObserver f12879break;

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private RecyclerView.Adapter<?> f12880case;

    /* renamed from: do, reason: not valid java name */
    @NonNull
    private final TabLayout f12881do;

    /* renamed from: else, reason: not valid java name */
    private boolean f12882else;

    /* renamed from: for, reason: not valid java name */
    private final boolean f12883for;

    /* renamed from: goto, reason: not valid java name */
    @Nullable
    private Cif f12884goto;

    /* renamed from: if, reason: not valid java name */
    @NonNull
    private final ViewPager2 f12885if;

    /* renamed from: new, reason: not valid java name */
    private final boolean f12886new;

    /* renamed from: this, reason: not valid java name */
    @Nullable
    private TabLayout.OnTabSelectedListener f12887this;

    /* renamed from: try, reason: not valid java name */
    private final TabConfigurationStrategy f12888try;

    public interface TabConfigurationStrategy {
        void onConfigureTab(@NonNull TabLayout.Celse celse, int i);
    }

    /* renamed from: com.google.android.material.tabs.TabLayoutMediator$do, reason: invalid class name */
    public class Cdo extends RecyclerView.AdapterDataObserver {
        public Cdo() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() throws Resources.NotFoundException {
            TabLayoutMediator.this.m14355new();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2) throws Resources.NotFoundException {
            TabLayoutMediator.this.m14355new();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i, int i2) throws Resources.NotFoundException {
            TabLayoutMediator.this.m14355new();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i, int i2, int i3) throws Resources.NotFoundException {
            TabLayoutMediator.this.m14355new();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i, int i2) throws Resources.NotFoundException {
            TabLayoutMediator.this.m14355new();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeChanged(int i, int i2, @Nullable Object obj) throws Resources.NotFoundException {
            TabLayoutMediator.this.m14355new();
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayoutMediator$for, reason: invalid class name */
    public static class Cfor implements TabLayout.OnTabSelectedListener {

        /* renamed from: do, reason: not valid java name */
        private final ViewPager2 f12890do;

        /* renamed from: if, reason: not valid java name */
        private final boolean f12891if;

        public Cfor(ViewPager2 viewPager2, boolean z) {
            this.f12890do = viewPager2;
            this.f12891if = z;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabReselected(TabLayout.Celse celse) {
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabSelected(@NonNull TabLayout.Celse celse) {
            this.f12890do.setCurrentItem(celse.m14327catch(), this.f12891if);
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public void onTabUnselected(TabLayout.Celse celse) {
        }
    }

    /* renamed from: com.google.android.material.tabs.TabLayoutMediator$if, reason: invalid class name */
    public static class Cif extends ViewPager2.OnPageChangeCallback {

        /* renamed from: do, reason: not valid java name */
        @NonNull
        private final WeakReference<TabLayout> f12892do;

        /* renamed from: for, reason: not valid java name */
        private int f12893for;

        /* renamed from: if, reason: not valid java name */
        private int f12894if;

        public Cif(TabLayout tabLayout) {
            this.f12892do = new WeakReference<>(tabLayout);
            m14356do();
        }

        /* renamed from: do, reason: not valid java name */
        public void m14356do() {
            this.f12893for = 0;
            this.f12894if = 0;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrollStateChanged(int i) {
            this.f12894if = this.f12893for;
            this.f12893for = i;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageScrolled(int i, float f, int i2) {
            TabLayout tabLayout = this.f12892do.get();
            if (tabLayout != null) {
                int i3 = this.f12893for;
                tabLayout.m14278synchronized(i, f, i3 != 2 || this.f12894if == 1, (i3 == 2 && this.f12894if == 0) ? false : true);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int i) {
            TabLayout tabLayout = this.f12892do.get();
            if (tabLayout == null || tabLayout.getSelectedTabPosition() == i || i >= tabLayout.getTabCount()) {
                return;
            }
            int i2 = this.f12893for;
            tabLayout.m14280transient(tabLayout.m14279throws(i), i2 == 0 || (i2 == 2 && this.f12894if == 0));
        }
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, true, tabConfigurationStrategy);
    }

    /* renamed from: do, reason: not valid java name */
    public void m14352do() throws Resources.NotFoundException {
        if (this.f12882else) {
            throw new IllegalStateException("TabLayoutMediator is already attached");
        }
        RecyclerView.Adapter<?> adapter = this.f12885if.getAdapter();
        this.f12880case = adapter;
        if (adapter == null) {
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        this.f12882else = true;
        Cif cif = new Cif(this.f12881do);
        this.f12884goto = cif;
        this.f12885if.registerOnPageChangeCallback(cif);
        Cfor cfor = new Cfor(this.f12885if, this.f12886new);
        this.f12887this = cfor;
        this.f12881do.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) cfor);
        if (this.f12883for) {
            Cdo cdo = new Cdo();
            this.f12879break = cdo;
            this.f12880case.registerAdapterDataObserver(cdo);
        }
        m14355new();
        this.f12881do.m14272instanceof(this.f12885if.getCurrentItem(), 0.0f, true);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m14353for() {
        return this.f12882else;
    }

    /* renamed from: if, reason: not valid java name */
    public void m14354if() {
        RecyclerView.Adapter<?> adapter;
        if (this.f12883for && (adapter = this.f12880case) != null) {
            adapter.unregisterAdapterDataObserver(this.f12879break);
            this.f12879break = null;
        }
        this.f12881do.removeOnTabSelectedListener(this.f12887this);
        this.f12885if.unregisterOnPageChangeCallback(this.f12884goto);
        this.f12887this = null;
        this.f12884goto = null;
        this.f12880case = null;
        this.f12882else = false;
    }

    /* renamed from: new, reason: not valid java name */
    public void m14355new() throws Resources.NotFoundException {
        this.f12881do.m14264continue();
        RecyclerView.Adapter<?> adapter = this.f12880case;
        if (adapter != null) {
            int itemCount = adapter.getItemCount();
            for (int i = 0; i < itemCount; i++) {
                TabLayout.Celse celseM14274package = this.f12881do.m14274package();
                this.f12888try.onConfigureTab(celseM14274package, i);
                this.f12881do.m14263case(celseM14274package, false);
            }
            if (itemCount > 0) {
                int iMin = Math.min(this.f12885if.getCurrentItem(), this.f12881do.getTabCount() - 1);
                if (iMin != this.f12881do.getSelectedTabPosition()) {
                    TabLayout tabLayout = this.f12881do;
                    tabLayout.m14276protected(tabLayout.m14279throws(iMin));
                }
            }
        }
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this(tabLayout, viewPager2, z, true, tabConfigurationStrategy);
    }

    public TabLayoutMediator(@NonNull TabLayout tabLayout, @NonNull ViewPager2 viewPager2, boolean z, boolean z2, @NonNull TabConfigurationStrategy tabConfigurationStrategy) {
        this.f12881do = tabLayout;
        this.f12885if = viewPager2;
        this.f12883for = z;
        this.f12886new = z2;
        this.f12888try = tabConfigurationStrategy;
    }
}
