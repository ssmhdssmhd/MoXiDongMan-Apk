package com.luck.picture.lib;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.bm0;
import android.support.v4.is1;
import android.support.v4.od1;
import android.support.v4.on0;
import android.support.v4.rd1;
import android.support.v4.u72;
import android.support.v4.z71;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.ViewPager;
import com.luck.picture.lib.adapter.SimpleFragmentAdapter;
import com.luck.picture.lib.config.PictureSelectionConfig;
import com.luck.picture.lib.entity.EventEntity;
import com.luck.picture.lib.entity.LocalMedia;
import com.luck.picture.lib.rxbus2.Cnew;
import com.luck.picture.lib.widget.PreviewViewPager;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class PicturePreviewActivity extends PictureBaseActivity implements View.OnClickListener, Animation.AnimationListener, SimpleFragmentAdapter.OnCallBackActivity {

    /* renamed from: const, reason: not valid java name */
    private ImageView f18491const;

    /* renamed from: default, reason: not valid java name */
    private Animation f18492default;

    /* renamed from: extends, reason: not valid java name */
    private boolean f18493extends;

    /* renamed from: final, reason: not valid java name */
    private TextView f18494final;

    /* renamed from: finally, reason: not valid java name */
    private int f18495finally;

    /* renamed from: import, reason: not valid java name */
    private LinearLayout f18496import;

    /* renamed from: native, reason: not valid java name */
    private int f18497native;

    /* renamed from: package, reason: not valid java name */
    private int f18498package;

    /* renamed from: private, reason: not valid java name */
    private Handler f18499private;

    /* renamed from: public, reason: not valid java name */
    private LinearLayout f18500public;

    /* renamed from: return, reason: not valid java name */
    private List<LocalMedia> f18501return = new ArrayList();

    /* renamed from: static, reason: not valid java name */
    private List<LocalMedia> f18502static = new ArrayList();

    /* renamed from: super, reason: not valid java name */
    private TextView f18503super;

    /* renamed from: switch, reason: not valid java name */
    private TextView f18504switch;

    /* renamed from: throw, reason: not valid java name */
    private TextView f18505throw;

    /* renamed from: throws, reason: not valid java name */
    private SimpleFragmentAdapter f18506throws;

    /* renamed from: while, reason: not valid java name */
    private PreviewViewPager f18507while;

    /* renamed from: com.luck.picture.lib.PicturePreviewActivity$do, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cdo implements Runnable {
        public Cdo() {
        }

        @Override // java.lang.Runnable
        public void run() {
            PicturePreviewActivity.this.onBackPressed();
        }
    }

    /* renamed from: com.luck.picture.lib.PicturePreviewActivity$for, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cfor implements ViewPager.OnPageChangeListener {
        public Cfor() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            PicturePreviewActivity picturePreviewActivity = PicturePreviewActivity.this;
            picturePreviewActivity.c(picturePreviewActivity.f18434if.b, i, i2);
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            PicturePreviewActivity.this.f18497native = i;
            PicturePreviewActivity.this.f18503super.setText((PicturePreviewActivity.this.f18497native + 1) + on0.f4694final + PicturePreviewActivity.this.f18501return.size());
            LocalMedia localMedia = (LocalMedia) PicturePreviewActivity.this.f18501return.get(PicturePreviewActivity.this.f18497native);
            PicturePreviewActivity.this.f18495finally = localMedia.m23092goto();
            PicturePreviewActivity picturePreviewActivity = PicturePreviewActivity.this;
            PictureSelectionConfig pictureSelectionConfig = picturePreviewActivity.f18434if;
            if (pictureSelectionConfig.b) {
                return;
            }
            if (pictureSelectionConfig.f18680continue) {
                picturePreviewActivity.f18504switch.setText(localMedia.m23103try() + "");
                PicturePreviewActivity.this.e(localMedia);
            }
            PicturePreviewActivity picturePreviewActivity2 = PicturePreviewActivity.this;
            picturePreviewActivity2.f(picturePreviewActivity2.f18497native);
        }
    }

    /* renamed from: com.luck.picture.lib.PicturePreviewActivity$if, reason: invalid class name */
    /* loaded from: classes2.dex */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z;
            if (PicturePreviewActivity.this.f18501return == null || PicturePreviewActivity.this.f18501return.size() <= 0) {
                return;
            }
            LocalMedia localMedia = (LocalMedia) PicturePreviewActivity.this.f18501return.get(PicturePreviewActivity.this.f18507while.getCurrentItem());
            String strM23089else = PicturePreviewActivity.this.f18502static.size() > 0 ? ((LocalMedia) PicturePreviewActivity.this.f18502static.get(0)).m23089else() : "";
            if (!TextUtils.isEmpty(strM23089else) && !rd1.m6908const(strM23089else, localMedia.m23089else())) {
                PicturePreviewActivity picturePreviewActivity = PicturePreviewActivity.this;
                u72.m8276do(picturePreviewActivity.f18430do, picturePreviewActivity.getString(R.string.picture_rule));
                return;
            }
            if (PicturePreviewActivity.this.f18504switch.isSelected()) {
                PicturePreviewActivity.this.f18504switch.setSelected(false);
                z = false;
            } else {
                PicturePreviewActivity.this.f18504switch.setSelected(true);
                PicturePreviewActivity.this.f18504switch.startAnimation(PicturePreviewActivity.this.f18492default);
                z = true;
            }
            int size = PicturePreviewActivity.this.f18502static.size();
            PicturePreviewActivity picturePreviewActivity2 = PicturePreviewActivity.this;
            PictureSelectionConfig pictureSelectionConfig = picturePreviewActivity2.f18434if;
            int i = pictureSelectionConfig.f18688goto;
            if (size >= i && z) {
                u72.m8276do(picturePreviewActivity2.f18430do, picturePreviewActivity2.getString(R.string.picture_message_max_num, new Object[]{Integer.valueOf(i)}));
                PicturePreviewActivity.this.f18504switch.setSelected(false);
                return;
            }
            if (!z) {
                Iterator it = picturePreviewActivity2.f18502static.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    LocalMedia localMedia2 = (LocalMedia) it.next();
                    if (localMedia2.m23084case().equals(localMedia.m23084case())) {
                        PicturePreviewActivity.this.f18502static.remove(localMedia2);
                        PicturePreviewActivity.this.i();
                        PicturePreviewActivity.this.e(localMedia2);
                        break;
                    }
                }
            } else {
                com.luck.picture.lib.tools.Cif.m23318for(picturePreviewActivity2.f18430do, pictureSelectionConfig.f18702strictfp);
                PicturePreviewActivity picturePreviewActivity3 = PicturePreviewActivity.this;
                if (picturePreviewActivity3.f18434if.f18683else == 1) {
                    picturePreviewActivity3.h();
                }
                PicturePreviewActivity.this.f18502static.add(localMedia);
                localMedia.m23095native(PicturePreviewActivity.this.f18502static.size());
                PicturePreviewActivity picturePreviewActivity4 = PicturePreviewActivity.this;
                if (picturePreviewActivity4.f18434if.f18680continue) {
                    picturePreviewActivity4.f18504switch.setText(String.valueOf(localMedia.m23103try()));
                }
            }
            PicturePreviewActivity.this.g(true);
        }
    }

    private void b() throws Resources.NotFoundException {
        this.f18503super.setText((this.f18497native + 1) + on0.f4694final + this.f18501return.size());
        SimpleFragmentAdapter simpleFragmentAdapter = new SimpleFragmentAdapter(this.f18501return, this, this);
        this.f18506throws = simpleFragmentAdapter;
        this.f18507while.setAdapter(simpleFragmentAdapter);
        this.f18507while.setCurrentItem(this.f18497native);
        g(false);
        f(this.f18497native);
        if (this.f18501return.size() > 0) {
            LocalMedia localMedia = this.f18501return.get(this.f18497native);
            this.f18495finally = localMedia.m23092goto();
            if (this.f18434if.f18680continue) {
                this.f18494final.setSelected(true);
                this.f18504switch.setText(localMedia.m23103try() + "");
                e(localMedia);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(boolean z, int i, int i2) {
        List<LocalMedia> list;
        if (!z || this.f18501return.size() <= 0 || (list = this.f18501return) == null) {
            return;
        }
        if (i2 < this.f18498package / 2) {
            LocalMedia localMedia = list.get(i);
            this.f18504switch.setSelected(d(localMedia));
            if (this.f18434if.f18680continue) {
                int iM23103try = localMedia.m23103try();
                this.f18504switch.setText(iM23103try + "");
                e(localMedia);
                f(i);
                return;
            }
            return;
        }
        int i3 = i + 1;
        LocalMedia localMedia2 = list.get(i3);
        this.f18504switch.setSelected(d(localMedia2));
        if (this.f18434if.f18680continue) {
            int iM23103try2 = localMedia2.m23103try();
            this.f18504switch.setText(iM23103try2 + "");
            e(localMedia2);
            f(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(LocalMedia localMedia) {
        if (this.f18434if.f18680continue) {
            this.f18504switch.setText("");
            for (LocalMedia localMedia2 : this.f18502static) {
                if (localMedia2.m23084case().equals(localMedia.m23084case())) {
                    localMedia.m23095native(localMedia2.m23103try());
                    this.f18504switch.setText(String.valueOf(localMedia.m23103try()));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        List<LocalMedia> list = this.f18502static;
        if (list == null || list.size() <= 0) {
            return;
        }
        com.luck.picture.lib.rxbus2.Cdo.m23256else().m23270this(new EventEntity(od1.f4572super, this.f18502static, this.f18502static.get(0).m23092goto()));
        this.f18502static.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int size = this.f18502static.size();
        int i = 0;
        while (i < size) {
            LocalMedia localMedia = this.f18502static.get(i);
            i++;
            localMedia.m23095native(i);
        }
    }

    private void j(boolean z) {
        if (z) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23270this(new EventEntity(od1.f4572super, this.f18502static, this.f18495finally));
        }
    }

    @com.luck.picture.lib.rxbus2.Cfor(threadMode = Cnew.MAIN)
    public void a(EventEntity eventEntity) {
        if (eventEntity.f18729do != 2770) {
            return;
        }
        m22863else();
        this.f18499private.postDelayed(new Cdo(), 150L);
    }

    public boolean d(LocalMedia localMedia) {
        Iterator<LocalMedia> it = this.f18502static.iterator();
        while (it.hasNext()) {
            if (it.next().m23084case().equals(localMedia.m23084case())) {
                return true;
            }
        }
        return false;
    }

    public void f(int i) {
        List<LocalMedia> list = this.f18501return;
        if (list == null || list.size() <= 0) {
            this.f18504switch.setSelected(false);
        } else {
            this.f18504switch.setSelected(d(this.f18501return.get(i)));
        }
    }

    public void g(boolean z) {
        this.f18493extends = z;
        if (this.f18502static.size() != 0) {
            this.f18505throw.setSelected(true);
            this.f18496import.setEnabled(true);
            if (this.f18435new) {
                TextView textView = this.f18505throw;
                int i = R.string.picture_done_front_num;
                Object[] objArr = new Object[2];
                objArr[0] = Integer.valueOf(this.f18502static.size());
                PictureSelectionConfig pictureSelectionConfig = this.f18434if;
                objArr[1] = Integer.valueOf(pictureSelectionConfig.f18683else == 1 ? 1 : pictureSelectionConfig.f18688goto);
                textView.setText(getString(i, objArr));
            } else {
                if (this.f18493extends) {
                    this.f18494final.startAnimation(this.f18492default);
                }
                this.f18494final.setVisibility(0);
                this.f18494final.setText(String.valueOf(this.f18502static.size()));
                this.f18505throw.setText(getString(R.string.picture_completed));
            }
        } else {
            this.f18496import.setEnabled(false);
            this.f18505throw.setSelected(false);
            if (this.f18435new) {
                TextView textView2 = this.f18505throw;
                int i2 = R.string.picture_done_front_num;
                Object[] objArr2 = new Object[2];
                objArr2[0] = 0;
                PictureSelectionConfig pictureSelectionConfig2 = this.f18434if;
                objArr2[1] = Integer.valueOf(pictureSelectionConfig2.f18683else == 1 ? 1 : pictureSelectionConfig2.f18688goto);
                textView2.setText(getString(i2, objArr2));
            } else {
                this.f18494final.setVisibility(4);
                this.f18505throw.setText(getString(R.string.picture_please_select));
            }
        }
        j(this.f18493extends);
    }

    @Override // com.luck.picture.lib.PictureBaseActivity
    /* renamed from: import */
    public void mo22868import(List<LocalMedia> list) {
        com.luck.picture.lib.rxbus2.Cdo.m23256else().m23270this(new EventEntity(od1.f4578while, list));
        if (this.f18434if.f18681default) {
            m22873static();
        } else {
            onBackPressed();
        }
    }

    @Override // com.luck.picture.lib.adapter.SimpleFragmentAdapter.OnCallBackActivity
    public void onActivityBackPressed() {
        onBackPressed();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1) {
            if (i2 == 96) {
                u72.m8276do(this.f18430do, ((Throwable) intent.getSerializableExtra("com.yalantis.ucrop.Error")).getMessage());
                return;
            }
            return;
        }
        if (i == 69) {
            if (intent != null) {
                setResult(-1, intent);
            }
            finish();
        } else {
            if (i != 609) {
                return;
            }
            setResult(-1, new Intent().putExtra(com.yalantis.ucrop.Cif.f23022goto, (Serializable) com.yalantis.ucrop.Cif.m27419for(intent)));
            finish();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        j(this.f18493extends);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        m22866for();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws Resources.NotFoundException {
        int id = view.getId();
        if (id == R.id.picture_left_back) {
            onBackPressed();
        }
        if (id == R.id.id_ll_ok) {
            int size = this.f18502static.size();
            LocalMedia localMedia = this.f18502static.size() > 0 ? this.f18502static.get(0) : null;
            String strM23089else = localMedia != null ? localMedia.m23089else() : "";
            PictureSelectionConfig pictureSelectionConfig = this.f18434if;
            int i = pictureSelectionConfig.f18706this;
            if (i > 0 && size < i && pictureSelectionConfig.f18683else == 2) {
                u72.m8276do(this.f18430do, strM23089else.startsWith(od1.f4554const) ? getString(R.string.picture_min_img_num, new Object[]{Integer.valueOf(this.f18434if.f18706this)}) : getString(R.string.picture_min_video_num, new Object[]{Integer.valueOf(this.f18434if.f18706this)}));
                return;
            }
            if (!pictureSelectionConfig.f18711volatile || !strM23089else.startsWith(od1.f4554const)) {
                mo22868import(this.f18502static);
                return;
            }
            if (this.f18434if.f18683else == 1) {
                String strM23084case = localMedia.m23084case();
                this.f18436this = strM23084case;
                m22862default(strM23084case);
            } else {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<LocalMedia> it = this.f18502static.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().m23084case());
                }
                m22864extends(arrayList);
            }
        }
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) throws Resources.NotFoundException, SecurityException {
        String string;
        super.onCreate(bundle);
        setContentView(R.layout.picture_preview);
        if (!com.luck.picture.lib.rxbus2.Cdo.m23256else().m23267goto(this)) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23264catch(this);
        }
        this.f18499private = new Handler();
        this.f18498package = is1.m3569for(this);
        Animation animationM10082for = z71.m10082for(this, R.anim.modal_in);
        this.f18492default = animationM10082for;
        animationM10082for.setAnimationListener(this);
        this.f18491const = (ImageView) findViewById(R.id.picture_left_back);
        this.f18507while = (PreviewViewPager) findViewById(R.id.preview_pager);
        this.f18500public = (LinearLayout) findViewById(R.id.ll_check);
        this.f18496import = (LinearLayout) findViewById(R.id.id_ll_ok);
        this.f18504switch = (TextView) findViewById(R.id.check);
        this.f18491const.setOnClickListener(this);
        this.f18505throw = (TextView) findViewById(R.id.tv_ok);
        this.f18496import.setOnClickListener(this);
        this.f18494final = (TextView) findViewById(R.id.tv_img_num);
        this.f18503super = (TextView) findViewById(R.id.picture_title);
        this.f18497native = getIntent().getIntExtra(od1.f4551case, 0);
        TextView textView = this.f18505throw;
        if (this.f18435new) {
            int i = R.string.picture_done_front_num;
            Object[] objArr = new Object[2];
            objArr[0] = 0;
            PictureSelectionConfig pictureSelectionConfig = this.f18434if;
            objArr[1] = Integer.valueOf(pictureSelectionConfig.f18683else == 1 ? 1 : pictureSelectionConfig.f18688goto);
            string = getString(i, objArr);
        } else {
            string = getString(R.string.picture_please_select);
        }
        textView.setText(string);
        this.f18494final.setSelected(this.f18434if.f18680continue);
        this.f18502static = (List) getIntent().getSerializableExtra(od1.f4577try);
        if (getIntent().getBooleanExtra(od1.f4552catch, false)) {
            this.f18501return = (List) getIntent().getSerializableExtra(od1.f4566new);
        } else {
            this.f18501return = bm0.m578new().m579case();
        }
        b();
        this.f18500public.setOnClickListener(new Cif());
        this.f18507while.addOnPageChangeListener(new Cfor());
    }

    @Override // com.luck.picture.lib.PictureBaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (com.luck.picture.lib.rxbus2.Cdo.m23256else().m23267goto(this)) {
            com.luck.picture.lib.rxbus2.Cdo.m23256else().m23268import(this);
        }
        Handler handler = this.f18499private;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f18499private = null;
        }
        Animation animation = this.f18492default;
        if (animation != null) {
            animation.cancel();
            this.f18492default = null;
        }
    }
}
