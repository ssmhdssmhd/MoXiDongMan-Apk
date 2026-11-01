package android.support.v4;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class he0 {

    /* renamed from: do, reason: not valid java name */
    private FragmentManager f2386do;

    /* renamed from: for, reason: not valid java name */
    private ArrayList<Fragment> f2387for;

    /* renamed from: if, reason: not valid java name */
    private int f2388if;

    /* renamed from: new, reason: not valid java name */
    private int f2389new;

    public he0(FragmentManager fragmentManager, int i, ArrayList<Fragment> arrayList) {
        this.f2386do = fragmentManager;
        this.f2388if = i;
        this.f2387for = arrayList;
        m2998for();
    }

    /* renamed from: for, reason: not valid java name */
    private void m2998for() {
        Iterator<Fragment> it = this.f2387for.iterator();
        while (it.hasNext()) {
            Fragment next = it.next();
            this.f2386do.beginTransaction().add(this.f2388if, next).hide(next).commit();
        }
        m3001new(0);
    }

    /* renamed from: do, reason: not valid java name */
    public Fragment m2999do() {
        return this.f2387for.get(this.f2389new);
    }

    /* renamed from: if, reason: not valid java name */
    public int m3000if() {
        return this.f2389new;
    }

    /* renamed from: new, reason: not valid java name */
    public void m3001new(int i) {
        for (int i2 = 0; i2 < this.f2387for.size(); i2++) {
            FragmentTransaction fragmentTransactionBeginTransaction = this.f2386do.beginTransaction();
            Fragment fragment = this.f2387for.get(i2);
            if (i2 == i) {
                fragmentTransactionBeginTransaction.show(fragment);
            } else {
                fragmentTransactionBeginTransaction.hide(fragment);
            }
            fragmentTransactionBeginTransaction.commit();
        }
        this.f2389new = i;
    }
}
