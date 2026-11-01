package android.support.v4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import com.wsw.cospa.CartoonApplication;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class v72 {

    /* renamed from: do, reason: not valid java name */
    private static LayoutInflater f7107do;

    /* renamed from: if, reason: not valid java name */
    private static View f7108if;

    /* renamed from: do, reason: not valid java name */
    public static void m8768do(int i) {
        Toast toast = new Toast(CartoonApplication.m24690do());
        if (f7107do == null) {
            f7107do = (LayoutInflater) CartoonApplication.m24690do().getSystemService("layout_inflater");
        }
        View viewInflate = f7107do.inflate(R.layout.arg_res_0x7f0c008e, (ViewGroup) null, false);
        f7108if = viewInflate;
        ((TextView) viewInflate.findViewById(R.id.arg_res_0x7f0902cc)).setText(CartoonApplication.m24690do().getResources().getString(i));
        toast.setGravity(17, 0, 0);
        toast.setView(f7108if);
        toast.setDuration(0);
        toast.show();
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8769if(String str) {
        Toast toast = new Toast(CartoonApplication.m24690do());
        if (f7107do == null) {
            f7107do = (LayoutInflater) CartoonApplication.m24690do().getSystemService("layout_inflater");
        }
        View viewInflate = f7107do.inflate(R.layout.arg_res_0x7f0c008e, (ViewGroup) null, false);
        f7108if = viewInflate;
        TextView textView = (TextView) viewInflate.findViewById(R.id.arg_res_0x7f0902cc);
        toast.setGravity(17, 0, 0);
        textView.setText(str);
        toast.setView(f7108if);
        toast.setDuration(0);
        toast.show();
    }
}
