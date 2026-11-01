package com.wsw.cospa.activity;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.m7;
import android.support.v4.p12;
import android.support.v4.w2;
import android.support.v4.wq;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import butterknife.BindView;
import com.wsw.cospa.R;
import com.wsw.cospa.base.BaseActivity;
import com.wsw.cospa.utils.Csynchronized;
import com.wsw.cospa.utils.DialogTool;

/* loaded from: classes2.dex */
public class AboutMeActivity extends BaseActivity implements View.OnClickListener {

    /* renamed from: goto, reason: not valid java name */
    private static final String f20835goto = "AboutMeActivity";

    @BindView(R.id.arg_res_0x7f090148)
    public LinearLayout doutuApp;

    @BindView(R.id.arg_res_0x7f090260)
    public LinearLayout likeApp;

    @BindView(R.id.arg_res_0x7f0902ab)
    public Toolbar mToolbar;

    @BindView(R.id.arg_res_0x7f0902b0)
    public LinearLayout mashanglai_app;

    @BindView(R.id.arg_res_0x7f090342)
    public TextView qqchannel;

    @BindView(R.id.arg_res_0x7f090343)
    public TextView qqgroup1;

    @BindView(R.id.arg_res_0x7f090344)
    public TextView qqgroup2;

    @BindView(R.id.arg_res_0x7f090345)
    public TextView qqgroup3;

    @BindView(R.id.arg_res_0x7f090346)
    public TextView qqgroup4;

    @BindView(R.id.arg_res_0x7f090347)
    public TextView qqgroup5;

    @BindView(R.id.arg_res_0x7f090348)
    public TextView qqgroup6;

    @BindView(R.id.arg_res_0x7f090349)
    public TextView qqgroup7;

    @BindView(R.id.arg_res_0x7f09034a)
    public TextView qqgroup8;

    @BindView(R.id.arg_res_0x7f09034b)
    public TextView qqgrouppay1;

    @BindView(R.id.arg_res_0x7f09034c)
    public TextView qqgrouppay2;

    @BindView(R.id.arg_res_0x7f090388)
    public ImageView sdvLauncher;

    @BindView(R.id.arg_res_0x7f0904c4)
    public TextView tvVersion;

    @BindView(R.id.arg_res_0x7f0904a8)
    public TextView tv_rule;

    @BindView(R.id.arg_res_0x7f0904d5)
    public LinearLayout uninstallApp;

    @BindView(R.id.arg_res_0x7f0904f6)
    public LinearLayout xinfangyuanApp;

    @BindView(R.id.arg_res_0x7f0904f7)
    public LinearLayout yueduApp;

    @BindView(R.id.arg_res_0x7f0904f9)
    public LinearLayout zhixun_app;

    /* renamed from: com.wsw.cospa.activity.AboutMeActivity$do, reason: invalid class name */
    public class Cdo implements DialogTool.DialogOptCb {
        public Cdo() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onBack() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onCancel() {
        }

        @Override // com.wsw.cospa.utils.DialogTool.DialogOptCb
        public void onConfirm() {
        }
    }

    /* renamed from: public, reason: not valid java name */
    public static void m24709public(Context context) {
        context.startActivity(new Intent(context, (Class<?>) AboutMeActivity.class));
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

    /* renamed from: import, reason: not valid java name */
    public boolean m24710import(String str) {
        Intent intent = new Intent();
        intent.setData(Uri.parse("mqqopensdkapi://bizAgent/qm/qr?url=http%3A%2F%2Fqm.qq.com%2Fcgi-bin%2Fqm%2Fqr%3Ffrom%3Dapp%26p%3Dandroid%26k%3D" + str));
        try {
            startActivity(intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public void m24711native() {
        DialogTool.o(this, new DialogTool.Cnew("版本提示", String.format(getString(R.string.arg_res_0x7f110110), w2.m9018for(this)), getString(R.string.arg_res_0x7f11010f)), new DialogTool.Ctry("确认", null), new Cdo());
    }

    @Override // com.wsw.cospa.base.BaseActivity
    /* renamed from: new */
    public int mo24705new() {
        return R.layout.arg_res_0x7f0c001c;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        switch (id) {
            case R.id.arg_res_0x7f090148 /* 2131296584 */:
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.coolapk.com/apk/com.wsw.joke"));
                    intent.addCategory("android.intent.category.BROWSABLE");
                    startActivity(intent);
                    break;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            case R.id.arg_res_0x7f090260 /* 2131296864 */:
                try {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("https://www.dzkm.app"));
                    intent2.addCategory("android.intent.category.BROWSABLE");
                    startActivity(intent2);
                    break;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case R.id.arg_res_0x7f0902b0 /* 2131296944 */:
                try {
                    Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse("http://sms.zmide.com/"));
                    intent3.addCategory("android.intent.category.BROWSABLE");
                    startActivity(intent3);
                    break;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
            case R.id.arg_res_0x7f090388 /* 2131297160 */:
                m24711native();
                break;
            case R.id.arg_res_0x7f0904a8 /* 2131297448 */:
                WebViewActivity.m25382synchronized(this, "规则教程", wq.f7609final);
                break;
            case R.id.arg_res_0x7f0904d5 /* 2131297493 */:
                try {
                    Intent intent4 = new Intent("android.intent.action.VIEW", Uri.parse("https://www.coolapk.com/apk/cn.ifreedomer.com.softmanager"));
                    intent4.addCategory("android.intent.category.BROWSABLE");
                    startActivity(intent4);
                    break;
                } catch (Exception e4) {
                    e4.printStackTrace();
                    return;
                }
            case R.id.arg_res_0x7f0904f9 /* 2131297529 */:
                try {
                    Intent intent5 = new Intent("android.intent.action.VIEW", Uri.parse("https://bbs.qihangyuncc.cn/"));
                    intent5.addCategory("android.intent.category.BROWSABLE");
                    startActivity(intent5);
                    break;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
            default:
                switch (id) {
                    case R.id.arg_res_0x7f090342 /* 2131297090 */:
                        try {
                            Intent intent6 = new Intent("android.intent.action.VIEW", Uri.parse("https://qun.qq.com/qqweb/qunpro/share?_wv=3&_wwv=128&inviteCode=mQMQX&from=246610&biz=ka"));
                            intent6.addCategory("android.intent.category.BROWSABLE");
                            startActivity(intent6);
                            break;
                        } catch (Exception e6) {
                            e6.printStackTrace();
                            return;
                        }
                    case R.id.arg_res_0x7f090343 /* 2131297091 */:
                        m24710import("dE4u-ejRGguX14Ggq2EHbKfQooaLZxkC");
                        break;
                    case R.id.arg_res_0x7f090344 /* 2131297092 */:
                        m24710import("kMZ8gmPasaQmm2qP0U4_tv1NzhIlQAjw");
                        break;
                    case R.id.arg_res_0x7f090345 /* 2131297093 */:
                        m24710import("M_cwr4PNcm_xGcJcYVtxJQ06vqGv8qSo");
                        break;
                    case R.id.arg_res_0x7f090346 /* 2131297094 */:
                        m24710import("MmcY5MPoYlAPGgY5vvwyM_sV25oPL3Ap");
                        break;
                    case R.id.arg_res_0x7f090347 /* 2131297095 */:
                        m24710import("-k3tjJF32NYYKq6dKiUQ1nv-S7XKejKO");
                        break;
                    case R.id.arg_res_0x7f090348 /* 2131297096 */:
                        m24710import("YuGPxxqCnQZ4LAPxxxFrTDo-5Krvz1LW");
                        break;
                    case R.id.arg_res_0x7f090349 /* 2131297097 */:
                        m24710import("Eftv9nJ6Gnz3IRJALCGkfH_j-HKcxIco");
                        break;
                    case R.id.arg_res_0x7f09034a /* 2131297098 */:
                        m24710import("sPQSy_-LUk2XboBjnGQjcg1lC87aLaZ_");
                        break;
                    case R.id.arg_res_0x7f09034b /* 2131297099 */:
                        m24710import("jrtPwX3PgRJvMW81O9Z_HTGPnjWpKMQJ");
                        break;
                    case R.id.arg_res_0x7f09034c /* 2131297100 */:
                        m24710import("vlikLlOBxxBfl-uUjEtKsAYqSbKbDQDu");
                        break;
                    default:
                        switch (id) {
                            case R.id.arg_res_0x7f0904f6 /* 2131297526 */:
                                try {
                                    Intent intent7 = new Intent("android.intent.action.VIEW", Uri.parse("https://www.lanzous.com/b201988"));
                                    intent7.addCategory("android.intent.category.BROWSABLE");
                                    startActivity(intent7);
                                    break;
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                    return;
                                }
                            case R.id.arg_res_0x7f0904f7 /* 2131297527 */:
                                try {
                                    Intent intent8 = new Intent("android.intent.action.VIEW", Uri.parse("https://www.coolapk.com/apk/com.gedoor.monkeybook"));
                                    intent8.addCategory("android.intent.category.BROWSABLE");
                                    startActivity(intent8);
                                    break;
                                } catch (Exception e8) {
                                    e8.printStackTrace();
                                    return;
                                }
                        }
                }
        }
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
        Csynchronized.m27098for(this, this.mToolbar);
        this.tvVersion.setText("当前版本：" + w2.m9018for(this));
        this.doutuApp.setOnClickListener(this);
        this.yueduApp.setOnClickListener(this);
        this.uninstallApp.setOnClickListener(this);
        this.likeApp.setOnClickListener(this);
        this.xinfangyuanApp.setOnClickListener(this);
        this.mashanglai_app.setOnClickListener(this);
        this.zhixun_app.setOnClickListener(this);
        this.qqgrouppay1.setOnClickListener(this);
        this.qqgrouppay2.setOnClickListener(this);
        this.qqgroup1.setOnClickListener(this);
        this.qqgroup2.setOnClickListener(this);
        this.qqgroup3.setOnClickListener(this);
        this.qqgroup4.setOnClickListener(this);
        this.qqgroup5.setOnClickListener(this);
        this.qqgroup6.setOnClickListener(this);
        this.qqgroup7.setOnClickListener(this);
        this.qqgroup8.setOnClickListener(this);
        this.qqchannel.setOnClickListener(this);
        this.tv_rule.setOnClickListener(this);
        this.sdvLauncher.setOnClickListener(this);
    }
}
