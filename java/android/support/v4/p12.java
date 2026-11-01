package android.support.v4;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.fragment.app.Fragment;
import com.gyf.immersionbar.Celse;
import com.uc.crashsdk.export.LogType;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;

/* loaded from: classes2.dex */
public class p12 {
    /* renamed from: case, reason: not valid java name */
    public static void m5832case(Activity activity) {
        Window window = activity.getWindow();
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (i >= 19) {
                window.setFlags(67108864, 67108864);
            }
        } else {
            window.clearFlags(201326592);
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            window.setNavigationBarColor(activity.getResources().getColor(R.color.arg_res_0x7f0600f8));
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m5833do(Activity activity) {
        Celse.k2(activity).g2().B1(R.color.arg_res_0x7f060362).b(true).O1(!l31.m4581do()).m22703catch(!l31.m4581do()).m22723super(true ^ l31.m4581do()).s0(R.color.arg_res_0x7f0600f8).b0();
    }

    /* renamed from: else, reason: not valid java name */
    public static void m5834else(BaseActivity baseActivity, View view) {
        m5836goto(view);
        baseActivity.getWindow().addFlags(67108864);
        ViewGroup viewGroup = (ViewGroup) baseActivity.findViewById(android.R.id.content);
        View childAt = viewGroup.getChildAt(0);
        if (Build.VERSION.SDK_INT < 21) {
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            View childAt2 = viewGroup2.getChildAt(0);
            int iM3650class = j10.m3650class();
            if (childAt2 != null && childAt2.getLayoutParams() != null && childAt2.getLayoutParams().height == iM3650class) {
                viewGroup2.removeView(childAt2);
            }
            if (childAt2 != null) {
                childAt = viewGroup2.getChildAt(0);
                childAt.setFitsSystemWindows(false);
            }
        }
        if (childAt != null) {
            childAt.setFitsSystemWindows(false);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m5835for(Fragment fragment) {
        Celse.q2(fragment).g2().B1(R.color.arg_res_0x7f060362).O1(!l31.m4581do()).m22703catch(!l31.m4581do()).m22723super(!l31.m4581do()).s0(R.color.arg_res_0x7f0600f8).b0();
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m5836goto(View view) {
        int iM3650class = j10.m3650class();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.height += iM3650class;
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: if, reason: not valid java name */
    public static void m5837if(Activity activity, View view) {
        if (Build.BOARD.equals("windows")) {
            view = null;
        }
        Celse.k2(activity).g2().B1(R.color.arg_res_0x7f060362).S1(view).O1(!l31.m4581do()).m22703catch(!l31.m4581do()).m22723super(!l31.m4581do()).s0(R.color.arg_res_0x7f0600f8).b0();
    }

    /* renamed from: new, reason: not valid java name */
    public static void m5838new(Fragment fragment, View view) {
        if (Build.BOARD.equals("windows")) {
            view = null;
        }
        Celse.q2(fragment).g2().B1(R.color.arg_res_0x7f060362).S1(view).O1(!l31.m4581do()).m22703catch(!l31.m4581do()).m22723super(!l31.m4581do()).s0(R.color.arg_res_0x7f0600f8).b0();
    }

    /* renamed from: try, reason: not valid java name */
    public static void m5839try(Activity activity) {
        Celse.k2(activity).g2().B1(R.color.arg_res_0x7f060362).b(true).O1(!l31.m4581do()).m22703catch(!l31.m4581do()).m22723super(true ^ l31.m4581do()).s0(R.color.arg_res_0x7f0600f8).b0();
    }
}
