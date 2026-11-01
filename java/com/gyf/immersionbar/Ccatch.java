package com.gyf.immersionbar;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.fragment.app.FragmentActivity;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* renamed from: com.gyf.immersionbar.catch, reason: invalid class name */
/* loaded from: classes2.dex */
class Ccatch implements Handler.Callback {

    /* renamed from: case, reason: not valid java name */
    private static final int f18041case = 2;

    /* renamed from: try, reason: not valid java name */
    private static final int f18042try = 1;

    /* renamed from: do, reason: not valid java name */
    private String f18043do;

    /* renamed from: for, reason: not valid java name */
    private final Map<FragmentManager, Cbreak> f18044for;

    /* renamed from: if, reason: not valid java name */
    private Handler f18045if;

    /* renamed from: new, reason: not valid java name */
    private final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f18046new;

    /* renamed from: com.gyf.immersionbar.catch$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private static final Ccatch f18047do = new Ccatch();

        private Cif() {
        }
    }

    /* renamed from: break, reason: not valid java name */
    public static Ccatch m22655break() {
        return Cif.f18047do;
    }

    /* renamed from: catch, reason: not valid java name */
    private SupportRequestManagerFragment m22656catch(androidx.fragment.app.FragmentManager fragmentManager, String str) {
        return m22657class(fragmentManager, str, false);
    }

    /* renamed from: class, reason: not valid java name */
    private SupportRequestManagerFragment m22657class(androidx.fragment.app.FragmentManager fragmentManager, String str, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag(str);
        if (supportRequestManagerFragment == null && (supportRequestManagerFragment = this.f18046new.get(fragmentManager)) == null) {
            if (z) {
                return null;
            }
            supportRequestManagerFragment = new SupportRequestManagerFragment();
            this.f18046new.put(fragmentManager, supportRequestManagerFragment);
            fragmentManager.beginTransaction().add(supportRequestManagerFragment, str).commitAllowingStateLoss();
            this.f18045if.obtainMessage(2, fragmentManager).sendToTarget();
        }
        if (!z) {
            return supportRequestManagerFragment;
        }
        fragmentManager.beginTransaction().remove(supportRequestManagerFragment).commitAllowingStateLoss();
        return null;
    }

    /* renamed from: do, reason: not valid java name */
    private static <T> void m22658do(@Nullable T t, @NonNull String str) {
        Objects.requireNonNull(t, str);
    }

    /* renamed from: goto, reason: not valid java name */
    private Cbreak m22659goto(FragmentManager fragmentManager, String str) {
        return m22660this(fragmentManager, str, false);
    }

    /* renamed from: this, reason: not valid java name */
    private Cbreak m22660this(FragmentManager fragmentManager, String str, boolean z) {
        Cbreak cbreak = (Cbreak) fragmentManager.findFragmentByTag(str);
        if (cbreak == null && (cbreak = this.f18044for.get(fragmentManager)) == null) {
            if (z) {
                return null;
            }
            cbreak = new Cbreak();
            this.f18044for.put(fragmentManager, cbreak);
            fragmentManager.beginTransaction().add(cbreak, str).commitAllowingStateLoss();
            this.f18045if.obtainMessage(1, fragmentManager).sendToTarget();
        }
        if (!z) {
            return cbreak;
        }
        fragmentManager.beginTransaction().remove(cbreak).commitAllowingStateLoss();
        return null;
    }

    @RequiresApi(api = 17)
    /* renamed from: case, reason: not valid java name */
    public Celse m22661case(Fragment fragment, boolean z) {
        String str;
        m22658do(fragment, "fragment is null");
        m22658do(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof DialogFragment) {
            m22658do(((DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str2 = this.f18043do;
        if (z) {
            str = str2 + fragment.getClass().getName();
        } else {
            str = str2 + System.identityHashCode(fragment);
        }
        return m22659goto(fragment.getChildFragmentManager(), str).m22651if(fragment);
    }

    /* renamed from: else, reason: not valid java name */
    public Celse m22662else(androidx.fragment.app.Fragment fragment, boolean z) {
        String str;
        m22658do(fragment, "fragment is null");
        m22658do(fragment.getActivity(), "fragment.getActivity() is null");
        if (fragment instanceof androidx.fragment.app.DialogFragment) {
            m22658do(((androidx.fragment.app.DialogFragment) fragment).getDialog(), "fragment.getDialog() is null");
        }
        String str2 = this.f18043do;
        if (z) {
            str = str2 + fragment.getClass().getName();
        } else {
            str = str2 + System.identityHashCode(fragment);
        }
        return m22656catch(fragment.getChildFragmentManager(), str).m22649if(fragment);
    }

    /* renamed from: for, reason: not valid java name */
    public void m22663for(androidx.fragment.app.Fragment fragment, boolean z) {
        String str;
        if (fragment == null) {
            return;
        }
        String str2 = this.f18043do;
        if (z) {
            str = str2 + fragment.getClass().getName();
        } else {
            str = str2 + System.identityHashCode(fragment);
        }
        m22657class(fragment.getChildFragmentManager(), str, true);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            this.f18044for.remove((FragmentManager) message.obj);
            return true;
        }
        if (i != 2) {
            return false;
        }
        this.f18046new.remove((androidx.fragment.app.FragmentManager) message.obj);
        return true;
    }

    /* renamed from: if, reason: not valid java name */
    public void m22664if(Activity activity, Dialog dialog) {
        if (activity == null || dialog == null) {
            return;
        }
        String str = this.f18043do + System.identityHashCode(dialog);
        if (activity instanceof FragmentActivity) {
            SupportRequestManagerFragment supportRequestManagerFragmentM22657class = m22657class(((FragmentActivity) activity).getSupportFragmentManager(), str, true);
            if (supportRequestManagerFragmentM22657class != null) {
                supportRequestManagerFragmentM22657class.m22648do(activity, dialog).K0();
                return;
            }
            return;
        }
        Cbreak cbreakM22660this = m22660this(activity.getFragmentManager(), str, true);
        if (cbreakM22660this != null) {
            cbreakM22660this.m22650do(activity, dialog).K0();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public Celse m22665new(Activity activity) {
        m22658do(activity, "activity is null");
        String str = this.f18043do + System.identityHashCode(activity);
        return activity instanceof FragmentActivity ? m22656catch(((FragmentActivity) activity).getSupportFragmentManager(), str).m22649if(activity) : m22659goto(activity.getFragmentManager(), str).m22651if(activity);
    }

    /* renamed from: try, reason: not valid java name */
    public Celse m22666try(Activity activity, Dialog dialog) {
        m22658do(activity, "activity is null");
        m22658do(dialog, "dialog is null");
        String str = this.f18043do + System.identityHashCode(dialog);
        return activity instanceof FragmentActivity ? m22656catch(((FragmentActivity) activity).getSupportFragmentManager(), str).m22648do(activity, dialog) : m22659goto(activity.getFragmentManager(), str).m22650do(activity, dialog);
    }

    private Ccatch() {
        this.f18043do = Celse.class.getName();
        this.f18044for = new HashMap();
        this.f18046new = new HashMap();
        this.f18045if = new Handler(Looper.getMainLooper(), this);
    }
}
