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
import android.support.v4.nw1;
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
import com.yalantis.ucrop.callback.BitmapCropCallback;
import com.yalantis.ucrop.model.AspectRatio;
import com.yalantis.ucrop.view.GestureCropImageView;
import com.yalantis.ucrop.view.OverlayView;
import com.yalantis.ucrop.view.TransformImageView;
import com.yalantis.ucrop.view.UCropView;
import com.yalantis.ucrop.view.widget.AspectRatioTextView;
import com.yalantis.ucrop.view.widget.HorizontalProgressWheelView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public class UCropActivity extends AppCompatActivity {
    private static final int a = 3;
    private static final int b = 15000;
    private static final int c = 42;

    /* renamed from: implements, reason: not valid java name */
    public static final int f22915implements = 2;

    /* renamed from: instanceof, reason: not valid java name */
    public static final int f22916instanceof = 3;

    /* renamed from: interface, reason: not valid java name */
    public static final Bitmap.CompressFormat f22917interface = Bitmap.CompressFormat.PNG;

    /* renamed from: protected, reason: not valid java name */
    public static final int f22918protected = 0;

    /* renamed from: synchronized, reason: not valid java name */
    private static final String f22919synchronized = "UCropActivity";

    /* renamed from: transient, reason: not valid java name */
    public static final int f22920transient = 1;

    /* renamed from: volatile, reason: not valid java name */
    public static final int f22921volatile = 100;

    /* renamed from: abstract, reason: not valid java name */
    private boolean f22922abstract;

    /* renamed from: break, reason: not valid java name */
    private boolean f22923break;

    /* renamed from: case, reason: not valid java name */
    @ColorInt
    private int f22924case;

    /* renamed from: class, reason: not valid java name */
    private UCropView f22926class;

    /* renamed from: const, reason: not valid java name */
    private GestureCropImageView f22927const;

    /* renamed from: do, reason: not valid java name */
    private String f22930do;

    /* renamed from: else, reason: not valid java name */
    @DrawableRes
    private int f22931else;

    /* renamed from: final, reason: not valid java name */
    private OverlayView f22933final;

    /* renamed from: for, reason: not valid java name */
    private int f22935for;

    /* renamed from: goto, reason: not valid java name */
    @DrawableRes
    private int f22936goto;

    /* renamed from: if, reason: not valid java name */
    private int f22937if;

    /* renamed from: import, reason: not valid java name */
    private ViewGroup f22938import;

    /* renamed from: native, reason: not valid java name */
    private ViewGroup f22939native;

    /* renamed from: new, reason: not valid java name */
    private int f22940new;

    /* renamed from: package, reason: not valid java name */
    private boolean f22941package;

    /* renamed from: private, reason: not valid java name */
    private boolean f22942private;

    /* renamed from: public, reason: not valid java name */
    private ViewGroup f22943public;

    /* renamed from: static, reason: not valid java name */
    private TextView f22945static;

    /* renamed from: super, reason: not valid java name */
    private ViewGroup f22947super;

    /* renamed from: switch, reason: not valid java name */
    private TextView f22948switch;

    /* renamed from: this, reason: not valid java name */
    private int f22949this;

    /* renamed from: throw, reason: not valid java name */
    private ViewGroup f22950throw;

    /* renamed from: throws, reason: not valid java name */
    private View f22951throws;

    /* renamed from: try, reason: not valid java name */
    private int f22952try;

    /* renamed from: while, reason: not valid java name */
    private ViewGroup f22953while;

    /* renamed from: catch, reason: not valid java name */
    private boolean f22925catch = true;

    /* renamed from: return, reason: not valid java name */
    private List<ViewGroup> f22944return = new ArrayList();

    /* renamed from: default, reason: not valid java name */
    private Bitmap.CompressFormat f22929default = f22917interface;

    /* renamed from: extends, reason: not valid java name */
    private int f22932extends = 100;

    /* renamed from: finally, reason: not valid java name */
    private int[] f22934finally = {1, 2, 3};

    /* renamed from: continue, reason: not valid java name */
    private TransformImageView.TransformImageListener f22928continue = new Cdo();

    /* renamed from: strictfp, reason: not valid java name */
    private final View.OnClickListener f22946strictfp = new Celse();

    /* renamed from: com.yalantis.ucrop.UCropActivity$case, reason: invalid class name */
    public class Ccase implements HorizontalProgressWheelView.ScrollingListener {
        public Ccase() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScroll(float f, float f2) {
            if (f > 0.0f) {
                UCropActivity.this.f22927const.m27516package(UCropActivity.this.f22927const.getCurrentScale() + (f * ((UCropActivity.this.f22927const.getMaxScale() - UCropActivity.this.f22927const.getMinScale()) / 15000.0f)));
            } else {
                UCropActivity.this.f22927const.m27509abstract(UCropActivity.this.f22927const.getCurrentScale() + (f * ((UCropActivity.this.f22927const.getMaxScale() - UCropActivity.this.f22927const.getMinScale()) / 15000.0f)));
            }
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollEnd() {
            UCropActivity.this.f22927const.m27512default();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollStart() {
            UCropActivity.this.f22927const.m27515native();
        }
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$do, reason: invalid class name */
    public class Cdo implements TransformImageView.TransformImageListener {
        public Cdo() {
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onLoadComplete() {
            UCropActivity.this.f22926class.animate().alpha(1.0f).setDuration(300L).setInterpolator(new AccelerateInterpolator());
            UCropActivity.this.f22951throws.setClickable(false);
            UCropActivity.this.f22925catch = false;
            UCropActivity.this.supportInvalidateOptionsMenu();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onLoadFailure(@NonNull Exception exc) {
            UCropActivity.this.m27360static(exc);
            UCropActivity.this.m27358class();
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onRotate(float f) {
            UCropActivity.this.m27345native(f);
        }

        @Override // com.yalantis.ucrop.view.TransformImageView.TransformImageListener
        public void onScale(float f) {
            UCropActivity.this.m27355throws(f);
        }
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$else, reason: invalid class name */
    public class Celse implements View.OnClickListener {
        public Celse() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view.isSelected()) {
                return;
            }
            UCropActivity.this.m27338extends(view.getId());
        }
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$for, reason: invalid class name */
    public class Cfor implements HorizontalProgressWheelView.ScrollingListener {
        public Cfor() {
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScroll(float f, float f2) {
            UCropActivity.this.f22927const.m27521switch(f / 42.0f);
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollEnd() {
            UCropActivity.this.f22927const.m27512default();
        }

        @Override // com.yalantis.ucrop.view.widget.HorizontalProgressWheelView.ScrollingListener
        public void onScrollStart() {
            UCropActivity.this.f22927const.m27515native();
        }
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$goto, reason: invalid class name */
    public class Cgoto implements BitmapCropCallback {
        public Cgoto() {
        }

        @Override // com.yalantis.ucrop.callback.BitmapCropCallback
        public void onBitmapCropped(@NonNull Uri uri, int i, int i2, int i3, int i4) {
            UCropActivity uCropActivity = UCropActivity.this;
            uCropActivity.m27361switch(uri, uCropActivity.f22927const.getTargetAspectRatio(), i, i2, i3, i4);
        }

        @Override // com.yalantis.ucrop.callback.BitmapCropCallback
        public void onCropFailure(@NonNull Throwable th) {
            UCropActivity.this.m27360static(th);
            UCropActivity.this.m27358class();
        }
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$if, reason: invalid class name */
    public class Cif implements View.OnClickListener {
        public Cif() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.f22927const.setTargetAspectRatio(((AspectRatioTextView) ((ViewGroup) view).getChildAt(0)).m27558if(view.isSelected()));
            UCropActivity.this.f22927const.m27512default();
            if (view.isSelected()) {
                return;
            }
            for (ViewGroup viewGroup : UCropActivity.this.f22944return) {
                viewGroup.setSelected(viewGroup == view);
            }
        }
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$new, reason: invalid class name */
    public class Cnew implements View.OnClickListener {
        public Cnew() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.m27354throw();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: com.yalantis.ucrop.UCropActivity$this, reason: invalid class name */
    /* loaded from: classes.dex */
    public @interface Cthis {
    }

    /* renamed from: com.yalantis.ucrop.UCropActivity$try, reason: invalid class name */
    public class Ctry implements View.OnClickListener {
        public Ctry() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UCropActivity.this.m27357while(90);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    private void m27330abstract() {
        this.f22948switch = (TextView) findViewById(R.id.text_view_scale);
        int i = R.id.scale_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i)).setScrollingListener(new Ccase());
        ((HorizontalProgressWheelView) findViewById(i)).setMiddleLineColor(this.f22940new);
    }

    /* renamed from: catch, reason: not valid java name */
    private void m27333catch() {
        if (this.f22951throws == null) {
            this.f22951throws = new View(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(3, R.id.toolbar);
            this.f22951throws.setLayoutParams(layoutParams);
            this.f22951throws.setClickable(true);
        }
        ((RelativeLayout) findViewById(R.id.ucrop_photobox)).addView(this.f22951throws);
    }

    /* renamed from: continue, reason: not valid java name */
    private void m27334continue() {
        ImageView imageView = (ImageView) findViewById(R.id.image_view_state_scale);
        ImageView imageView2 = (ImageView) findViewById(R.id.image_view_state_rotate);
        ImageView imageView3 = (ImageView) findViewById(R.id.image_view_state_aspect_ratio);
        imageView.setImageDrawable(new nw1(imageView.getDrawable(), this.f22940new));
        imageView2.setImageDrawable(new nw1(imageView2.getDrawable(), this.f22940new));
        imageView3.setImageDrawable(new nw1(imageView3.getDrawable(), this.f22940new));
    }

    @TargetApi(21)
    /* renamed from: default, reason: not valid java name */
    private void m27335default(@ColorInt int i) {
        Window window;
        if (Build.VERSION.SDK_INT < 21 || (window = getWindow()) == null) {
            return;
        }
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: extends, reason: not valid java name */
    public void m27338extends(@IdRes int i) {
        if (this.f22923break) {
            ViewGroup viewGroup = this.f22947super;
            int i2 = R.id.state_aspect_ratio;
            viewGroup.setSelected(i == i2);
            ViewGroup viewGroup2 = this.f22950throw;
            int i3 = R.id.state_rotate;
            viewGroup2.setSelected(i == i3);
            ViewGroup viewGroup3 = this.f22953while;
            int i4 = R.id.state_scale;
            viewGroup3.setSelected(i == i4);
            this.f22938import.setVisibility(i == i2 ? 0 : 8);
            this.f22939native.setVisibility(i == i3 ? 0 : 8);
            this.f22943public.setVisibility(i == i4 ? 0 : 8);
            if (i == i4) {
                m27344import(0);
            } else if (i == i3) {
                m27344import(1);
            } else {
                m27344import(2);
            }
        }
    }

    /* renamed from: final, reason: not valid java name */
    private void m27339final() {
        UCropView uCropView = (UCropView) findViewById(R.id.ucrop);
        this.f22926class = uCropView;
        this.f22927const = uCropView.getCropImageView();
        this.f22933final = this.f22926class.getOverlayView();
        this.f22927const.setTransformImageListener(this.f22928continue);
    }

    /* renamed from: finally, reason: not valid java name */
    private void m27340finally() {
        m27335default(this.f22935for);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundColor(this.f22937if);
        toolbar.setTitleTextColor(this.f22952try);
        TextView textView = (TextView) toolbar.findViewById(R.id.toolbar_title);
        textView.setTextColor(this.f22952try);
        textView.setText(this.f22930do);
        Drawable drawableMutate = ContextCompat.getDrawable(this, this.f22931else).mutate();
        drawableMutate.setColorFilter(this.f22952try, PorterDuff.Mode.SRC_ATOP);
        toolbar.setNavigationIcon(drawableMutate);
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(false);
        }
    }

    /* renamed from: import, reason: not valid java name */
    private void m27344import(int i) {
        if (this.f22923break) {
            GestureCropImageView gestureCropImageView = this.f22927const;
            int[] iArr = this.f22934finally;
            gestureCropImageView.setScaleEnabled(iArr[i] == 3 || iArr[i] == 1);
            GestureCropImageView gestureCropImageView2 = this.f22927const;
            int[] iArr2 = this.f22934finally;
            gestureCropImageView2.setRotateEnabled(iArr2[i] == 3 || iArr2[i] == 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: native, reason: not valid java name */
    public void m27345native(float f) {
        TextView textView = this.f22945static;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%.1f°", Float.valueOf(f)));
        }
    }

    /* renamed from: package, reason: not valid java name */
    private void m27347package(@NonNull Intent intent) {
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
            aspectRatioTextView.setActiveColor(this.f22940new);
            aspectRatioTextView.setAspectRatio(aspectRatio);
            linearLayout.addView(frameLayout);
            this.f22944return.add(frameLayout);
        }
        this.f22944return.get(intExtra).setSelected(true);
        Iterator<ViewGroup> it2 = this.f22944return.iterator();
        while (it2.hasNext()) {
            it2.next().setOnClickListener(new Cif());
        }
    }

    /* renamed from: private, reason: not valid java name */
    private void m27348private() {
        this.f22945static = (TextView) findViewById(R.id.text_view_rotate);
        int i = R.id.rotate_scroll_wheel;
        ((HorizontalProgressWheelView) findViewById(i)).setScrollingListener(new Cfor());
        ((HorizontalProgressWheelView) findViewById(i)).setMiddleLineColor(this.f22940new);
        findViewById(R.id.wrapper_reset_rotate).setOnClickListener(new Cnew());
        findViewById(R.id.wrapper_rotate_by_angle).setOnClickListener(new Ctry());
    }

    /* renamed from: public, reason: not valid java name */
    private void m27349public(@NonNull Intent intent) {
        Uri uri = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.InputUri");
        Uri uri2 = (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
        m27352super(intent);
        if (uri == null || uri2 == null) {
            m27360static(new NullPointerException(getString(R.string.ucrop_error_input_data_is_absent)));
            m27358class();
            return;
        }
        try {
            this.f22927const.setRotateEnabled(this.f22922abstract);
            this.f22927const.setScaleEnabled(this.f22942private);
            this.f22927const.m27548const(uri, uri2);
        } catch (Exception e) {
            m27360static(e);
            m27358class();
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m27350return() {
        if (!this.f22923break) {
            m27344import(0);
        } else if (this.f22947super.getVisibility() == 0) {
            m27338extends(R.id.state_aspect_ratio);
        } else {
            m27338extends(R.id.state_scale);
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    private void m27351strictfp(@NonNull Intent intent) throws Resources.NotFoundException {
        this.f22942private = intent.getBooleanExtra("com.yalantis.ucrop.scale", true);
        this.f22922abstract = intent.getBooleanExtra("com.yalantis.ucrop.rotate", true);
        this.f22941package = intent.getBooleanExtra("com.yalantis.ucrop.DragCropFrame", true);
        int i = R.color.ucrop_color_statusbar;
        this.f22935for = intent.getIntExtra("com.yalantis.ucrop.StatusBarColor", ContextCompat.getColor(this, i));
        int i2 = R.color.ucrop_color_toolbar;
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.ToolbarColor", ContextCompat.getColor(this, i2));
        this.f22937if = intExtra;
        if (intExtra == -1) {
            this.f22937if = ContextCompat.getColor(this, i2);
        }
        if (this.f22935for == -1) {
            this.f22935for = ContextCompat.getColor(this, i);
        }
        this.f22940new = intent.getIntExtra("com.yalantis.ucrop.UcropColorWidgetActive", ContextCompat.getColor(this, R.color.ucrop_color_widget_active));
        int i3 = R.color.ucrop_color_toolbar_widget;
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarWidgetColor", ContextCompat.getColor(this, i3));
        this.f22952try = intExtra2;
        if (intExtra2 == -1) {
            this.f22952try = ContextCompat.getColor(this, i3);
        }
        this.f22931else = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCancelDrawable", R.drawable.ucrop_ic_cross);
        this.f22936goto = intent.getIntExtra("com.yalantis.ucrop.UcropToolbarCropDrawable", R.drawable.ucrop_ic_done);
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.UcropToolbarTitleText");
        this.f22930do = stringExtra;
        if (stringExtra == null) {
            stringExtra = getResources().getString(R.string.ucrop_label_edit_photo);
        }
        this.f22930do = stringExtra;
        this.f22949this = intent.getIntExtra("com.yalantis.ucrop.UcropLogoColor", ContextCompat.getColor(this, R.color.ucrop_color_default_logo));
        this.f22923break = !intent.getBooleanExtra("com.yalantis.ucrop.HideBottomControls", false);
        this.f22924case = intent.getIntExtra("com.yalantis.ucrop.UcropRootViewBackgroundColor", ContextCompat.getColor(this, R.color.ucrop_color_crop_background));
        m27340finally();
        m27339final();
        if (this.f22923break) {
            View.inflate(this, R.layout.ucrop_controls, (ViewGroup) findViewById(R.id.ucrop_photobox));
            ViewGroup viewGroup = (ViewGroup) findViewById(R.id.state_aspect_ratio);
            this.f22947super = viewGroup;
            viewGroup.setOnClickListener(this.f22946strictfp);
            ViewGroup viewGroup2 = (ViewGroup) findViewById(R.id.state_rotate);
            this.f22950throw = viewGroup2;
            viewGroup2.setOnClickListener(this.f22946strictfp);
            ViewGroup viewGroup3 = (ViewGroup) findViewById(R.id.state_scale);
            this.f22953while = viewGroup3;
            viewGroup3.setOnClickListener(this.f22946strictfp);
            this.f22938import = (ViewGroup) findViewById(R.id.layout_aspect_ratio);
            this.f22939native = (ViewGroup) findViewById(R.id.layout_rotate_wheel);
            this.f22943public = (ViewGroup) findViewById(R.id.layout_scale_wheel);
            m27347package(intent);
            m27348private();
            m27330abstract();
            m27334continue();
        }
    }

    /* renamed from: super, reason: not valid java name */
    private void m27352super(@NonNull Intent intent) {
        String stringExtra = intent.getStringExtra("com.yalantis.ucrop.CompressionFormatName");
        Bitmap.CompressFormat compressFormatValueOf = !TextUtils.isEmpty(stringExtra) ? Bitmap.CompressFormat.valueOf(stringExtra) : null;
        if (compressFormatValueOf == null) {
            compressFormatValueOf = f22917interface;
        }
        this.f22929default = compressFormatValueOf;
        this.f22932extends = intent.getIntExtra("com.yalantis.ucrop.CompressionQuality", 100);
        int[] intArrayExtra = intent.getIntArrayExtra("com.yalantis.ucrop.AllowedGestures");
        if (intArrayExtra != null && intArrayExtra.length == 3) {
            this.f22934finally = intArrayExtra;
        }
        this.f22927const.setMaxBitmapSize(intent.getIntExtra("com.yalantis.ucrop.MaxBitmapSize", 0));
        this.f22927const.setMaxScaleMultiplier(intent.getFloatExtra("com.yalantis.ucrop.MaxScaleMultiplier", 10.0f));
        this.f22927const.setImageToWrapCropBoundsAnimDuration(intent.getIntExtra("com.yalantis.ucrop.ImageToCropBoundsAnimDuration", 500));
        this.f22933final.setFreestyleCropEnabled(intent.getBooleanExtra("com.yalantis.ucrop.FreeStyleCrop", false));
        this.f22933final.setDragFrame(this.f22941package);
        this.f22933final.setDimmedColor(intent.getIntExtra("com.yalantis.ucrop.DimmedLayerColor", getResources().getColor(R.color.ucrop_color_default_dimmed)));
        this.f22933final.setCircleDimmedLayer(intent.getBooleanExtra("com.yalantis.ucrop.CircleDimmedLayer", false));
        this.f22933final.setShowCropFrame(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropFrame", true));
        this.f22933final.setCropFrameColor(intent.getIntExtra("com.yalantis.ucrop.CropFrameColor", getResources().getColor(R.color.ucrop_color_default_crop_frame)));
        this.f22933final.setCropFrameStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropFrameStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_frame_stoke_width)));
        this.f22933final.setShowCropGrid(intent.getBooleanExtra("com.yalantis.ucrop.ShowCropGrid", true));
        this.f22933final.setCropGridRowCount(intent.getIntExtra("com.yalantis.ucrop.CropGridRowCount", 2));
        this.f22933final.setCropGridColumnCount(intent.getIntExtra("com.yalantis.ucrop.CropGridColumnCount", 2));
        this.f22933final.setCropGridColor(intent.getIntExtra("com.yalantis.ucrop.CropGridColor", getResources().getColor(R.color.ucrop_color_default_crop_grid)));
        this.f22933final.setCropGridStrokeWidth(intent.getIntExtra("com.yalantis.ucrop.CropGridStrokeWidth", getResources().getDimensionPixelSize(R.dimen.ucrop_default_crop_grid_stoke_width)));
        float floatExtra = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioX", 0.0f);
        float floatExtra2 = intent.getFloatExtra("com.yalantis.ucrop.AspectRatioY", 0.0f);
        int intExtra = intent.getIntExtra("com.yalantis.ucrop.AspectRatioSelectedByDefault", 0);
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra("com.yalantis.ucrop.AspectRatioOptions");
        if (floatExtra > 0.0f && floatExtra2 > 0.0f) {
            ViewGroup viewGroup = this.f22947super;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            this.f22927const.setTargetAspectRatio(floatExtra / floatExtra2);
        } else if (parcelableArrayListExtra == null || intExtra >= parcelableArrayListExtra.size()) {
            this.f22927const.setTargetAspectRatio(0.0f);
        } else {
            this.f22927const.setTargetAspectRatio(((AspectRatio) parcelableArrayListExtra.get(intExtra)).m27472if() / ((AspectRatio) parcelableArrayListExtra.get(intExtra)).m27471for());
        }
        int intExtra2 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeX", 0);
        int intExtra3 = intent.getIntExtra("com.yalantis.ucrop.MaxSizeY", 0);
        if (intExtra2 <= 0 || intExtra3 <= 0) {
            return;
        }
        this.f22927const.setMaxResultImageSizeX(intExtra2);
        this.f22927const.setMaxResultImageSizeY(intExtra3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throw, reason: not valid java name */
    public void m27354throw() {
        GestureCropImageView gestureCropImageView = this.f22927const;
        gestureCropImageView.m27521switch(-gestureCropImageView.getCurrentAngle());
        this.f22927const.m27512default();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: throws, reason: not valid java name */
    public void m27355throws(float f) {
        TextView textView = this.f22948switch;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf((int) (f * 100.0f))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: while, reason: not valid java name */
    public void m27357while(int i) {
        this.f22927const.m27521switch(i);
        this.f22927const.m27512default();
    }

    /* renamed from: class, reason: not valid java name */
    public void m27358class() {
        finish();
        overridePendingTransition(0, R.anim.ucrop_close);
    }

    /* renamed from: const, reason: not valid java name */
    public void m27359const() {
        this.f22951throws.setClickable(true);
        this.f22925catch = true;
        supportInvalidateOptionsMenu();
        this.f22927const.m27518public(this.f22929default, this.f22932extends, new Cgoto());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        setContentView(R.layout.ucrop_activity_photobox);
        Intent intent = getIntent();
        m27351strictfp(intent);
        m27349public(intent);
        m27350return();
        m27333catch();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.ucrop_menu_activity, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.menu_loader);
        Drawable icon = menuItemFindItem.getIcon();
        if (icon != null) {
            try {
                icon.mutate();
                icon.setColorFilter(this.f22952try, PorterDuff.Mode.SRC_ATOP);
                menuItemFindItem.setIcon(icon);
            } catch (IllegalStateException e) {
                String.format("%s - %s", e.getMessage(), getString(R.string.ucrop_mutate_exception_hint));
            }
            ((Animatable) menuItemFindItem.getIcon()).start();
        }
        MenuItem menuItemFindItem2 = menu.findItem(R.id.menu_crop);
        Drawable drawable = ContextCompat.getDrawable(this, this.f22936goto);
        if (drawable != null) {
            drawable.mutate();
            drawable.setColorFilter(this.f22952try, PorterDuff.Mode.SRC_ATOP);
            menuItemFindItem2.setIcon(drawable);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_crop) {
            m27359const();
        } else if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        menu.findItem(R.id.menu_crop).setVisible(!this.f22925catch);
        menu.findItem(R.id.menu_loader).setVisible(this.f22925catch);
        return super.onPrepareOptionsMenu(menu);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        GestureCropImageView gestureCropImageView = this.f22927const;
        if (gestureCropImageView != null) {
            gestureCropImageView.m27515native();
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m27360static(Throwable th) {
        setResult(96, new Intent().putExtra("com.yalantis.ucrop.Error", th));
    }

    /* renamed from: switch, reason: not valid java name */
    public void m27361switch(Uri uri, float f, int i, int i2, int i3, int i4) {
        setResult(-1, new Intent().putExtra("com.yalantis.ucrop.OutputUri", uri).putExtra("com.yalantis.ucrop.CropAspectRatio", f).putExtra("com.yalantis.ucrop.ImageWidth", i3).putExtra("com.yalantis.ucrop.ImageHeight", i4).putExtra("com.yalantis.ucrop.OffsetX", i).putExtra("com.yalantis.ucrop.OffsetY", i2));
        m27358class();
    }
}
