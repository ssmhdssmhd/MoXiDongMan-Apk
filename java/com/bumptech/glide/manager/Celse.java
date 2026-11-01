package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.Glide;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@Deprecated
/* renamed from: com.bumptech.glide.manager.else, reason: invalid class name */
/* loaded from: classes.dex */
public class Celse extends Fragment {

    /* renamed from: else, reason: not valid java name */
    private static final String f10279else = "RMFragment";

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private Fragment f10280case;

    /* renamed from: do, reason: not valid java name */
    private final com.bumptech.glide.manager.Cdo f10281do;

    /* renamed from: for, reason: not valid java name */
    private final Set<Celse> f10282for;

    /* renamed from: if, reason: not valid java name */
    private final RequestManagerTreeNode f10283if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private Cgoto f10284new;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private Celse f10285try;

    /* renamed from: com.bumptech.glide.manager.else$do, reason: invalid class name */
    public class Cdo implements RequestManagerTreeNode {
        public Cdo() {
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<Cgoto> getDescendants() {
            Set<Celse> setM11896if = Celse.this.m11896if();
            HashSet hashSet = new HashSet(setM11896if.size());
            for (Celse celse : setM11896if) {
                if (celse.m11897try() != null) {
                    hashSet.add(celse.m11897try());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + Celse.this + "}";
        }
    }

    public Celse() {
        this(new com.bumptech.glide.manager.Cdo());
    }

    /* renamed from: class, reason: not valid java name */
    private void m11886class() {
        Celse celse = this.f10285try;
        if (celse != null) {
            celse.m11891this(this);
            this.f10285try = null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m11887do(Celse celse) {
        this.f10282for.add(celse);
    }

    @TargetApi(17)
    /* renamed from: else, reason: not valid java name */
    private boolean m11888else(@NonNull Fragment fragment) {
        Fragment parentFragment = getParentFragment();
        while (true) {
            Fragment parentFragment2 = fragment.getParentFragment();
            if (parentFragment2 == null) {
                return false;
            }
            if (parentFragment2.equals(parentFragment)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    private void m11889goto(@NonNull Activity activity) {
        m11886class();
        Celse celseM11869throw = Glide.m11040new(activity).m11055final().m11869throw(activity);
        this.f10285try = celseM11869throw;
        if (equals(celseM11869throw)) {
            return;
        }
        this.f10285try.m11887do(this);
    }

    @Nullable
    @TargetApi(17)
    /* renamed from: new, reason: not valid java name */
    private Fragment m11890new() {
        Fragment parentFragment = Build.VERSION.SDK_INT >= 17 ? getParentFragment() : null;
        return parentFragment != null ? parentFragment : this.f10280case;
    }

    /* renamed from: this, reason: not valid java name */
    private void m11891this(Celse celse) {
        this.f10282for.remove(celse);
    }

    /* renamed from: break, reason: not valid java name */
    public void m11892break(@Nullable Fragment fragment) {
        this.f10280case = fragment;
        if (fragment == null || fragment.getActivity() == null) {
            return;
        }
        m11889goto(fragment.getActivity());
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public RequestManagerTreeNode m11893case() {
        return this.f10283if;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m11894catch(@Nullable Cgoto cgoto) {
        this.f10284new = cgoto;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public com.bumptech.glide.manager.Cdo m11895for() {
        return this.f10281do;
    }

    @NonNull
    @TargetApi(17)
    /* renamed from: if, reason: not valid java name */
    public Set<Celse> m11896if() {
        if (equals(this.f10285try)) {
            return Collections.unmodifiableSet(this.f10282for);
        }
        if (this.f10285try == null || Build.VERSION.SDK_INT < 17) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet();
        for (Celse celse : this.f10285try.m11896if()) {
            if (m11888else(celse.getParentFragment())) {
                hashSet.add(celse);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // android.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            m11889goto(activity);
        } catch (IllegalStateException unused) {
            Log.isLoggable(f10279else, 5);
        }
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f10281do.m11883do();
        m11886class();
    }

    @Override // android.app.Fragment
    public void onDetach() {
        super.onDetach();
        m11886class();
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f10281do.m11885if();
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        this.f10281do.m11884for();
    }

    @Override // android.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m11890new() + "}";
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public Cgoto m11897try() {
        return this.f10284new;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public Celse(@NonNull com.bumptech.glide.manager.Cdo cdo) {
        this.f10283if = new Cdo();
        this.f10282for = new HashSet();
        this.f10281do = cdo;
    }
}
