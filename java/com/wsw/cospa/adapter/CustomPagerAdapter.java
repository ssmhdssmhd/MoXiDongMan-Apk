package com.wsw.cospa.adapter;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class CustomPagerAdapter extends FragmentStatePagerAdapter {

    /* renamed from: do, reason: not valid java name */
    private FragmentManager f21647do;

    /* renamed from: for, reason: not valid java name */
    private List<String> f21648for;

    /* renamed from: if, reason: not valid java name */
    private List<Fragment> f21649if;

    /* renamed from: new, reason: not valid java name */
    private List<String> f21650new;

    public CustomPagerAdapter(FragmentManager fragmentManager, List<Fragment> list) {
        super(fragmentManager);
        this.f21648for = new ArrayList();
        this.f21647do = fragmentManager;
        this.f21649if = list;
        this.f21650new = new ArrayList();
    }

    private String makeFragmentName(int i, long j) {
        return "android:switcher:" + i + ":" + j;
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        super.destroyItem(viewGroup, i, obj);
    }

    /* renamed from: do, reason: not valid java name */
    public void m25624do() {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f21649if.size();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter
    public Fragment getItem(int i) {
        return this.f21649if.get(i);
    }

    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(@NonNull Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.f21648for.get(i);
    }

    /* renamed from: if, reason: not valid java name */
    public void m25625if(List<String> list) {
        this.f21648for.clear();
        this.f21648for.addAll(list);
        m25624do();
        notifyDataSetChanged();
    }

    @Override // androidx.fragment.app.FragmentStatePagerAdapter, androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        this.f21650new.add(makeFragmentName(viewGroup.getId(), getItemId(i)));
        Fragment fragment = (Fragment) super.instantiateItem(viewGroup, i);
        this.f21647do.beginTransaction().show(fragment).commitAllowingStateLoss();
        return fragment;
    }

    public CustomPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
        this.f21648for = new ArrayList();
        this.f21647do = fragmentManager;
        this.f21650new = new ArrayList();
    }
}
