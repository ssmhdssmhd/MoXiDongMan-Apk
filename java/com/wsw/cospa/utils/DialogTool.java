package com.wsw.cospa.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.support.v4.v72;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.gyf.immersionbar.Celse;
import com.wsw.cospa.R;
import com.wsw.cospa.activity.WebViewActivity;
import com.wsw.cospa.utils.DialogTool;
import com.wsw.cospa.widget.view.FixedTextInputEditText;

/* loaded from: classes2.dex */
public class DialogTool {

    /* renamed from: do, reason: not valid java name */
    public static boolean f22505do;

    public interface DialogOptCb {
        void onBack();

        void onCancel();

        void onConfirm();
    }

    public interface EditDialogOptcb {
        void onConfirm(String str);
    }

    public interface LoginDialogOptcb {
        void onConfirm(String str, String str2);
    }

    /* renamed from: com.wsw.cospa.utils.DialogTool$do, reason: invalid class name */
    public class Cdo extends ClickableSpan {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Context f22506do;

        public Cdo(Context context) {
            this.f22506do = context;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            WebViewActivity.m25382synchronized(this.f22506do, "隐私政策", "file:///android_asset/yszc.html");
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            textPaint.setColor(this.f22506do.getResources().getColor(R.color.arg_res_0x7f0600cd));
            textPaint.setUnderlineText(false);
        }
    }

    /* renamed from: com.wsw.cospa.utils.DialogTool$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public String f22507do;

        /* renamed from: for, reason: not valid java name */
        public String f22508for;

        /* renamed from: if, reason: not valid java name */
        public String f22509if;

        public Cfor(String str, String str2, String str3) {
            this.f22507do = str;
            this.f22508for = str2;
            this.f22509if = str3;
        }
    }

    /* renamed from: com.wsw.cospa.utils.DialogTool$if, reason: invalid class name */
    public enum Cif {
        VERTICAL,
        HORIZONTAL
    }

    /* renamed from: com.wsw.cospa.utils.DialogTool$new, reason: invalid class name */
    public static class Cnew {

        /* renamed from: do, reason: not valid java name */
        public String f22512do;

        /* renamed from: for, reason: not valid java name */
        public String f22514for;

        /* renamed from: if, reason: not valid java name */
        public String f22516if;

        /* renamed from: new, reason: not valid java name */
        public int f22517new = 1;

        /* renamed from: try, reason: not valid java name */
        public float f22518try = 1.0f;

        /* renamed from: case, reason: not valid java name */
        public int f22511case = -1;

        /* renamed from: else, reason: not valid java name */
        public int f22513else = -1;

        /* renamed from: goto, reason: not valid java name */
        public int f22515goto = -1;

        public Cnew(String str, String str2, String str3) {
            this.f22512do = str;
            this.f22516if = str2;
            this.f22514for = str3;
        }

        /* renamed from: do, reason: not valid java name */
        public void m26641do(int i) {
            this.f22515goto = i;
        }

        /* renamed from: for, reason: not valid java name */
        public void m26642for(int i) {
            this.f22517new = i;
        }

        /* renamed from: if, reason: not valid java name */
        public void m26643if(float f, int i, int i2) {
            this.f22518try = f;
            this.f22511case = i;
            this.f22513else = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: abstract, reason: not valid java name */
    public static /* synthetic */ void m26602abstract(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onConfirm();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(LoginDialogOptcb loginDialogOptcb, FixedTextInputEditText fixedTextInputEditText, FixedTextInputEditText fixedTextInputEditText2, AlertDialog alertDialog, View view) {
        if (loginDialogOptcb == null || TextUtils.isEmpty(fixedTextInputEditText.getText()) || TextUtils.isEmpty(fixedTextInputEditText2.getText())) {
            v72.m8769if("账号或密码为空");
        } else {
            loginDialogOptcb.onConfirm(fixedTextInputEditText.getText().toString(), fixedTextInputEditText2.getText().toString());
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: continue, reason: not valid java name */
    public static /* synthetic */ void m26608continue(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onCancel();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean d(AlertDialog alertDialog, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        alertDialog.dismiss();
        return true;
    }

    /* renamed from: default, reason: not valid java name */
    private static void m26609default(Context context, final AlertDialog alertDialog, Cnew cnew, Ctry ctry, final DialogOptCb dialogOptCb) {
        int length;
        TextView textView;
        TextView textView2;
        try {
            alertDialog.show();
            alertDialog.setCanceledOnTouchOutside(ctry.f22521for);
            Window window = alertDialog.getWindow();
            window.setContentView(R.layout.arg_res_0x7f0c0132);
            View viewFindViewById = window.findViewById(R.id.arg_res_0x7f0904e9);
            TextView textView3 = (TextView) window.findViewById(R.id.arg_res_0x7f090146);
            TextView textView4 = (TextView) window.findViewById(R.id.arg_res_0x7f090144);
            ImageView imageView = (ImageView) window.findViewById(R.id.arg_res_0x7f090145);
            int i = cnew.f22517new;
            if (-1 == i) {
                textView3.setGravity(i);
            }
            float f = cnew.f22518try;
            if (1.0f != f) {
                textView4.setLineSpacing(0.0f, f);
            }
            int i2 = cnew.f22511case;
            if (-1 != i2) {
                textView4.setGravity(i2);
            }
            int i3 = cnew.f22513else;
            if (-1 != i3) {
                textView4.setTextColor(i3);
            }
            LinearLayout linearLayout = (LinearLayout) window.findViewById(R.id.arg_res_0x7f0900d0);
            TextView textView5 = (TextView) window.findViewById(R.id.arg_res_0x7f0900cf);
            TextView textView6 = (TextView) window.findViewById(R.id.arg_res_0x7f0900ce);
            LinearLayout linearLayout2 = (LinearLayout) window.findViewById(R.id.arg_res_0x7f0900d1);
            TextView textView7 = (TextView) window.findViewById(R.id.arg_res_0x7f0900d7);
            TextView textView8 = (TextView) window.findViewById(R.id.arg_res_0x7f0900d6);
            if (TextUtils.isEmpty(cnew.f22512do)) {
                textView3.setVisibility(8);
            } else {
                textView3.setText(cnew.f22512do);
                textView3.setVisibility(0);
            }
            String str = "";
            if (TextUtils.isEmpty(cnew.f22516if)) {
                length = 0;
            } else {
                str = "" + cnew.f22516if;
                length = str.length();
            }
            if (!TextUtils.isEmpty(cnew.f22514for)) {
                str = str + cnew.f22514for;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            if (length > 0) {
                textView = textView8;
                textView2 = textView7;
                spannableStringBuilder.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.arg_res_0x7f060116)), 0, length, 33);
            } else {
                textView = textView8;
                textView2 = textView7;
            }
            textView4.setText(spannableStringBuilder);
            int i4 = cnew.f22515goto;
            if (i4 > 0) {
                imageView.setImageResource(i4);
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            if (TextUtils.isEmpty(ctry.f22520do) || TextUtils.isEmpty(ctry.f22522if)) {
                TextView textView9 = textView;
                TextView textView10 = textView2;
                if (TextUtils.isEmpty(ctry.f22520do) || TextUtils.isEmpty(ctry.f22522if)) {
                    linearLayout.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    if (TextUtils.isEmpty(ctry.f22520do)) {
                        textView9.setVisibility(8);
                        textView10.setVisibility(0);
                        n(textView10, ctry.f22522if);
                        textView10.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.tz
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogTool.m26626protected(dialogOptCb, alertDialog, view);
                            }
                        });
                    } else {
                        textView9.setVisibility(0);
                        textView10.setVisibility(8);
                        n(textView9, ctry.f22520do);
                        textView9.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.xz
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogTool.m26621interface(dialogOptCb, alertDialog, view);
                            }
                        });
                        ctry.m26645for(context, textView9);
                    }
                } else {
                    linearLayout.setVisibility(8);
                    linearLayout2.setVisibility(8);
                    new Handler().postDelayed(new Runnable() { // from class: android.support.v4.g00
                        @Override // java.lang.Runnable
                        public final void run() {
                            alertDialog.dismiss();
                        }
                    }, ctry.f22524try > 0 ? r2 : 2000);
                }
            } else if (ctry.f22523new == Cif.HORIZONTAL) {
                linearLayout.setVisibility(0);
                linearLayout2.setVisibility(8);
                n(textView5, ctry.f22522if);
                n(textView6, ctry.f22520do);
                textView5.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.uz
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.m26625private(dialogOptCb, alertDialog, view);
                    }
                });
                textView6.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.a00
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.m26602abstract(dialogOptCb, alertDialog, view);
                    }
                });
                ctry.m26645for(context, textView6);
            } else {
                linearLayout.setVisibility(8);
                linearLayout2.setVisibility(0);
                TextView textView11 = textView2;
                n(textView11, ctry.f22522if);
                TextView textView12 = textView;
                n(textView12, ctry.f22520do);
                textView11.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.b00
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.m26608continue(dialogOptCb, alertDialog, view);
                    }
                });
                textView12.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.p00
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.m26630strictfp(dialogOptCb, alertDialog, view);
                    }
                });
                ctry.m26645for(context, textView12);
            }
            alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: android.support.v4.i00
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i5, KeyEvent keyEvent) {
                    return DialogTool.m26637transient(dialogOptCb, alertDialog, dialogInterface, i5, keyEvent);
                }
            });
            if (ctry.f22521for) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.l00
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        alertDialog.dismiss();
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onCancel();
        }
        alertDialog.dismiss();
    }

    /* renamed from: extends, reason: not valid java name */
    private static void m26612extends(final AlertDialog alertDialog, Cnew cnew, Ctry ctry, String str, String str2, final EditDialogOptcb editDialogOptcb) {
        alertDialog.show();
        Window window = alertDialog.getWindow();
        window.setContentView(R.layout.arg_res_0x7f0c0131);
        TextView textView = (TextView) window.findViewById(R.id.arg_res_0x7f090146);
        final EditText editText = (EditText) window.findViewById(R.id.arg_res_0x7f09019f);
        if (!TextUtils.isEmpty(str)) {
            editText.setHint(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            editText.setText(str2);
        }
        if (cnew == null || TextUtils.isEmpty(cnew.f22512do)) {
            textView.setVisibility(8);
        } else {
            textView.setText(cnew.f22512do);
            textView.setVisibility(0);
        }
        TextView textView2 = (TextView) window.findViewById(R.id.arg_res_0x7f0900cf);
        TextView textView3 = (TextView) window.findViewById(R.id.arg_res_0x7f0900ce);
        window.clearFlags(131072);
        window.setSoftInputMode(5);
        n(textView2, ctry.f22522if);
        n(textView3, ctry.f22520do);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.k00
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.e00
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogTool.m26620instanceof(editDialogOptcb, editText, alertDialog, view);
            }
        });
        alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: android.support.v4.d00
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return DialogTool.m26633synchronized(alertDialog, dialogInterface, i, keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onConfirm();
        }
        alertDialog.dismiss();
    }

    /* renamed from: finally, reason: not valid java name */
    private static void m26614finally(final AlertDialog alertDialog, Cnew cnew, Ctry ctry, final LoginDialogOptcb loginDialogOptcb) {
        alertDialog.show();
        Window window = alertDialog.getWindow();
        window.setContentView(R.layout.arg_res_0x7f0c0133);
        TextView textView = (TextView) window.findViewById(R.id.arg_res_0x7f090146);
        final FixedTextInputEditText fixedTextInputEditText = (FixedTextInputEditText) window.findViewById(R.id.arg_res_0x7f090139);
        final FixedTextInputEditText fixedTextInputEditText2 = (FixedTextInputEditText) window.findViewById(R.id.arg_res_0x7f090138);
        if (cnew == null || TextUtils.isEmpty(cnew.f22512do)) {
            textView.setVisibility(8);
        } else {
            textView.setText(cnew.f22512do);
            textView.setVisibility(0);
        }
        TextView textView2 = (TextView) window.findViewById(R.id.arg_res_0x7f0900cf);
        TextView textView3 = (TextView) window.findViewById(R.id.arg_res_0x7f0900ce);
        window.clearFlags(131072);
        window.setSoftInputMode(5);
        n(textView2, ctry.f22522if);
        n(textView3, ctry.f22520do);
        textView2.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.n00
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        textView3.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.f00
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DialogTool.c(loginDialogOptcb, fixedTextInputEditText, fixedTextInputEditText2, alertDialog, view);
            }
        });
        alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: android.support.v4.sz
            @Override // android.content.DialogInterface.OnKeyListener
            public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
                return DialogTool.d(alertDialog, dialogInterface, i, keyEvent);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onCancel();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onConfirm();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: instanceof, reason: not valid java name */
    public static /* synthetic */ void m26620instanceof(EditDialogOptcb editDialogOptcb, EditText editText, AlertDialog alertDialog, View view) {
        if (editDialogOptcb == null || TextUtils.isEmpty(editText.getText())) {
            v72.m8769if("输入内容为空");
        } else {
            editDialogOptcb.onConfirm(editText.getText().toString());
            alertDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: interface, reason: not valid java name */
    public static /* synthetic */ void m26621interface(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onConfirm();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void j(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onConfirm();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void k(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onCancel();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean l(DialogOptCb dialogOptCb, AlertDialog alertDialog, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        if (dialogOptCb != null) {
            dialogOptCb.onBack();
        }
        alertDialog.dismiss();
        return true;
    }

    private static void n(TextView textView, String str) {
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(str);
        }
    }

    public static void o(Activity activity, Cnew cnew, Ctry ctry, DialogOptCb dialogOptCb) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity, R.style.arg_res_0x7f120357).create();
        m26609default(activity, alertDialogCreate, cnew, ctry, dialogOptCb);
        Celse.l2(activity, alertDialogCreate).b0();
    }

    public static void p(Context context, Cnew cnew, Ctry ctry, DialogOptCb dialogOptCb) {
        m26609default(context, new AlertDialog.Builder(context, R.style.arg_res_0x7f120357).create(), cnew, ctry, dialogOptCb);
    }

    /* renamed from: package, reason: not valid java name */
    private static void m26624package(Context context, final AlertDialog alertDialog, Cnew cnew, Ctry ctry, final DialogOptCb dialogOptCb) {
        int length;
        TextView textView;
        TextView textView2;
        try {
            alertDialog.show();
            alertDialog.setCanceledOnTouchOutside(ctry.f22521for);
            Window window = alertDialog.getWindow();
            window.setContentView(R.layout.arg_res_0x7f0c0132);
            View viewFindViewById = window.findViewById(R.id.arg_res_0x7f0904e9);
            TextView textView3 = (TextView) window.findViewById(R.id.arg_res_0x7f090146);
            TextView textView4 = (TextView) window.findViewById(R.id.arg_res_0x7f090144);
            ImageView imageView = (ImageView) window.findViewById(R.id.arg_res_0x7f090145);
            int i = cnew.f22517new;
            if (-1 == i) {
                textView3.setGravity(i);
            }
            float f = cnew.f22518try;
            if (1.0f != f) {
                textView4.setLineSpacing(0.0f, f);
            }
            int i2 = cnew.f22511case;
            if (-1 != i2) {
                textView4.setGravity(i2);
            }
            int i3 = cnew.f22513else;
            if (-1 != i3) {
                textView4.setTextColor(i3);
            }
            LinearLayout linearLayout = (LinearLayout) window.findViewById(R.id.arg_res_0x7f0900d0);
            TextView textView5 = (TextView) window.findViewById(R.id.arg_res_0x7f0900cf);
            TextView textView6 = (TextView) window.findViewById(R.id.arg_res_0x7f0900ce);
            LinearLayout linearLayout2 = (LinearLayout) window.findViewById(R.id.arg_res_0x7f0900d1);
            TextView textView7 = (TextView) window.findViewById(R.id.arg_res_0x7f0900d7);
            TextView textView8 = (TextView) window.findViewById(R.id.arg_res_0x7f0900d6);
            if (TextUtils.isEmpty(cnew.f22512do)) {
                textView3.setVisibility(8);
            } else {
                textView3.setText(cnew.f22512do);
                textView3.setVisibility(0);
            }
            String str = "";
            if (TextUtils.isEmpty(cnew.f22516if)) {
                length = 0;
            } else {
                str = "" + cnew.f22516if;
                length = str.length();
            }
            if (!TextUtils.isEmpty(cnew.f22514for)) {
                str = str + cnew.f22514for;
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
            if (length > 0) {
                textView = textView8;
                textView2 = textView7;
                spannableStringBuilder.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.arg_res_0x7f060116)), 0, length, 33);
            } else {
                textView = textView8;
                textView2 = textView7;
            }
            int iIndexOf = cnew.f22514for.indexOf("《");
            spannableStringBuilder.setSpan(new Cdo(context), iIndexOf, iIndexOf + 6, 0);
            textView4.setMovementMethod(LinkMovementMethod.getInstance());
            textView4.setText(spannableStringBuilder);
            int i4 = cnew.f22515goto;
            if (i4 > 0) {
                imageView.setImageResource(i4);
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(8);
            }
            if (TextUtils.isEmpty(ctry.f22520do) || TextUtils.isEmpty(ctry.f22522if)) {
                TextView textView9 = textView;
                TextView textView10 = textView2;
                if (TextUtils.isEmpty(ctry.f22520do) || TextUtils.isEmpty(ctry.f22522if)) {
                    linearLayout.setVisibility(8);
                    linearLayout2.setVisibility(0);
                    if (TextUtils.isEmpty(ctry.f22520do)) {
                        textView9.setVisibility(8);
                        textView10.setVisibility(0);
                        n(textView10, ctry.f22522if);
                        textView10.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.zz
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogTool.k(dialogOptCb, alertDialog, view);
                            }
                        });
                    } else {
                        textView9.setVisibility(0);
                        textView10.setVisibility(8);
                        n(textView9, ctry.f22520do);
                        textView9.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.c00
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                DialogTool.j(dialogOptCb, alertDialog, view);
                            }
                        });
                        ctry.m26645for(context, textView9);
                    }
                } else {
                    linearLayout.setVisibility(8);
                    linearLayout2.setVisibility(8);
                    new Handler().postDelayed(new Runnable() { // from class: android.support.v4.h00
                        @Override // java.lang.Runnable
                        public final void run() {
                            alertDialog.dismiss();
                        }
                    }, ctry.f22524try > 0 ? r2 : 2000);
                }
            } else if (ctry.f22523new == Cif.HORIZONTAL) {
                linearLayout.setVisibility(0);
                linearLayout2.setVisibility(8);
                n(textView5, ctry.f22522if);
                n(textView6, ctry.f22520do);
                textView5.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.vz
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.e(dialogOptCb, alertDialog, view);
                    }
                });
                textView6.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.yz
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.f(dialogOptCb, alertDialog, view);
                    }
                });
                ctry.m26645for(context, textView6);
            } else {
                linearLayout.setVisibility(8);
                linearLayout2.setVisibility(0);
                TextView textView11 = textView2;
                n(textView11, ctry.f22522if);
                TextView textView12 = textView;
                n(textView12, ctry.f22520do);
                textView11.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.wz
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.g(dialogOptCb, alertDialog, view);
                    }
                });
                textView12.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.aaa
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        DialogTool.h(dialogOptCb, alertDialog, view);
                    }
                });
                ctry.m26645for(context, textView12);
            }
            alertDialog.setOnKeyListener(new DialogInterface.OnKeyListener() { // from class: android.support.v4.j00
                @Override // android.content.DialogInterface.OnKeyListener
                public final boolean onKey(DialogInterface dialogInterface, int i5, KeyEvent keyEvent) {
                    return DialogTool.l(dialogOptCb, alertDialog, dialogInterface, i5, keyEvent);
                }
            });
            if (ctry.f22521for) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: android.support.v4.m00
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        alertDialog.dismiss();
                    }
                });
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public static /* synthetic */ void m26625private(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onCancel();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: protected, reason: not valid java name */
    public static /* synthetic */ void m26626protected(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onCancel();
        }
        alertDialog.dismiss();
    }

    public static void q(Context context, String str, String str2, String str3, String str4, DialogOptCb dialogOptCb) {
        q(context, str, str2, str3, str4, dialogOptCb);
    }

    public static void r(Activity activity, Cnew cnew, Ctry ctry, String str, EditDialogOptcb editDialogOptcb) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity, R.style.arg_res_0x7f120357).create();
        m26612extends(alertDialogCreate, cnew, ctry, str, null, editDialogOptcb);
        Celse.l2(activity, alertDialogCreate).b0();
    }

    public static void s(Activity activity, Cnew cnew, Ctry ctry, String str, String str2, EditDialogOptcb editDialogOptcb) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity, R.style.arg_res_0x7f120357).create();
        m26612extends(alertDialogCreate, cnew, ctry, str, str2, editDialogOptcb);
        Celse.l2(activity, alertDialogCreate).b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: strictfp, reason: not valid java name */
    public static /* synthetic */ void m26630strictfp(DialogOptCb dialogOptCb, AlertDialog alertDialog, View view) {
        if (dialogOptCb != null) {
            dialogOptCb.onConfirm();
        }
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: synchronized, reason: not valid java name */
    public static /* synthetic */ boolean m26633synchronized(AlertDialog alertDialog, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        alertDialog.dismiss();
        return true;
    }

    public static void t(Context context, Cnew cnew, Ctry ctry, String str, EditDialogOptcb editDialogOptcb) {
        m26612extends(new AlertDialog.Builder(context, R.style.arg_res_0x7f120357).create(), cnew, ctry, str, null, editDialogOptcb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: transient, reason: not valid java name */
    public static /* synthetic */ boolean m26637transient(DialogOptCb dialogOptCb, AlertDialog alertDialog, DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        if (dialogOptCb != null) {
            dialogOptCb.onBack();
        }
        alertDialog.dismiss();
        return true;
    }

    public static void u(Activity activity, Cnew cnew, Ctry ctry, LoginDialogOptcb loginDialogOptcb) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity, R.style.arg_res_0x7f120357).create();
        m26614finally(alertDialogCreate, cnew, ctry, loginDialogOptcb);
        Celse.l2(activity, alertDialogCreate).b0();
    }

    public static void v(Context context, Cnew cnew, Ctry ctry, LoginDialogOptcb loginDialogOptcb) {
        m26614finally(new AlertDialog.Builder(context, R.style.arg_res_0x7f120357).create(), cnew, ctry, loginDialogOptcb);
    }

    public static void w(Activity activity, Cnew cnew, Ctry ctry, DialogOptCb dialogOptCb) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(activity, R.style.arg_res_0x7f120357).create();
        m26624package(activity, alertDialogCreate, cnew, ctry, dialogOptCb);
        Celse.l2(activity, alertDialogCreate).b0();
    }

    /* renamed from: com.wsw.cospa.utils.DialogTool$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: case, reason: not valid java name */
        public int f22519case;

        /* renamed from: do, reason: not valid java name */
        public String f22520do;

        /* renamed from: for, reason: not valid java name */
        public boolean f22521for;

        /* renamed from: if, reason: not valid java name */
        public String f22522if;

        /* renamed from: new, reason: not valid java name */
        public Cif f22523new;

        /* renamed from: try, reason: not valid java name */
        public int f22524try;

        public Ctry(String str, String str2) {
            this.f22521for = false;
            this.f22523new = Cif.HORIZONTAL;
            this.f22524try = -1;
            this.f22519case = -1;
            this.f22520do = str;
            this.f22522if = str2;
        }

        /* renamed from: do, reason: not valid java name */
        public void m26644do() {
            this.f22519case = R.drawable.arg_res_0x7f0801dc;
        }

        /* renamed from: for, reason: not valid java name */
        public void m26645for(Context context, TextView textView) {
            int i = this.f22519case;
            if (i > 0) {
                textView.setBackgroundResource(i);
            }
        }

        /* renamed from: if, reason: not valid java name */
        public void m26646if(boolean z) {
            this.f22521for = z;
        }

        /* renamed from: new, reason: not valid java name */
        public void m26647new(int i) {
            this.f22519case = i;
        }

        /* renamed from: try, reason: not valid java name */
        public void m26648try() {
            this.f22519case = R.drawable.arg_res_0x7f0801df;
        }

        public Ctry(String str, String str2, Cif cif) {
            this.f22521for = false;
            this.f22523new = Cif.HORIZONTAL;
            this.f22524try = -1;
            this.f22519case = -1;
            this.f22520do = str;
            this.f22522if = str2;
            this.f22523new = cif;
        }

        public Ctry(String str, String str2, Cif cif, int i) {
            this.f22521for = false;
            this.f22523new = Cif.HORIZONTAL;
            this.f22524try = -1;
            this.f22519case = -1;
            this.f22520do = str;
            this.f22522if = str2;
            this.f22523new = cif;
            this.f22524try = i;
        }
    }
}
