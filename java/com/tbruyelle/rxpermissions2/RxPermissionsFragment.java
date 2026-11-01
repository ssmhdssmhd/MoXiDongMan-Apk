package com.tbruyelle.rxpermissions2;

import android.annotation.TargetApi;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import io.reactivex.subjects.Ctry;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class RxPermissionsFragment extends Fragment {

    /* renamed from: for, reason: not valid java name */
    private static final int f20734for = 42;

    /* renamed from: do, reason: not valid java name */
    private Map<String, Ctry<Cdo>> f20735do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private boolean f20736if;

    /* renamed from: case, reason: not valid java name */
    public void m24550case(String[] strArr, int[] iArr, boolean[] zArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            m24558try("onRequestPermissionsResult  " + strArr[i]);
            Ctry<Cdo> ctry = this.f20735do.get(strArr[i]);
            if (ctry == null) {
                String str = RxPermissions.f20719if;
                return;
            }
            this.f20735do.remove(strArr[i]);
            ctry.onNext(new Cdo(strArr[i], iArr[i] == 0, zArr[i]));
            ctry.onComplete();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m24551do(@NonNull String str) {
        return this.f20735do.containsKey(str);
    }

    @TargetApi(23)
    /* renamed from: else, reason: not valid java name */
    public void m24552else(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }

    @TargetApi(23)
    /* renamed from: for, reason: not valid java name */
    public boolean m24553for(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.checkSelfPermission(str) == 0;
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    /* renamed from: goto, reason: not valid java name */
    public void m24554goto(boolean z) {
        this.f20736if = z;
    }

    /* renamed from: if, reason: not valid java name */
    public Ctry<Cdo> m24555if(@NonNull String str) {
        return this.f20735do.get(str);
    }

    @TargetApi(23)
    /* renamed from: new, reason: not valid java name */
    public boolean m24556new(String str) {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            return activity.getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
        }
        throw new IllegalStateException("This fragment must be attached to an activity.");
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // androidx.fragment.app.Fragment
    @TargetApi(23)
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (i != 42) {
            return;
        }
        boolean[] zArr = new boolean[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            zArr[i2] = shouldShowRequestPermissionRationale(strArr[i2]);
        }
        m24550case(strArr, iArr, zArr);
    }

    /* renamed from: this, reason: not valid java name */
    public void m24557this(@NonNull String str, @NonNull Ctry<Cdo> ctry) {
        this.f20735do.put(str, ctry);
    }

    /* renamed from: try, reason: not valid java name */
    public void m24558try(String str) {
        if (this.f20736if) {
            String str2 = RxPermissions.f20719if;
        }
    }
}
