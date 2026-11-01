package com.wsw.cospa.activity;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.support.v4.de;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.pw0;
import android.support.v4.v72;
import android.support.v4.wq;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.exifinterface.media.ExifInterface;
import butterknife.BindView;
import com.google.android.material.textfield.TextInputLayout;
import com.google.gson.GsonBuilder;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.bean.ComicSourceBean;
import com.wsw.cospa.utils.Cfor;
import com.wsw.cospa.utils.Cgoto;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.widget.EditTextWithScrollView;
import com.wsw.cospa.widget.view.FixedTextInputEditText;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import javax.crypto.NoSuchPaddingException;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes2.dex */
public class EncryptComicActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: final, reason: not valid java name */
    public static final int f21094final = 10;

    /* renamed from: break, reason: not valid java name */
    private String f21095break;

    @BindView(R.id.arg_res_0x7f0900c9)
    public TextView btnDecrypt;

    @BindView(R.id.arg_res_0x7f0900cb)
    public TextView btnEncrypt;

    @BindView(R.id.arg_res_0x7f0900cc)
    public ImageView btnExpander;

    @BindView(R.id.arg_res_0x7f0900d3)
    public TextView btnReplace;

    /* renamed from: catch, reason: not valid java name */
    private String f21096catch;

    @BindView(R.id.arg_res_0x7f090173)
    public TextInputLayout etCipherLayout;

    @BindView(R.id.arg_res_0x7f090174)
    public FixedTextInputEditText etCipherText;

    @BindView(R.id.arg_res_0x7f090178)
    public TextInputLayout etPlaintLayout;

    @BindView(R.id.arg_res_0x7f090179)
    public FixedTextInputEditText etPlaintText;

    @BindView(R.id.arg_res_0x7f09017b)
    public TextInputLayout etRegularLayout;

    @BindView(R.id.arg_res_0x7f09017c)
    public FixedTextInputEditText etRegularText;

    @BindView(R.id.arg_res_0x7f09017d)
    public TextInputLayout etReplaceLayout;

    @BindView(R.id.arg_res_0x7f09017e)
    public TextInputLayout etReplaceSourceLayout;

    @BindView(R.id.arg_res_0x7f09017f)
    public EditTextWithScrollView etReplaceSourceText;

    @BindView(R.id.arg_res_0x7f090180)
    public FixedTextInputEditText etReplaceText;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0903e2)
    public ScrollView sv_replace_layout;

    /* renamed from: this, reason: not valid java name */
    private String f21100this;

    @BindView(R.id.arg_res_0x7f09045e)
    public TextView tvAesPassword;

    @BindView(R.id.arg_res_0x7f0904c4)
    public TextView tvVersion;

    @BindView(R.id.arg_res_0x7f0904be)
    public TextView tv_title;

    /* renamed from: goto, reason: not valid java name */
    private boolean f21099goto = true;

    /* renamed from: class, reason: not valid java name */
    private long f21097class = 636;

    /* renamed from: const, reason: not valid java name */
    private int f21098const = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public /* synthetic */ void m25016native(QMUIDialog.Cfor cfor, String[] strArr, Map map, DialogInterface dialogInterface, int i) {
        int iA = cfor.a();
        this.f21098const = iA;
        String str = strArr[iA];
        this.f21096catch = str;
        this.tvVersion.setText(str);
        this.tvAesPassword.setVisibility(0);
        dialogInterface.dismiss();
        for (String str2 : map.keySet()) {
            if (str2.equalsIgnoreCase(strArr[this.f21098const])) {
                String str3 = (String) map.get(str2);
                if (str2.startsWith("H")) {
                    this.tvAesPassword.setText(pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str3));
                    return;
                }
                if (!str2.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                    this.tvAesPassword.setText(str3);
                    return;
                }
                this.tvAesPassword.setText(pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str3 + this.f21097class));
                return;
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m25017public(Context context, String str) {
        Intent intent = new Intent(context, (Class<?>) EncryptComicActivity.class);
        intent.putExtra(wq.Cdo.f7667throw, str);
        context.startActivity(intent);
    }

    /* renamed from: return, reason: not valid java name */
    public static void m25018return(Activity activity, int i, ComicSourceBean comicSourceBean) {
        Intent intent = new Intent(activity, (Class<?>) EncryptComicActivity.class);
        intent.putExtra(wq.Cdo.f7649finally, i);
        intent.putExtra("comic_source", comicSourceBean);
        activity.startActivityForResult(intent, 10);
    }

    /* renamed from: static, reason: not valid java name */
    public static void m25019static(Activity activity, int i, String str, String str2) {
        Intent intent = new Intent(activity, (Class<?>) EncryptComicActivity.class);
        intent.putExtra(wq.Cdo.f7649finally, i);
        intent.putExtra(wq.Cdo.f7667throw, str);
        intent.putExtra(wq.Cdo.f7647extends, str2);
        activity.startActivityForResult(intent, 10);
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: case */
    public void mo24703case() {
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: goto */
    public m7 mo24704goto() {
        return null;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c0030;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, InvalidAlgorithmParameterException {
        String strM26904new;
        switch (view.getId()) {
            case R.id.arg_res_0x7f0900c9 /* 2131296457 */:
                String string = this.etCipherText.getText().toString();
                if (TextUtils.isEmpty(string)) {
                    v72.m8769if("密文不能为空！");
                    break;
                } else if (string.startsWith(":")) {
                    String[] strArrSplit = new String[3];
                    if (string.indexOf("_") != -1) {
                        strArrSplit = string.split("_");
                    }
                    Map<String, String> map = Cfor.f22650new;
                    for (String str : map.keySet()) {
                        if (str.equalsIgnoreCase(strArrSplit[1])) {
                            String str2 = map.get(str);
                            if (str.startsWith("R")) {
                                strM26904new = Cfor.m26901do(str, strArrSplit[2]);
                            } else if (str.startsWith("H")) {
                                strM26904new = Cfor.m26904new(strArrSplit[2], pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str2));
                            } else if (str.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                                strM26904new = Cfor.m26904new(strArrSplit[2], pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str2 + this.f21097class));
                            } else {
                                strM26904new = Cfor.m26904new(strArrSplit[2], str2);
                            }
                            this.etPlaintText.setText(strM26904new);
                            break;
                        }
                    }
                    break;
                }
                break;
            case R.id.arg_res_0x7f0900cb /* 2131296459 */:
                if (getIntent().getIntExtra(wq.Cdo.f7649finally, -1) == 4) {
                    String string2 = this.etReplaceSourceText.getText().toString();
                    String string3 = this.etRegularText.getText().toString();
                    String string4 = this.etReplaceText.getText().toString();
                    if (TextUtils.isEmpty(string2)) {
                        v72.m8769if("原文不能为空！");
                        break;
                    } else if (TextUtils.isEmpty(string3)) {
                        v72.m8769if("正则不能为空！");
                        break;
                    } else {
                        if (TextUtils.isEmpty(string4)) {
                            string4 = "";
                        }
                        this.etCipherText.setText(string2.replaceAll(string3, string4));
                        break;
                    }
                } else {
                    String string5 = this.etPlaintText.getText().toString();
                    String string6 = this.tvVersion.getText().toString();
                    String str3 = Cfor.f22650new.get(string6);
                    if (TextUtils.isEmpty(string5)) {
                        v72.m8769if("明文不能为空！");
                        break;
                    } else if ("请选择版本".equals(string6)) {
                        v72.m8769if("请选择加密版本");
                        break;
                    } else {
                        if (TextUtils.isEmpty(this.f21096catch)) {
                            this.f21096catch = this.tvVersion.getText().toString();
                        }
                        if (string6.startsWith("R")) {
                            this.etCipherText.setText(":_" + this.f21096catch + "_" + Cfor.m26903if(string6, string5));
                            break;
                        } else if (string6.startsWith("H")) {
                            String strM6232for = pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str3);
                            this.etCipherText.setText(":_" + this.f21096catch + "_" + Cfor.m26905try(string5, strM6232for));
                            break;
                        } else if (string6.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                            String strM6232for2 = pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str3 + this.f21097class);
                            this.etCipherText.setText(":_" + this.f21096catch + "_" + Cfor.m26905try(string5, strM6232for2));
                            break;
                        } else {
                            this.etCipherText.setText(":_" + this.f21096catch + "_" + Cfor.m26905try(string5, str3));
                            break;
                        }
                    }
                }
            case R.id.arg_res_0x7f0900cc /* 2131296460 */:
                this.btnExpander.setSelected(!this.f21099goto);
                final Map<String, String> map2 = Cfor.f22650new;
                ArrayList arrayList = new ArrayList();
                Iterator<String> it = map2.keySet().iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next());
                }
                String[] strArr = new String[arrayList.size()];
                final String[] strArr2 = (String[]) arrayList.toArray(strArr);
                final QMUIDialog.Cfor cfor = new QMUIDialog.Cfor(this);
                cfor.m24055volatile("选择加密版本号");
                cfor.m24007synchronized((CharSequence[]) arrayList.toArray(strArr), new DialogInterface.OnClickListener() { // from class: android.support.v4.g70
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i) {
                        this.f2070do.m25016native(cfor, strArr2, map2, dialogInterface, i);
                    }
                });
                cfor.b(this.f21098const);
                cfor.m24043interface();
                break;
            case R.id.arg_res_0x7f0900d3 /* 2131296467 */:
                int intExtra = getIntent().getIntExtra(wq.Cdo.f7649finally, -1);
                if (intExtra == 4) {
                    String string7 = this.etCipherText.getText().toString();
                    if (Cclass.E(string7)) {
                        ComicSourceBean comicSourceBean = (ComicSourceBean) new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().fromJson(string7, ComicSourceBean.class);
                        Intent intent = new Intent();
                        intent.putExtra("comic_source", comicSourceBean);
                        intent.putExtra(wq.Cdo.f7649finally, intExtra);
                        setResult(-1, intent);
                        finish();
                        break;
                    }
                } else if (!TextUtils.isEmpty(this.f21100this)) {
                    if (!this.f21100this.startsWith(":_S") && !this.f21100this.startsWith(":_T") && !this.f21100this.startsWith(":_R") && !this.f21100this.startsWith(":_H")) {
                        String string8 = this.etCipherText.getText().toString();
                        if (Cclass.E(string8)) {
                            Intent intent2 = new Intent();
                            intent2.putExtra(wq.Cdo.f7667throw, string8);
                            intent2.putExtra(wq.Cdo.f7649finally, getIntent().getIntExtra(wq.Cdo.f7649finally, -1));
                            setResult(-1, intent2);
                            finish();
                            break;
                        }
                    } else {
                        String string9 = this.etPlaintText.getText().toString();
                        if (Cclass.E(string9)) {
                            Intent intent3 = new Intent();
                            intent3.putExtra(wq.Cdo.f7667throw, string9);
                            intent3.putExtra(wq.Cdo.f7649finally, getIntent().getIntExtra(wq.Cdo.f7649finally, -1));
                            setResult(-1, intent3);
                            finish();
                            break;
                        }
                    }
                }
                break;
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: this */
    public void mo24707this() {
        p12.m5832case(this);
        Csynchronized.m27095case(this, this.mToolbar);
        this.btnEncrypt.setOnClickListener(this);
        this.btnExpander.setOnClickListener(this);
        this.btnExpander.setSelected(this.f21099goto);
        this.btnReplace.setOnClickListener(this);
        this.btnDecrypt.setOnClickListener(this);
        int intExtra = getIntent().getIntExtra(wq.Cdo.f7649finally, -1);
        if (intExtra == 4) {
            ((ViewGroup) this.tvVersion.getParent()).setVisibility(8);
            this.etPlaintLayout.setVisibility(8);
            this.sv_replace_layout.setVisibility(0);
            this.etRegularLayout.setVisibility(0);
            this.etReplaceLayout.setVisibility(0);
            this.btnDecrypt.setVisibility(8);
            this.tv_title.setText("正则替换");
            this.etReplaceSourceText.setHint("原文");
            this.etCipherLayout.setHint("结果");
            this.btnEncrypt.setText("替换");
            this.btnReplace.setText("替换原文");
            String json = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create().toJson((ComicSourceBean) getIntent().getParcelableExtra("comic_source"));
            this.etReplaceSourceText.setMovementMethod(ScrollingMovementMethod.getInstance());
            this.etReplaceSourceText.setText(json);
        } else {
            this.sv_replace_layout.setVisibility(8);
            this.etPlaintLayout.setVisibility(0);
            if (intExtra == 1) {
                this.tv_title.setText("加密正文");
                this.etPlaintText.setHint("正文明文");
                this.etCipherText.setHint("正文密文");
                this.btnReplace.setText("替换正文");
            } else if (intExtra == 2) {
                this.tv_title.setText("加密章节列表");
                this.etPlaintText.setHint("章节列表明文");
                this.etCipherText.setHint("章节列表密文");
                this.btnReplace.setText("替换章节列表");
            } else if (intExtra == 3) {
                this.tv_title.setText("加密发现列表");
                this.etPlaintText.setHint("发现列表明文");
                this.etCipherText.setHint("发现列表密文");
                this.btnReplace.setText("替换发现列表");
            }
        }
        this.f21100this = getIntent().getStringExtra(wq.Cdo.f7667throw);
        this.f21095break = getIntent().getStringExtra(wq.Cdo.f7647extends);
        if (TextUtils.isEmpty(this.f21100this)) {
            return;
        }
        if (!this.f21100this.startsWith(":_S") && !this.f21100this.startsWith(":_T") && !this.f21100this.startsWith(":_R") && !this.f21100this.startsWith(":_H")) {
            this.etPlaintText.setText(this.f21100this);
            return;
        }
        this.etCipherText.setText(this.f21100this);
        String[] strArrSplit = new String[3];
        if (this.f21100this.indexOf("_") != -1) {
            strArrSplit = this.f21100this.split("_");
        }
        this.tvVersion.setText(strArrSplit[1]);
        Map<String, String> map = Cfor.f22650new;
        for (String str : map.keySet()) {
            if (str.equalsIgnoreCase(strArrSplit[1])) {
                String str2 = map.get(str);
                this.tvAesPassword.setVisibility(0);
                if (str.startsWith("H")) {
                    this.tvAesPassword.setText(pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str2));
                    return;
                }
                if (!str.startsWith(ExifInterface.GPS_DIRECTION_TRUE)) {
                    this.tvAesPassword.setText(str2);
                    return;
                }
                this.tvAesPassword.setText(pw0.m6232for(new Cgoto().m26907for(de.m1297case(this.f21095break)) + str2 + this.f21097class));
                return;
            }
        }
    }
}
