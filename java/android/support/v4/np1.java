package android.support.v4;

import android.annotation.TargetApi;
import android.app.Fragment;
import android.os.Bundle;
import androidx.annotation.NonNull;
import io.reactivex.subjects.Ctry;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class np1 extends Fragment {

    /* renamed from: for, reason: not valid java name */
    private static final int f4313for = 42;

    /* renamed from: do, reason: not valid java name */
    private Map<String, Ctry<dd1>> f4314do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private boolean f4315if;

    /* renamed from: case, reason: not valid java name */
    public void m5336case(String[] strArr, int[] iArr, boolean[] zArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            m5344try("onRequestPermissionsResult  " + strArr[i]);
            Ctry<dd1> ctry = this.f4314do.get(strArr[i]);
            if (ctry == null) {
                return;
            }
            this.f4314do.remove(strArr[i]);
            ctry.onNext(new dd1(strArr[i], iArr[i] == 0, zArr[i]));
            ctry.onComplete();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m5337do(@NonNull String str) {
        return this.f4314do.containsKey(str);
    }

    @TargetApi(23)
    /* renamed from: else, reason: not valid java name */
    public void m5338else(@NonNull String[] strArr) {
        requestPermissions(strArr, 42);
    }

    @TargetApi(23)
    /* renamed from: for, reason: not valid java name */
    public boolean m5339for(String str) {
        return getActivity().checkSelfPermission(str) == 0;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m5340goto(boolean z) {
        this.f4315if = z;
    }

    /* renamed from: if, reason: not valid java name */
    public Ctry<dd1> m5341if(@NonNull String str) {
        return this.f4314do.get(str);
    }

    @TargetApi(23)
    /* renamed from: new, reason: not valid java name */
    public boolean m5342new(String str) {
        return getActivity().getPackageManager().isPermissionRevokedByPolicy(str, getActivity().getPackageName());
    }

    @Override // android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(true);
    }

    @Override // android.app.Fragment
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
        m5336case(strArr, iArr, zArr);
    }

    /* renamed from: this, reason: not valid java name */
    public Ctry<dd1> m5343this(@NonNull String str, @NonNull Ctry<dd1> ctry) {
        return this.f4314do.put(str, ctry);
    }

    /* renamed from: try, reason: not valid java name */
    public void m5344try(String str) {
    }
}
