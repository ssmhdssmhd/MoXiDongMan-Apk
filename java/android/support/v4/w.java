package android.support.v4;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;

/* loaded from: classes2.dex */
public class w {
    /* renamed from: do, reason: not valid java name */
    public static void m9008do(FragmentManager fragmentManager, Fragment fragment, int i) {
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        fragmentTransactionBeginTransaction.add(i, fragment);
        fragmentTransactionBeginTransaction.commit();
    }

    /* renamed from: if, reason: not valid java name */
    public static Activity m9009if(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return m9009if(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }
}
