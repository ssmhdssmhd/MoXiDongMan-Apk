package android.support.v4;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import com.wsw.cospa.CartoonApplication;

/* loaded from: classes2.dex */
public class l31 {
    /* renamed from: do, reason: not valid java name */
    public static boolean m4581do() {
        return m4583if();
    }

    /* renamed from: for, reason: not valid java name */
    public static void m4582for(AppCompatActivity appCompatActivity, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("NightMode, ");
        sb.append(str);
        sb.append("; isSysNightMode = ");
        sb.append(m4583if());
        if (m4583if()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NightMode, ");
            sb2.append(str);
            sb2.append(" close NightMode");
            if (appCompatActivity != null) {
                appCompatActivity.getDelegate().setLocalNightMode(1);
            }
            AppCompatDelegate.setDefaultNightMode(1);
        }
    }

    /* renamed from: if, reason: not valid java name */
    private static boolean m4583if() {
        return (CartoonApplication.m24690do().getResources().getConfiguration().uiMode & 48) == 32;
    }
}
