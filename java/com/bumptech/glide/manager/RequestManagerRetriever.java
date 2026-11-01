package com.bumptech.glide.manager;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.cf1;
import android.util.Log;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Cgoto;
import com.bumptech.glide.Glide;
import com.bumptech.glide.util.Ccase;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class RequestManagerRetriever implements Handler.Callback {

    /* renamed from: break, reason: not valid java name */
    private static final String f10254break = "RMRetriever";

    /* renamed from: catch, reason: not valid java name */
    private static final int f10255catch = 1;

    /* renamed from: class, reason: not valid java name */
    private static final int f10256class = 2;

    /* renamed from: const, reason: not valid java name */
    private static final String f10257const = "key";

    /* renamed from: final, reason: not valid java name */
    private static final RequestManagerFactory f10258final = new Cdo();

    /* renamed from: this, reason: not valid java name */
    @VisibleForTesting
    public static final String f10259this = "com.bumptech.glide.manager";

    /* renamed from: do, reason: not valid java name */
    private volatile Cgoto f10261do;

    /* renamed from: new, reason: not valid java name */
    private final Handler f10266new;

    /* renamed from: try, reason: not valid java name */
    private final RequestManagerFactory f10267try;

    /* renamed from: if, reason: not valid java name */
    @VisibleForTesting
    public final Map<FragmentManager, Celse> f10265if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    @VisibleForTesting
    public final Map<androidx.fragment.app.FragmentManager, SupportRequestManagerFragment> f10263for = new HashMap();

    /* renamed from: case, reason: not valid java name */
    private final ArrayMap<View, Fragment> f10260case = new ArrayMap<>();

    /* renamed from: else, reason: not valid java name */
    private final ArrayMap<View, android.app.Fragment> f10262else = new ArrayMap<>();

    /* renamed from: goto, reason: not valid java name */
    private final Bundle f10264goto = new Bundle();

    public interface RequestManagerFactory {
        @NonNull
        Cgoto build(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context);
    }

    /* renamed from: com.bumptech.glide.manager.RequestManagerRetriever$do, reason: invalid class name */
    public class Cdo implements RequestManagerFactory {
        @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
        @NonNull
        public Cgoto build(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
            return new Cgoto(glide, lifecycle, requestManagerTreeNode, context);
        }
    }

    public RequestManagerRetriever(@Nullable RequestManagerFactory requestManagerFactory) {
        this.f10267try = requestManagerFactory == null ? f10258final : requestManagerFactory;
        this.f10266new = new Handler(Looper.getMainLooper(), this);
    }

    @Nullable
    @Deprecated
    /* renamed from: case, reason: not valid java name */
    private android.app.Fragment m11849case(@NonNull View view, @NonNull Activity activity) {
        this.f10262else.clear();
        m11852for(activity.getFragmentManager(), this.f10262else);
        View viewFindViewById = activity.findViewById(R.id.content);
        android.app.Fragment fragment = null;
        while (!view.equals(viewFindViewById) && (fragment = this.f10262else.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f10262else.clear();
        return fragment;
    }

    @TargetApi(17)
    /* renamed from: do, reason: not valid java name */
    private static void m11850do(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @Nullable
    /* renamed from: else, reason: not valid java name */
    private Fragment m11851else(@NonNull View view, @NonNull FragmentActivity fragmentActivity) {
        this.f10260case.clear();
        m11860try(fragmentActivity.getSupportFragmentManager().getFragments(), this.f10260case);
        View viewFindViewById = fragmentActivity.findViewById(R.id.content);
        Fragment fragment = null;
        while (!view.equals(viewFindViewById) && (fragment = this.f10260case.get(view)) == null && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        this.f10260case.clear();
        return fragment;
    }

    @TargetApi(26)
    @Deprecated
    /* renamed from: for, reason: not valid java name */
    private void m11852for(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        if (Build.VERSION.SDK_INT < 26) {
            m11856new(fragmentManager, arrayMap);
            return;
        }
        for (android.app.Fragment fragment : fragmentManager.getFragments()) {
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                m11852for(fragment.getChildFragmentManager(), arrayMap);
            }
        }
    }

    @NonNull
    @Deprecated
    /* renamed from: goto, reason: not valid java name */
    private Cgoto m11853goto(@NonNull Context context, @NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        Celse celseM11861while = m11861while(fragmentManager, fragment, z);
        Cgoto cgotoM11897try = celseM11861while.m11897try();
        if (cgotoM11897try != null) {
            return cgotoM11897try;
        }
        Cgoto cgotoBuild = this.f10267try.build(Glide.m11040new(context), celseM11861while.m11895for(), celseM11861while.m11893case(), context);
        celseM11861while.m11894catch(cgotoBuild);
        return cgotoBuild;
    }

    @Nullable
    /* renamed from: if, reason: not valid java name */
    private static Activity m11854if(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m11854if(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @NonNull
    /* renamed from: native, reason: not valid java name */
    private SupportRequestManagerFragment m11855native(@NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag(f10259this);
        if (supportRequestManagerFragment == null && (supportRequestManagerFragment = this.f10263for.get(fragmentManager)) == null) {
            supportRequestManagerFragment = new SupportRequestManagerFragment();
            supportRequestManagerFragment.m11878catch(fragment);
            if (z) {
                supportRequestManagerFragment.m11880for().m11885if();
            }
            this.f10263for.put(fragmentManager, supportRequestManagerFragment);
            fragmentManager.beginTransaction().add(supportRequestManagerFragment, f10259this).commitAllowingStateLoss();
            this.f10266new.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return supportRequestManagerFragment;
    }

    @Deprecated
    /* renamed from: new, reason: not valid java name */
    private void m11856new(@NonNull FragmentManager fragmentManager, @NonNull ArrayMap<View, android.app.Fragment> arrayMap) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            this.f10264goto.putInt(f10257const, i);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.f10264goto, f10257const);
            } catch (Exception unused) {
            }
            if (fragment == null) {
                return;
            }
            if (fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                if (Build.VERSION.SDK_INT >= 17) {
                    m11852for(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            i = i2;
        }
    }

    /* renamed from: public, reason: not valid java name */
    private static boolean m11857public(Context context) {
        Activity activityM11854if = m11854if(context);
        return activityM11854if == null || !activityM11854if.isFinishing();
    }

    @NonNull
    /* renamed from: return, reason: not valid java name */
    private Cgoto m11858return(@NonNull Context context, @NonNull androidx.fragment.app.FragmentManager fragmentManager, @Nullable Fragment fragment, boolean z) {
        SupportRequestManagerFragment supportRequestManagerFragmentM11855native = m11855native(fragmentManager, fragment, z);
        Cgoto cgotoM11882try = supportRequestManagerFragmentM11855native.m11882try();
        if (cgotoM11882try != null) {
            return cgotoM11882try;
        }
        Cgoto cgotoBuild = this.f10267try.build(Glide.m11040new(context), supportRequestManagerFragmentM11855native.m11880for(), supportRequestManagerFragmentM11855native.m11877case(), context);
        supportRequestManagerFragmentM11855native.m11879class(cgotoBuild);
        return cgotoBuild;
    }

    @NonNull
    /* renamed from: super, reason: not valid java name */
    private Cgoto m11859super(@NonNull Context context) {
        if (this.f10261do == null) {
            synchronized (this) {
                if (this.f10261do == null) {
                    this.f10261do = this.f10267try.build(Glide.m11040new(context.getApplicationContext()), new Cif(), new Ctry(), context.getApplicationContext());
                }
            }
        }
        return this.f10261do;
    }

    /* renamed from: try, reason: not valid java name */
    private static void m11860try(@Nullable Collection<Fragment> collection, @NonNull Map<View, Fragment> map) {
        if (collection == null) {
            return;
        }
        for (Fragment fragment : collection) {
            if (fragment != null && fragment.getView() != null) {
                map.put(fragment.getView(), fragment);
                m11860try(fragment.getChildFragmentManager().getFragments(), map);
            }
        }
    }

    @NonNull
    /* renamed from: while, reason: not valid java name */
    private Celse m11861while(@NonNull FragmentManager fragmentManager, @Nullable android.app.Fragment fragment, boolean z) {
        Celse celse = (Celse) fragmentManager.findFragmentByTag(f10259this);
        if (celse == null && (celse = this.f10265if.get(fragmentManager)) == null) {
            celse = new Celse();
            celse.m11892break(fragment);
            if (z) {
                celse.m11895for().m11885if();
            }
            this.f10265if.put(fragmentManager, celse);
            fragmentManager.beginTransaction().add(celse, f10259this).commitAllowingStateLoss();
            this.f10266new.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return celse;
    }

    @NonNull
    @TargetApi(17)
    @Deprecated
    /* renamed from: break, reason: not valid java name */
    public Cgoto m11862break(@NonNull android.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        }
        if (Ccase.m12050native() || Build.VERSION.SDK_INT < 17) {
            return m11863catch(fragment.getActivity().getApplicationContext());
        }
        return m11853goto(fragment.getActivity(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    /* renamed from: catch, reason: not valid java name */
    public Cgoto m11863catch(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (Ccase.m12052public() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return m11866final((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return m11868this((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return m11863catch(contextWrapper.getBaseContext());
                }
            }
        }
        return m11859super(context);
    }

    @NonNull
    /* renamed from: class, reason: not valid java name */
    public Cgoto m11864class(@NonNull View view) {
        if (Ccase.m12050native()) {
            return m11863catch(view.getContext().getApplicationContext());
        }
        cf1.m900new(view);
        cf1.m901try(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity activityM11854if = m11854if(view.getContext());
        if (activityM11854if == null) {
            return m11863catch(view.getContext().getApplicationContext());
        }
        if (!(activityM11854if instanceof FragmentActivity)) {
            android.app.Fragment fragmentM11849case = m11849case(view, activityM11854if);
            return fragmentM11849case == null ? m11868this(activityM11854if) : m11862break(fragmentM11849case);
        }
        FragmentActivity fragmentActivity = (FragmentActivity) activityM11854if;
        Fragment fragmentM11851else = m11851else(view, fragmentActivity);
        return fragmentM11851else != null ? m11865const(fragmentM11851else) : m11866final(fragmentActivity);
    }

    @NonNull
    /* renamed from: const, reason: not valid java name */
    public Cgoto m11865const(@NonNull Fragment fragment) {
        cf1.m901try(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (Ccase.m12050native()) {
            return m11863catch(fragment.getContext().getApplicationContext());
        }
        return m11858return(fragment.getContext(), fragment.getChildFragmentManager(), fragment, fragment.isVisible());
    }

    @NonNull
    /* renamed from: final, reason: not valid java name */
    public Cgoto m11866final(@NonNull FragmentActivity fragmentActivity) {
        if (Ccase.m12050native()) {
            return m11863catch(fragmentActivity.getApplicationContext());
        }
        m11850do(fragmentActivity);
        return m11858return(fragmentActivity, fragmentActivity.getSupportFragmentManager(), null, m11857public(fragmentActivity));
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Object obj;
        Object objRemove;
        Object obj2;
        int i = message.what;
        Object obj3 = null;
        boolean z = true;
        if (i == 1) {
            obj = (FragmentManager) message.obj;
            objRemove = this.f10265if.remove(obj);
        } else {
            if (i != 2) {
                z = false;
                obj2 = null;
                if (z && obj3 == null && Log.isLoggable(f10254break, 5)) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to remove expected request manager fragment, manager: ");
                    sb.append(obj2);
                }
                return z;
            }
            obj = (androidx.fragment.app.FragmentManager) message.obj;
            objRemove = this.f10263for.remove(obj);
        }
        Object obj4 = obj;
        obj3 = objRemove;
        obj2 = obj4;
        if (z) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Failed to remove expected request manager fragment, manager: ");
            sb2.append(obj2);
        }
        return z;
    }

    @NonNull
    /* renamed from: import, reason: not valid java name */
    public SupportRequestManagerFragment m11867import(Context context, androidx.fragment.app.FragmentManager fragmentManager) {
        return m11855native(fragmentManager, null, m11857public(context));
    }

    @NonNull
    /* renamed from: this, reason: not valid java name */
    public Cgoto m11868this(@NonNull Activity activity) {
        if (Ccase.m12050native()) {
            return m11863catch(activity.getApplicationContext());
        }
        m11850do(activity);
        return m11853goto(activity, activity.getFragmentManager(), null, m11857public(activity));
    }

    @NonNull
    @Deprecated
    /* renamed from: throw, reason: not valid java name */
    public Celse m11869throw(Activity activity) {
        return m11861while(activity.getFragmentManager(), null, m11857public(activity));
    }
}
