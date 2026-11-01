package com.yalantis.ucrop;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.jt;
import android.support.v4.nw1;
import android.support.v4.rd1;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.callback.BitmapCropCallback;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import java.io.File;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class PictureMultiCuttingActivity extends AppCompatActivity {
    public static final Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
    public static final int b = 0;
    public static final int c = 1;
    public static final int d = 2;
    public static final int e = 3;
    private static final String f = "UCropActivity";
    private static final int g = 3;
    private static final int h = 15000;
    private static final int i = 42;

    /* renamed from: synchronized, reason: not valid java name */
    public static final int f22863synchronized = 90;

    /* renamed from: break, reason: not valid java name */
    @DrawableRes
    private int f22865break;

    /* renamed from: case, reason: not valid java name */
    private int f22866case;

    /* renamed from: catch, reason: not valid java name */
    @DrawableRes
    private int f22867catch;

    /* renamed from: class, reason: not valid java name */
    private int f22868class;

    /* renamed from: const, reason: not valid java name */
    private boolean f22869const;

    /* renamed from: do, reason: not valid java name */
    private RecyclerView f22872do;

    /* renamed from: else, reason: not valid java name */
    private int f22873else;

    /* renamed from: extends, reason: not valid java name */
    private TextView f22874extends;

    /* renamed from: finally, reason: not valid java name */
    private TextView f22876finally;

    /* renamed from: for, reason: not valid java name */
    private String f22877for;

    /* renamed from: goto, reason: not valid java name */
    private int f22878goto;

    /* renamed from: if, reason: not valid java name */
    private PicturePhotoGalleryAdapter f22879if;

    /* renamed from: import, reason: not valid java name */
    private OverlayView f22881import;

    /* renamed from: interface, reason: not valid java name */
    private boolean f22883interface;

    /* renamed from: native, reason: not valid java name */
    private ViewGroup f22884native;

    /* renamed from: new, reason: not valid java name */
    private ArrayList<String> f22885new;

    /* renamed from: package, reason: not valid java name */
    private View f22886package;

    /* renamed from: protected, reason: not valid java name */
    private boolean f22888protected;

    /* renamed from: public, reason: not valid java name */
    private ViewGroup f22889public;

    /* renamed from: return, reason: not valid java name */
    private ViewGroup f22890return;

    /* renamed from: static, reason: not valid java name */
    private ViewGroup f22891static;

    /* renamed from: super, reason: not valid java name */
    private boolean f22893super;

    /* renamed from: switch, reason: not valid java name */
    private ViewGroup f22894switch;

    /* renamed from: this, reason: not valid java name */
    @ColorInt
    private int f22895this;

    /* renamed from: throw, reason: not valid java name */
    private UCropView f22896throw;

    /* renamed from: throws, reason: not valid java name */
    private ViewGroup f22897throws;

    /* renamed from: transient, reason: not valid java name */
    private int f22898transient;

    /* renamed from: try, reason: not valid java name */
    private int f22899try;

    /* renamed from: volatile, reason: not valid java name */
    private boolean f22900volatile;

    /* renamed from: while, reason: not valid java name */
    private GestureCropImageView f22901while;

    /* renamed from: final, reason: not valid java name */
    private boolean f22875final = true;

    /* renamed from: default, reason: not valid java name */
    private List<ViewGroup> f22871default = new ArrayList();

    /* renamed from: private, reason: not valid java name */
    private Bitmap.CompressFormat f22887private = a;

    /* renamed from: abstract, reason: not valid java name */
    private int f22864abstract = 90;

    /* renamed from: continue, reason: not valid java name */
    private int[] f22870continue = {1, 2, 3};

    /* renamed from: strictfp, reason: not valid java name */
    private List<jt> f22892strictfp = new ArrayList();

    /* renamed from: implements, reason: not valid java name */
    private TransformImageView.TransformImageListener f22880implements = new Cdo();

    /* renamed from: instanceof, reason: not valid java name */
    private final View.OnClickListener f22882instanceof = new Celse();

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$case, reason: invalid class name */
    public class Ccase implements HorizontalProgressWheelView.ScrollingListener {
        public Ccase() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScroll(float f, float f2) {
            if (f > 0.0f) {
                PictureMultiCuttingActivity.this.f22901while.m27516package(PictureMultiCuttingActivity.this.f22901while.getCurrentScale() + (f * ((PictureMultiCuttingActivity.this.f22901while.getMaxScale() - PictureMultiCuttingActivity.this.f22901while.getMinScale()) / 15000.0f)));
            } else {
                PictureMultiCuttingActivity.this.f22901while.m27509abstract(PictureMultiCuttingActivity.this.f22901while.getCurrentScale() + (f * ((PictureMultiCuttingActivity.this.f22901while.getMaxScale() - PictureMultiCuttingActivity.this.f22901while.getMinScale()) / 15000.0f)));
            }
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollEnd() {
            PictureMultiCuttingActivity.this.f22901while.m27512default();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollStart() {
            PictureMultiCuttingActivity.this.f22901while.m27515native();
        }
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$do, reason: invalid class name */
    public class Cdo implements TransformImageView.TransformImageListener {
        public Cdo() {
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onLoadComplete() {
            PictureMultiCuttingActivity.this.f22896throw.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            PictureMultiCuttingActivity.this.f22886package.setClickable(false);
            PictureMultiCuttingActivity.this.f22875final = false;
            PictureMultiCuttingActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onLoadFailure(@NonNull Exception exc) {
            PictureMultiCuttingActivity.this.m27324default(exc);
            PictureMultiCuttingActivity.this.m27322class();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onRotate(float f) {
            PictureMultiCuttingActivity.this.m27312static(f);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onScale(float f) {
            PictureMultiCuttingActivity.this.m27300finally(f);
        }
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            PictureMultiCuttingActivity.this.m27308private(view.getId());
        }
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$for, reason: invalid class name */
    public class Cfor implements HorizontalProgressWheelView.ScrollingListener {
        public Cfor() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScroll(float f, float f2) {
            PictureMultiCuttingActivity.this.f22901while.m27521switch(f / 42.0f);
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollEnd() {
            PictureMultiCuttingActivity.this.f22901while.m27512default();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollStart() {
            PictureMultiCuttingActivity.this.f22901while.m27515native();
        }
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$goto, reason: invalid class name */
    public class Cgoto implements BitmapCropCallback {
        public Cgoto() {
        }

        @Override // com.yalantis.ucrop.callback.BitmapCropCallback
        public void onBitmapCropped(@NonNull Uri uri, int i, int i2, int i3, int i4) {
            PictureMultiCuttingActivity pictureMultiCuttingActivity = PictureMultiCuttingActivity.this;
            pictureMultiCuttingActivity.m27325extends(uri, pictureMultiCuttingActivity.f22901while.getTargetAspectRatio(), i, i2, i3, i4);
        }

        @Override // com.yalantis.ucrop.callback.BitmapCropCallback
        public void onCropFailure(@NonNull Throwable th) {
            PictureMultiCuttingActivity.this.m27324default(th);
            PictureMultiCuttingActivity.this.m27322class();
        }
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PictureMultiCuttingActivity.this.f22901while.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).m27558if(view.isSelected()));
            PictureMultiCuttingActivity.this.f22901while.m27512default();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : PictureMultiCuttingActivity.this.f22871default) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PictureMultiCuttingActivity.this.m27305native();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$this, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cthis {
    }

    /* renamed from: com.yalantis.ucrop.PictureMultiCuttingActivity$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            PictureMultiCuttingActivity.this.m27310public(90);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m27292abstract() {
        m27307package(this.f22866case);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(this.f22899try);
        toolbar.setTitleTextColor(this.f22878goto);
        TextView textView = (TextView) toolbar.findViewById(R.id.toolbar_title);
        textView.setTextColor(this.f22878goto);
        textView.setText(this.f22877for);
        Drawable drawableMutate = ContextCompat.getDrawable(this, this.f22865break).mutate();
        drawableMutate.setColorFilter(this.f22878goto, PorterDuff.Mode.SRC_ATOP);
        toolbar.setNavigationIcon(drawableMutate);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private void m27295catch() {
        if (this.f22886package == null) {
            this.f22886package = new View(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(3, R.id.toolbar);
            this.f22886package.setLayoutParams(layoutParams);
            this.f22886package.setClickable(true);
        }
        ((RelativeLayout) findViewById(R.id.ucrop_mulit_photobox)).addView(this.f22886package);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m27296continue(@NonNull Intent intent) {
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (parcelableArrayListExtra == null || parcelableArrayListExtra.isEmpty()) {
            intExtra = 2;
            parcelableArrayListExtra = new ArrayList();
            parcelableArrayListExtra.add(new AspectRatio(null, 1.0f, 1.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 4.0f));
            parcelableArrayListExtra.add(new AspectRatio(getString(R.string.ucrop_label_original).toUpperCase(), 0.0f, 0.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 3.0f, 2.0f));
            parcelableArrayListExtra.add(new AspectRatio(null, 16.0f, 9.0f));
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.layout_aspect_ratio);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -1);
        layoutParams.weight = 1.0f;
        Iterator it = parcelableArrayListExtra.iterator();
        while (it.hasNext()) {
            AspectRatio aspectRatio = (AspectRatio) it.next();
            FrameLayout frameLayout = (FrameLayout) getLayoutInflater().inflate(R.layout.ucrop_aspect_ratio, (ViewGroup) null);
            frameLayout.setLayoutParams(layoutParams);
            AspectRatioTextView aspectRatioTextView = (AspectRatioTextView) frameLayout.getChildAt(0);
            aspectRatioTextView.setActiveColor(this.f22873else);
            aspectRatioTextView.setAspectRatio(aspectRatio);
            linearLayout.addView(frameLayout);
            this.f22871default.add(frameLayout);
        }
        this.f22871default.get(intExtra).setSelected(true);
        Iterator<ViewGroup> it2 = this.f22871default.iterator();
        while (it2.hasNext()) {
            it2.next().setOnClickListener(new Cif());
        }
    }

    /* renamed from: final, reason: not valid java name */
    public static String m27299final(String str) {
        String strSubstring;
        try {
            int iLastIndexOf = str.lastIndexOf(".");
            if (iLastIndexOf > 0) {
                strSubstring = str.substring(iLastIndexOf, str.length());
                switch (strSubstring) {
                    case ".png":
                    case ".PNG":
                    case ".jpg":
                    case ".jpeg":
                    case ".JPEG":
                    case ".WEBP":
                    case ".bmp":
                    case ".BMP":
                    case ".webp":
                        return strSubstring;
                }
            }
            return rd1.f5753if;
        } catch (Exception e2) {
            e2.printStackTrace();
            return rd1.f5753if;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finally, reason: not valid java name */
    public void m27300finally(float f2) {
        TextView textView = this.f22876finally;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f2 * 100.0f))));
        }
    }

    /* renamed from: interface, reason: not valid java name */
    private void m27304interface() {
        ImageView imageView = (ImageView) findViewById(R.id.image_view_state_scale);
        ImageView imageView2 = (ImageView) findViewById(R.id.image_view_state_rotate);
        ImageView imageView3 = (ImageView) findViewById(R.id.image_view_state_aspect_ratio);
        imageView.setImageDrawable(new nw1(imageView.getDrawable(), this.f22873else));
        imageView2.setImageDrawable(new nw1(imageView2.getDrawable(), this.f22873else));
        imageView3.setImageDrawable(new nw1(imageView3.getDrawable(), this.f22873else));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public void m27305native() {
        GestureCropImageView gestureCropImageView = this.f22901while;
        gestureCropImageView.m27521switch(-gestureCropImageView.getCurrentAngle());
        this.f22901while.m27512default();
    }

    @TargetApi(21)
    /* renamed from: package, reason: not valid java name */
    private void m27307package(@ColorInt int i2) {
        Window window;
        if (Build.VERSION.SDK_INT < 21 || (window = getWindow()) == null) {
            return;
        }
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: private, reason: not valid java name */
    public void m27308private(@IdRes int i2) {
        if (this.f22869const) {
            ViewGroup viewGroup = this.f22884native;
            int i3 = R.id.state_aspect_ratio;
            viewGroup.setSelected(i2 == i3);
            ViewGroup viewGroup2 = this.f22889public;
            int i4 = R.id.state_rotate;
            viewGroup2.setSelected(i2 == i4);
            ViewGroup viewGroup3 = this.f22890return;
            int i5 = R.id.state_scale;
            viewGroup3.setSelected(i2 == i5);
            this.f22891static.setVisibility(i2 == i3 ? 0 : 8);
            this.f22894switch.setVisibility(i2 == i4 ? 0 : 8);
            this.f22897throws.setVisibility(i2 == i5 ? 0 : 8);
            if (i2 == i5) {
                m27311return(0);
            } else if (i2 == i4) {
                m27311return(1);
            } else {
                m27311return(2);
            }
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private void m27309protected(@NonNull Intent intent) throws Resources.NotFoundException {
        this.f22883interface = intent.getBooleanExtra("com.yalantis.ucrop.scale", false);
        this.f22888protected = intent.getBooleanExtra("com.yalantis.ucrop.rotate", false);
        int i2 = R.color.ucrop_color_statusbar;
        this.f22866case = intent.getIntExtra("com.yalantis.ucrop.StatusBarColor", ContextCompat.getColor(this, i2));
        int i3 = R.color.ucrop_color_toolbar;
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.ToolbarColor", ContextCompat.getColor(this, i3));
        this.f22899try = intExtra;
        if (intExtra == -1) {
            this.f22899try = ContextCompat.getColor(this, i3);
        }
        if (this.f22866case == -1) {
            this.f22866case = ContextCompat.getColor(this, i2);
        }
        this.f22873else = intent.getIntExtra("com.yalantis.ucrop.UcropColorWidgetActive", ContextCompat.getColor(this, R.color.ucrop_color_widget_active));
        int i4 = R.color.ucrop_color_toolbar_widget;
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarWidgetColor", ContextCompat.getColor(this, i4));
        this.f22878goto = intExtra2;
        if (intExtra2 == -1) {
            this.f22878goto = ContextCompat.getColor(this, i4);
        }
        this.f22865break = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCancelDrawable", R.drawable.ucrop_ic_cross);
        this.f22867catch = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCropDrawable", R.drawable.ucrop_ic_done);
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.UcropToolbarTitleText");
        this.f22877for = stringExtra;
        if (stringExtra == null) {
            stringExtra = getResources().getString(R.string.ucrop_label_edit_photo);
        }
        this.f22877for = stringExtra;
        this.f22868class = intent.getIntExtra("com.yalantis.ucrop.UcropLogoColor", ContextCompat.getColor(this, R.color.ucrop_color_default_logo));
        this.f22869const = !intent.getBooleanExtra("com.yalantis.ucrop.HideBottomControls", false);
        this.f22895this = intent.getIntExtra("com.yalantis.ucrop.UcropRootViewBackgroundColor", ContextCompat.getColor(this, R.color.ucrop_color_crop_background));
        m27292abstract();
        m27317throw();
        if (this.f22869const) {
            View.inflate(this, R.layout.ucrop_controls, (ViewGroup) findViewById(R.id.ucrop_mulit_photobox));
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.state_aspect_ratio);
            this.f22884native = viewGroup;
            viewGroup.setOnClickListener(this.f22882instanceof);
            ViewGroup viewGroup2 = (ViewGroup) findViewById(R.id.state_rotate);
            this.f22889public = viewGroup2;
            viewGroup2.setOnClickListener(this.f22882instanceof);
            ViewGroup viewGroup3 = (ViewGroup) findViewById(R.id.state_scale);
            this.f22890return = viewGroup3;
            viewGroup3.setOnClickListener(this.f22882instanceof);
            this.f22891static = (ViewGroup) findViewById(R.id.layout_aspect_ratio);
            this.f22894switch = (ViewGroup) findViewById(R.id.layout_rotate_wheel);
            this.f22897throws = (ViewGroup) findViewById(R.id.layout_scale_wheel);
            m27296continue(intent);
            m27313strictfp();
            m27320volatile();
            m27304interface();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: public, reason: not valid java name */
    public void m27310public(int i2) {
        this.f22901while.m27521switch(i2);
        this.f22901while.m27512default();
    }

    /* renamed from: return, reason: not valid java name */
    private void m27311return(int i2) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: static, reason: not valid java name */
    public void m27312static(float f2) {
        TextView textView = this.f22874extends;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f2)));
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m27313strictfp() {
        this.f22874extends = (TextView) findViewById(R.id.text_view_rotate);
        int i2 = R.id.rotate_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i2)).setScrollingListener(new Cfor());
        ((HorizontalProgressWheelView) findViewById(i2)).setMiddleLineColor(this.f22873else);
        findViewById(R.id.wrapper_reset_rotate).setOnClickListener(new Cnew());
        findViewById(R.id.wrapper_rotate_by_angle).setOnClickListener(new Ctry());
    }

    /* renamed from: super, reason: not valid java name */
    private void m27314super() {
        this.f22872do = (RecyclerView) findViewById(R.id.recyclerView);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        this.f22872do.setLayoutManager(linearLayoutManager);
        Iterator<jt> it = this.f22892strictfp.iterator();
        while (it.hasNext()) {
            it.next().setCut(false);
        }
        this.f22892strictfp.get(this.f22898transient).setCut(true);
        PicturePhotoGalleryAdapter picturePhotoGalleryAdapter = new PicturePhotoGalleryAdapter(this, this.f22892strictfp);
        this.f22879if = picturePhotoGalleryAdapter;
        this.f22872do.setAdapter(picturePhotoGalleryAdapter);
    }

    /* renamed from: switch, reason: not valid java name */
    private void m27315switch(@NonNull Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.InputUri");
        Uri uri2 = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
        m27321while(intent);
        if (uri == null || uri2 == null) {
            m27324default(new NullPointerException(getString(R.string.ucrop_error_input_data_is_absent)));
            m27322class();
            return;
        }
        try {
            if (com.yalantis.ucrop.util.Cdo.m27502this(uri.getPath())) {
                this.f22901while.setRotateEnabled(false);
                this.f22901while.setScaleEnabled(false);
            } else {
                this.f22901while.setRotateEnabled(this.f22888protected);
                this.f22901while.setScaleEnabled(this.f22883interface);
            }
            this.f22901while.m27548const(uri, uri2);
        } catch (Exception e2) {
            m27324default(e2);
            m27322class();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private void m27317throw() {
        UCropView uCropView = (UCropView) findViewById(R.id.ucrop);
        this.f22896throw = uCropView;
        this.f22901while = uCropView.getCropImageView();
        this.f22881import = this.f22896throw.getOverlayView();
        this.f22901while.setTransformImageListener(this.f22880implements);
    }

    /* renamed from: throws, reason: not valid java name */
    private void m27318throws() {
        if (!this.f22869const) {
            m27311return(0);
        } else if (this.f22884native.getVisibility() == 0) {
            m27308private(R.id.state_aspect_ratio);
        } else {
            m27308private(R.id.state_scale);
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m27320volatile() {
        this.f22876finally = (TextView) findViewById(R.id.text_view_scale);
        int i2 = R.id.scale_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i2)).setScrollingListener(new Ccase());
        ((HorizontalProgressWheelView) findViewById(i2)).setMiddleLineColor(this.f22873else);
    }

    /* renamed from: while, reason: not valid java name */
    private void m27321while(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.CompressionFormatName");
        Bitmap.CompressFormat compressFormatValueOf = !TextUtils.isEmpty(stringExtra) ? Bitmap.CompressFormat.valueOf(stringExtra) : null;
        if (compressFormatValueOf == null) {
            compressFormatValueOf = a;
        }
        this.f22887private = compressFormatValueOf;
        this.f22864abstract = intent.getIntExtra("com.yalantis.ucrop.CompressionQuality", 90);
        int[] intArrayExtra = intent.getIntArrayExtra("com.yalantis.ucrop.AllowedGestures");
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.f22870continue = intArrayExtra;
        }
        this.f22901while.setMaxBitmapSize(intent.getIntExtra("com.yalantis.ucrop.MaxBitmapSize", 0));
        this.f22901while.setMaxScaleMultiplier(intent.getFloatExtra("com.yalantis.ucrop.MaxScaleMultiplier", 10.0f));
        this.f22901while.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", 500));
        this.f22881import.setDragFrame(this.f22900volatile);
        this.f22881import.setFreestyleCropEnabled(intent.getBooleanExtra("com.yalantis.ucrop.FreeStyleCrop", false));
        this.f22893super = intent.getBooleanExtra("com.yalantis.ucrop.CircleDimmedLayer", false);
        this.f22881import.setDimmedColor(intent.getIntExtra("com.yalantis.ucrop.DimmedLayerColor", getResources().getColor(R.color.ucrop_color_default_dimmed)));
        this.f22881import.setCircleDimmedLayer(this.f22893super);
        this.f22881import.setShowCropFrame(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropFrame", true));
        this.f22881import.setCropFrameColor(intent.getIntExtra("com.yalantis.ucrop.CropFrameColor", getResources().getColor(R.color.ucrop_color_default_crop_frame)));
        this.f22881import.setCropFrameStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropFrameStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width)));
        this.f22881import.setShowCropGrid(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropGrid", true));
        this.f22881import.setCropGridRowCount(intent.getIntExtra("com.yalantis.ucrop.CropGridRowCount", 2));
        this.f22881import.setCropGridColumnCount(intent.getIntExtra("com.yalantis.ucrop.CropGridColumnCount", 2));
        this.f22881import.setCropGridColor(intent.getIntExtra("com.yalantis.ucrop.CropGridColor", getResources().getColor(R.color.ucrop_color_default_crop_grid)));
        this.f22881import.setCropGridStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropGridStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width)));
        float floatExtra = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioX", 0.0f);
        float floatExtra2 = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioY", 0.0f);
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (floatExtra > 0.0f && floatExtra2 > 0.0f) {
            ViewGroup viewGroup = this.f22884native;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            this.f22901while.setTargetAspectRatio(floatExtra / floatExtra2);
        } else if (parcelableArrayListExtra == null || intExtra >= parcelableArrayListExtra.size()) {
            this.f22901while.setTargetAspectRatio(0.0f);
        } else {
            this.f22901while.setTargetAspectRatio(((AspectRatio) parcelableArrayListExtra.get(intExtra)).m27472if() / ((AspectRatio) parcelableArrayListExtra.get(intExtra)).m27471for());
        }
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeX", 0);
        int intExtra3 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeY", 0);
        if (intExtra2 <= 0 || intExtra3 <= 0) {
            return;
        }
        this.f22901while.setMaxResultImageSizeX(intExtra2);
        this.f22901while.setMaxResultImageSizeY(intExtra3);
    }

    /* renamed from: class, reason: not valid java name */
    public void m27322class() {
        finish();
        overridePendingTransition(0, R.anim.ucrop_close);
    }

    /* renamed from: const, reason: not valid java name */
    public void m27323const() {
        this.f22886package.setClickable(true);
        this.f22875final = true;
        supportInvalidateOptionsMenu();
        this.f22901while.m27518public(this.f22887private, this.f22864abstract, new Cgoto());
    }

    /* renamed from: default, reason: not valid java name */
    public void m27324default(Throwable th) {
        setResult(96, new Intent().putExtra("com.yalantis.ucrop.Error", th));
    }

    /* renamed from: extends, reason: not valid java name */
    public void m27325extends(Uri uri, float f2, int i2, int i3, int i4, int i5) {
        try {
            jt jtVar = this.f22892strictfp.get(this.f22898transient);
            jtVar.setCutPath(uri.getPath());
            jtVar.setCut(true);
            jtVar.setResultAspectRatio(f2);
            jtVar.setOffsetX(i2);
            jtVar.setOffsetY(i3);
            jtVar.setImageWidth(i4);
            jtVar.setImageHeight(i5);
            int i6 = this.f22898transient + 1;
            this.f22898transient = i6;
            if (i6 >= this.f22892strictfp.size()) {
                setResult(-1, new Intent().putExtra(com.yalantis.ucrop.Cif.f23022goto, (Serializable) this.f22892strictfp));
                m27322class();
            } else {
                m27326import();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public void m27326import() throws Resources.NotFoundException {
        setContentView(R.layout.ucrop_picture_activity_multi_cutting);
        Intent intent = new Intent();
        Bundle extras = getIntent().getExtras();
        String path = this.f22892strictfp.get(this.f22898transient).getPath();
        boolean zM27493catch = com.yalantis.ucrop.util.Cdo.m27493catch(path);
        String strM27299final = m27299final(path);
        extras.putParcelable("com.yalantis.ucrop.InputUri", (zM27493catch || (Build.VERSION.SDK_INT >= 29)) ? Uri.parse(path) : Uri.fromFile(new File(path)));
        extras.putParcelable("com.yalantis.ucrop.OutputUri", Uri.fromFile(new File(Environment.getExternalStorageState().equals("mounted") ? getExternalFilesDir(Environment.DIRECTORY_PICTURES) : getCacheDir(), System.currentTimeMillis() + strM27299final)));
        intent.putExtras(extras);
        m27309protected(intent);
        m27318throws();
        ((RelativeLayout) findViewById(R.id.ucrop_mulit_photobox)).removeView(this.f22886package);
        this.f22886package = null;
        m27295catch();
        m27315switch(intent);
        m27314super();
        int i2 = this.f22898transient;
        if (i2 >= 5) {
            this.f22872do.scrollToPosition(i2);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        setContentView(R.layout.ucrop_picture_activity_multi_cutting);
        Intent intent = getIntent();
        ArrayList<String> stringArrayListExtra = getIntent().getStringArrayListExtra("com.yalantis.ucrop.cuts");
        this.f22885new = stringArrayListExtra;
        if (stringArrayListExtra != null && stringArrayListExtra.size() > 0) {
            Iterator<String> it = this.f22885new.iterator();
            while (it.hasNext()) {
                this.f22892strictfp.add(new jt(it.next(), false));
            }
            m27314super();
        }
        m27309protected(intent);
        m27318throws();
        m27295catch();
        m27315switch(intent);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.ucrop_menu_activity, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_loader);
        Drawable icon = menuItemFindItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f22878goto, PorterDuff.Mode.SRC_ATOP);
                menuItemFindItem.setIcon(icon);
            } catch (IllegalStateException e2) {
                String.format("%s - %s", e2.getMessage(), getString(R.string.ucrop_mutate_exception_hint));
            }
            ((Animatable) menuItemFindItem.getIcon()).start();
        }
        MenuItem menuItemFindItem2 = menu.findItem(R.id.menu_crop);
        Drawable drawable = ContextCompat.getDrawable(this, this.f22867catch);
        if (drawable != null) {
            drawable.mutate();
            drawable.setColorFilter(this.f22878goto, PorterDuff.Mode.SRC_ATOP);
            menuItemFindItem2.setIcon(drawable);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_crop) {
            m27323const();
        } else if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_crop).setVisible(!this.f22875final);
        menu.findItem(R.id.menu_loader).setVisible(this.f22875final);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.f22901while;
        if (gestureCropImageView != null) {
            gestureCropImageView.m27515native();
        }
    }
}
