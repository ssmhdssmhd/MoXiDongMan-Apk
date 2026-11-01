package cc.shinichi.library.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.tl0;
import android.support.v4.vi0;
import android.support.v4.za0;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import androidx.viewpager.widget.ViewPager;
import cc.shinichi.library.R;
import cc.shinichi.library.glide.sunfusheng.progress.OnProgressListener;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.transition.Transition;
import com.uc.crashsdk.export.LogType;
import java.io.File;
import java.util.List;

/* loaded from: classes.dex */
public class ImagePreviewActivity extends AppCompatActivity implements Handler.Callback, View.OnClickListener {

    /* renamed from: extends, reason: not valid java name */
    public static final String f8768extends = "ImagePreview";

    /* renamed from: break, reason: not valid java name */
    private TextView f8769break;

    /* renamed from: case, reason: not valid java name */
    private boolean f8770case;

    /* renamed from: catch, reason: not valid java name */
    private FrameLayout f8771catch;

    /* renamed from: class, reason: not valid java name */
    private FrameLayout f8772class;

    /* renamed from: const, reason: not valid java name */
    private Button f8773const;

    /* renamed from: do, reason: not valid java name */
    private Context f8775do;

    /* renamed from: else, reason: not valid java name */
    private boolean f8776else;

    /* renamed from: final, reason: not valid java name */
    private ImageView f8777final;

    /* renamed from: for, reason: not valid java name */
    private int f8778for;

    /* renamed from: goto, reason: not valid java name */
    private ImagePreviewAdapter f8779goto;

    /* renamed from: if, reason: not valid java name */
    private List<tl0> f8780if;

    /* renamed from: new, reason: not valid java name */
    private boolean f8783new;

    /* renamed from: super, reason: not valid java name */
    private ImageView f8787super;

    /* renamed from: this, reason: not valid java name */
    private HackyViewPager f8789this;

    /* renamed from: throw, reason: not valid java name */
    private View f8790throw;

    /* renamed from: throws, reason: not valid java name */
    private vi0.Cdo f8791throws;

    /* renamed from: try, reason: not valid java name */
    private boolean f8792try;

    /* renamed from: while, reason: not valid java name */
    private View f8793while;

    /* renamed from: import, reason: not valid java name */
    private boolean f8781import = false;

    /* renamed from: native, reason: not valid java name */
    private boolean f8782native = false;

    /* renamed from: public, reason: not valid java name */
    private boolean f8784public = false;

    /* renamed from: return, reason: not valid java name */
    private boolean f8785return = false;

    /* renamed from: static, reason: not valid java name */
    private boolean f8786static = false;

    /* renamed from: switch, reason: not valid java name */
    private String f8788switch = "";

    /* renamed from: default, reason: not valid java name */
    private int f8774default = 0;

    /* renamed from: cc.shinichi.library.view.ImagePreviewActivity$do, reason: invalid class name */
    public class Cdo extends ViewPager.SimpleOnPageChangeListener {
        public Cdo() {
        }

        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            super.onPageScrollStateChanged(i);
            if (cc.shinichi.library.Cdo.m10382break().m10395for() != null) {
                cc.shinichi.library.Cdo.m10382break().m10395for().onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            super.onPageScrolled(i, f, i2);
            if (cc.shinichi.library.Cdo.m10382break().m10395for() != null) {
                cc.shinichi.library.Cdo.m10382break().m10395for().onPageScrolled(i, f, i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.SimpleOnPageChangeListener, androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            super.onPageSelected(i);
            if (cc.shinichi.library.Cdo.m10382break().m10395for() != null) {
                cc.shinichi.library.Cdo.m10382break().m10395for().onPageSelected(i);
            }
            ImagePreviewActivity.this.f8778for = i;
            ImagePreviewActivity imagePreviewActivity = ImagePreviewActivity.this;
            imagePreviewActivity.f8788switch = ((tl0) imagePreviewActivity.f8780if.get(i)).getOriginUrl();
            ImagePreviewActivity.this.f8770case = cc.shinichi.library.Cdo.m10382break().m10416throws(ImagePreviewActivity.this.f8778for);
            if (ImagePreviewActivity.this.f8770case) {
                ImagePreviewActivity imagePreviewActivity2 = ImagePreviewActivity.this;
                imagePreviewActivity2.m10524while(imagePreviewActivity2.f8788switch);
            } else {
                ImagePreviewActivity.this.m10517return();
            }
            ImagePreviewActivity.this.f8769break.setText(String.format(ImagePreviewActivity.this.getString(R.string.indicator), (ImagePreviewActivity.this.f8778for + 1) + "", "" + ImagePreviewActivity.this.f8780if.size()));
            if (ImagePreviewActivity.this.f8781import) {
                ImagePreviewActivity.this.f8772class.setVisibility(8);
                ImagePreviewActivity.this.f8774default = 0;
            }
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewActivity$for, reason: invalid class name */
    public class Cfor implements OnProgressListener {
        public Cfor() {
        }

        @Override // cc.shinichi.library.glide.sunfusheng.progress.OnProgressListener
        public void onProgress(String str, boolean z, int i, long j, long j2) {
            if (z) {
                Message messageObtainMessage = ImagePreviewActivity.this.f8791throws.obtainMessage();
                Bundle bundle = new Bundle();
                bundle.putString("url", str);
                messageObtainMessage.what = 1;
                messageObtainMessage.obj = bundle;
                ImagePreviewActivity.this.f8791throws.sendMessage(messageObtainMessage);
                return;
            }
            if (i == ImagePreviewActivity.this.f8774default) {
                return;
            }
            ImagePreviewActivity.this.f8774default = i;
            Message messageObtainMessage2 = ImagePreviewActivity.this.f8791throws.obtainMessage();
            Bundle bundle2 = new Bundle();
            bundle2.putString("url", str);
            bundle2.putInt("progress", i);
            messageObtainMessage2.what = 2;
            messageObtainMessage2.obj = bundle2;
            ImagePreviewActivity.this.f8791throws.sendMessage(messageObtainMessage2);
        }
    }

    /* renamed from: cc.shinichi.library.view.ImagePreviewActivity$if, reason: invalid class name */
    public class Cif extends za0 {
        public Cif() {
        }

        @Override // android.support.v4.za0, com.bumptech.glide.request.target.Target
        /* renamed from: do */
        public void onResourceReady(@NonNull File file, @Nullable Transition<? super File> transition) {
            super.onResourceReady(file, transition);
        }
    }

    /* renamed from: native, reason: not valid java name */
    private void m10514native() {
        cc.shinichi.library.tool.image.Cdo.m10476do(this.f8775do.getApplicationContext(), this.f8788switch);
    }

    /* renamed from: public, reason: not valid java name */
    private int m10516public(String str) {
        for (int i = 0; i < this.f8780if.size(); i++) {
            if (str.equalsIgnoreCase(this.f8780if.get(i).getOriginUrl())) {
                return i;
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: return, reason: not valid java name */
    public void m10517return() {
        this.f8791throws.sendEmptyMessage(3);
    }

    /* renamed from: static, reason: not valid java name */
    private void m10518static(String str) {
        Glide.m11032abstract(this.f8775do).mo6022catch().load(str).j0(new Cif());
        cc.shinichi.library.glide.sunfusheng.progress.Cdo.m10434if(str, new Cfor());
    }

    /* renamed from: throw, reason: not valid java name */
    public static void m10521throw(Context context) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClass(context, ImagePreviewActivity.class);
        context.startActivity(intent);
        ((Activity) context).overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m10522throws() {
        this.f8791throws.sendEmptyMessage(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public boolean m10524while(String str) {
        File fileM10423for = cc.shinichi.library.glide.Cdo.m10423for(this.f8775do, str);
        if (fileM10423for == null || !fileM10423for.exists()) {
            m10522throws();
            return false;
        }
        m10517return();
        return true;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            String originUrl = this.f8780if.get(this.f8778for).getOriginUrl();
            m10522throws();
            if (this.f8781import) {
                m10517return();
            } else {
                this.f8773const.setText("0 %");
            }
            if (m10524while(originUrl)) {
                Message messageObtainMessage = this.f8791throws.obtainMessage();
                Bundle bundle = new Bundle();
                bundle.putString("url", originUrl);
                messageObtainMessage.what = 1;
                messageObtainMessage.obj = bundle;
                this.f8791throws.sendMessage(messageObtainMessage);
                return true;
            }
            m10518static(originUrl);
        } else if (i == 1) {
            String string = ((Bundle) message.obj).getString("url");
            m10517return();
            if (this.f8778for == m10516public(string)) {
                if (this.f8781import) {
                    this.f8772class.setVisibility(8);
                    if (cc.shinichi.library.Cdo.m10382break().m10411super() != null) {
                        this.f8793while.setVisibility(8);
                        cc.shinichi.library.Cdo.m10382break().m10411super().finish(this.f8793while);
                    }
                    this.f8779goto.m10535goto(this.f8780if.get(this.f8778for));
                } else {
                    this.f8779goto.m10535goto(this.f8780if.get(this.f8778for));
                }
            }
        } else if (i == 2) {
            Bundle bundle2 = (Bundle) message.obj;
            String string2 = bundle2.getString("url");
            int i2 = bundle2.getInt("progress");
            if (this.f8778for == m10516public(string2)) {
                if (this.f8781import) {
                    m10517return();
                    this.f8772class.setVisibility(0);
                    if (cc.shinichi.library.Cdo.m10382break().m10411super() != null) {
                        this.f8793while.setVisibility(0);
                        cc.shinichi.library.Cdo.m10382break().m10411super().progress(this.f8793while, i2);
                    }
                } else {
                    m10522throws();
                    this.f8773const.setText(String.format("%s %%", String.valueOf(i2)));
                }
            }
        } else if (i == 3) {
            this.f8773const.setText("查看原图");
            this.f8771catch.setVisibility(8);
            this.f8784public = false;
        } else if (i == 4) {
            this.f8771catch.setVisibility(0);
            this.f8784public = true;
        }
        return true;
    }

    /* renamed from: import, reason: not valid java name */
    public int m10525import(float f) {
        String lowerCase = Integer.toHexString((int) (Math.min(1.0f, Math.max(0.0f, f)) * 255.0f)).toLowerCase();
        StringBuilder sb = new StringBuilder();
        sb.append("#");
        sb.append(lowerCase.length() < 2 ? "0" : "");
        sb.append(lowerCase);
        sb.append("000000");
        return Color.parseColor(sb.toString());
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.img_download) {
            if (id == R.id.btn_show_origin) {
                this.f8791throws.sendEmptyMessage(0);
                return;
            } else {
                if (id == R.id.imgCloseButton) {
                    onBackPressed();
                    return;
                }
                return;
            }
        }
        if (ContextCompat.checkSelfPermission(this.f8775do, "android.permission.WRITE_EXTERNAL_STORAGE") == 0) {
            m10514native();
        } else if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8775do, "您拒绝了存储权限，下载失败！");
        } else {
            ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        setContentView(R.layout.sh_layout_preview);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            Window window = getWindow();
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(LogType.UNEXP_ANR);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
        } else if (i >= 19) {
            getWindow().addFlags(67108864);
        }
        this.f8775do = this;
        this.f8791throws = new vi0.Cdo(this);
        List<tl0> listM10396goto = cc.shinichi.library.Cdo.m10382break().m10396goto();
        this.f8780if = listM10396goto;
        if (listM10396goto == null || listM10396goto.size() == 0) {
            onBackPressed();
            return;
        }
        this.f8778for = cc.shinichi.library.Cdo.m10382break().m10414this();
        this.f8783new = cc.shinichi.library.Cdo.m10382break().m10409static();
        this.f8792try = cc.shinichi.library.Cdo.m10382break().m10408return();
        this.f8776else = cc.shinichi.library.Cdo.m10382break().m10412switch();
        this.f8788switch = this.f8780if.get(this.f8778for).getOriginUrl();
        boolean zM10416throws = cc.shinichi.library.Cdo.m10382break().m10416throws(this.f8778for);
        this.f8770case = zM10416throws;
        if (zM10416throws) {
            m10524while(this.f8788switch);
        }
        this.f8790throw = findViewById(R.id.rootView);
        this.f8789this = (HackyViewPager) findViewById(R.id.viewPager);
        this.f8769break = (TextView) findViewById(R.id.tv_indicator);
        this.f8771catch = (FrameLayout) findViewById(R.id.fm_image_show_origin_container);
        this.f8772class = (FrameLayout) findViewById(R.id.fm_center_progress_container);
        this.f8771catch.setVisibility(8);
        this.f8772class.setVisibility(8);
        if (cc.shinichi.library.Cdo.m10382break().m10415throw() != -1) {
            View viewInflate = View.inflate(this.f8775do, cc.shinichi.library.Cdo.m10382break().m10415throw(), null);
            this.f8793while = viewInflate;
            if (viewInflate != null) {
                this.f8772class.removeAllViews();
                this.f8772class.addView(this.f8793while);
                this.f8781import = true;
            } else {
                this.f8781import = false;
            }
        } else {
            this.f8781import = false;
        }
        this.f8773const = (Button) findViewById(R.id.btn_show_origin);
        this.f8777final = (ImageView) findViewById(R.id.img_download);
        this.f8787super = (ImageView) findViewById(R.id.imgCloseButton);
        this.f8777final.setImageResource(cc.shinichi.library.Cdo.m10382break().m10418try());
        this.f8787super.setImageResource(cc.shinichi.library.Cdo.m10382break().m10403new());
        this.f8787super.setOnClickListener(this);
        this.f8773const.setOnClickListener(this);
        this.f8777final.setOnClickListener(this);
        if (this.f8776else && this.f8780if.size() > 1) {
            this.f8769break.setVisibility(0);
            this.f8782native = true;
        } else {
            this.f8769break.setVisibility(8);
            this.f8782native = false;
        }
        if (this.f8783new) {
            this.f8777final.setVisibility(0);
            this.f8785return = true;
        } else {
            this.f8777final.setVisibility(8);
            this.f8785return = false;
        }
        if (this.f8792try) {
            this.f8787super.setVisibility(0);
            this.f8786static = true;
        } else {
            this.f8787super.setVisibility(8);
            this.f8786static = false;
        }
        this.f8769break.setText(String.format(getString(R.string.indicator), (this.f8778for + 1) + "", "" + this.f8780if.size()));
        ImagePreviewAdapter imagePreviewAdapter = new ImagePreviewAdapter(this, this.f8780if);
        this.f8779goto = imagePreviewAdapter;
        this.f8789this.setAdapter(imagePreviewAdapter);
        this.f8789this.setCurrentItem(this.f8778for);
        this.f8789this.addOnPageChangeListener(new Cdo());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        cc.shinichi.library.Cdo.m10382break().m10389default();
        ImagePreviewAdapter imagePreviewAdapter = this.f8779goto;
        if (imagePreviewAdapter != null) {
            imagePreviewAdapter.m10536new();
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity, androidx.core.app.ActivityCompat.OnRequestPermissionsResultCallback
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        if (i == 1) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (iArr[i2] == 0) {
                    m10514native();
                } else {
                    cc.shinichi.library.tool.ui.Cdo.m10499for().m10501if(this.f8775do, "您拒绝了存储权限，下载失败！");
                }
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    public void m10526switch(float f) {
        this.f8790throw.setBackgroundColor(m10525import(f));
        if (f < 1.0f) {
            this.f8769break.setVisibility(8);
            this.f8771catch.setVisibility(8);
            this.f8777final.setVisibility(8);
            this.f8787super.setVisibility(8);
            return;
        }
        if (this.f8782native) {
            this.f8769break.setVisibility(0);
        }
        if (this.f8784public) {
            this.f8771catch.setVisibility(0);
        }
        if (this.f8785return) {
            this.f8777final.setVisibility(0);
        }
        if (this.f8786static) {
            this.f8787super.setVisibility(0);
        }
    }
}
