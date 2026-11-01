package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.Glide;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class SupportRequestManagerFragment extends Fragment {

    /* renamed from: else, reason: not valid java name */
    private static final String f10268else = "SupportRMFragment";

    /* renamed from: case, reason: not valid java name */
    @Nullable
    private Fragment f10269case;

    /* renamed from: do, reason: not valid java name */
    private final com.bumptech.glide.manager.Cdo f10270do;

    /* renamed from: for, reason: not valid java name */
    private final Set<SupportRequestManagerFragment> f10271for;

    /* renamed from: if, reason: not valid java name */
    private final RequestManagerTreeNode f10272if;

    /* renamed from: new, reason: not valid java name */
    @Nullable
    private SupportRequestManagerFragment f10273new;

    /* renamed from: try, reason: not valid java name */
    @Nullable
    private Cgoto f10274try;

    /* renamed from: com.bumptech.glide.manager.SupportRequestManagerFragment$do, reason: invalid class name */
    public class Cdo implements RequestManagerTreeNode {
        public Cdo() {
        }

        @Override // com.bumptech.glide.manager.RequestManagerTreeNode
        @NonNull
        public Set<Cgoto> getDescendants() {
            Set<SupportRequestManagerFragment> setM11881if = SupportRequestManagerFragment.this.m11881if();
            HashSet hashSet = new HashSet(setM11881if.size());
            for (SupportRequestManagerFragment supportRequestManagerFragment : setM11881if) {
                if (supportRequestManagerFragment.m11882try() != null) {
                    hashSet.add(supportRequestManagerFragment.m11882try());
                }
            }
            return hashSet;
        }

        public String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new com.bumptech.glide.manager.Cdo());
    }

    /* renamed from: break, reason: not valid java name */
    private void m11870break(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f10271for.remove(supportRequestManagerFragment);
    }

    /* renamed from: const, reason: not valid java name */
    private void m11871const() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f10273new;
        if (supportRequestManagerFragment != null) {
            supportRequestManagerFragment.m11870break(this);
            this.f10273new = null;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private void m11872do(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.f10271for.add(supportRequestManagerFragment);
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    private static FragmentManager m11873else(@NonNull Fragment fragment) {
        while (fragment.getParentFragment() != null) {
            fragment = fragment.getParentFragment();
        }
        return fragment.getFragmentManager();
    }

    /* renamed from: goto, reason: not valid java name */
    private boolean m11874goto(@NonNull Fragment fragment) {
        Fragment fragmentM11875new = m11875new();
        while (true) {
            Fragment parentFragment = fragment.getParentFragment();
            if (parentFragment == null) {
                return false;
            }
            if (parentFragment.equals(fragmentM11875new)) {
                return true;
            }
            fragment = fragment.getParentFragment();
        }
    }

    @Nullable
    /* renamed from: new, reason: not valid java name */
    private Fragment m11875new() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f10269case;
    }

    /* renamed from: this, reason: not valid java name */
    private void m11876this(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        m11871const();
        SupportRequestManagerFragment supportRequestManagerFragmentM11867import = Glide.m11040new(context).m11055final().m11867import(context, fragmentManager);
        this.f10273new = supportRequestManagerFragmentM11867import;
        if (equals(supportRequestManagerFragmentM11867import)) {
            return;
        }
        this.f10273new.m11872do(this);
    }

    @NonNull
    /* renamed from: case, reason: not valid java name */
    public RequestManagerTreeNode m11877case() {
        return this.f10272if;
    }

    /* renamed from: catch, reason: not valid java name */
    public void m11878catch(@Nullable Fragment fragment) {
        FragmentManager fragmentManagerM11873else;
        this.f10269case = fragment;
        if (fragment == null || fragment.getContext() == null || (fragmentManagerM11873else = m11873else(fragment)) == null) {
            return;
        }
        m11876this(fragment.getContext(), fragmentManagerM11873else);
    }

    /* renamed from: class, reason: not valid java name */
    public void m11879class(@Nullable Cgoto cgoto) {
        this.f10274try = cgoto;
    }

    @NonNull
    /* renamed from: for, reason: not valid java name */
    public com.bumptech.glide.manager.Cdo m11880for() {
        return this.f10270do;
    }

    @NonNull
    /* renamed from: if, reason: not valid java name */
    public Set<SupportRequestManagerFragment> m11881if() {
        SupportRequestManagerFragment supportRequestManagerFragment = this.f10273new;
        if (supportRequestManagerFragment == null) {
            return Collections.emptySet();
        }
        if (equals(supportRequestManagerFragment)) {
            return Collections.unmodifiableSet(this.f10271for);
        }
        HashSet hashSet = new HashSet();
        for (SupportRequestManagerFragment supportRequestManagerFragment2 : this.f10273new.m11881if()) {
            if (m11874goto(supportRequestManagerFragment2.m11875new())) {
                hashSet.add(supportRequestManagerFragment2);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        FragmentManager fragmentManagerM11873else = m11873else(this);
        if (fragmentManagerM11873else == null) {
            Log.isLoggable(f10268else, 5);
            return;
        }
        try {
            m11876this(getContext(), fragmentManagerM11873else);
        } catch (IllegalStateException unused) {
            Log.isLoggable(f10268else, 5);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f10270do.m11883do();
        m11871const();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f10269case = null;
        m11871const();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f10270do.m11885if();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f10270do.m11884for();
    }

    @Override // androidx.fragment.app.Fragment
    public String toString() {
        return super.toString() + "{parent=" + m11875new() + "}";
    }

    @Nullable
    /* renamed from: try, reason: not valid java name */
    public Cgoto m11882try() {
        return this.f10274try;
    }

    @SuppressLint({"ValidFragment"})
    @VisibleForTesting
    public SupportRequestManagerFragment(@NonNull com.bumptech.glide.manager.Cdo cdo) {
        this.f10272if = new Cdo();
        this.f10271for = new HashSet();
        this.f10270do = cdo;
    }
}
