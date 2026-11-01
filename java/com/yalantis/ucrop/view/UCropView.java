package com.yalantis.ucrop.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.yalantis.ucrop.R;
import com.yalantis.ucrop.callback.CropBoundsChangeListener;
import com.yalantis.ucrop.callback.OverlayViewChangeListener;

/* loaded from: classes2.dex */
public class UCropView extends FrameLayout {

    /* renamed from: do, reason: not valid java name */
    private final GestureCropImageView f23193do;

    /* renamed from: if, reason: not valid java name */
    private final OverlayView f23194if;

    /* renamed from: com.yalantis.ucrop.view.UCropView$do, reason: invalid class name */
    public class Cdo implements CropBoundsChangeListener {
        public Cdo() {
        }

        @Override // com.yalantis.ucrop.callback.CropBoundsChangeListener
        public void onCropAspectRatioChanged(float f) {
            UCropView.this.f23194if.setTargetAspectRatio(f);
        }
    }

    /* renamed from: com.yalantis.ucrop.view.UCropView$if, reason: invalid class name */
    public class Cif implements OverlayViewChangeListener {
        public Cif() {
        }

        @Override // com.yalantis.ucrop.callback.OverlayViewChangeListener
        public void onCropRectUpdated(RectF rectF) {
            UCropView.this.f23193do.setCropRect(rectF);
        }
    }

    public UCropView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @NonNull
    public GestureCropImageView getCropImageView() {
        return this.f23193do;
    }

    @NonNull
    public OverlayView getOverlayView() {
        return this.f23194if;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public UCropView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(R.layout.ucrop_view, (ViewGroup) this, true);
        GestureCropImageView gestureCropImageView = (GestureCropImageView) findViewById(R.id.image_view_crop);
        this.f23193do = gestureCropImageView;
        OverlayView overlayView = (OverlayView) findViewById(R.id.view_overlay);
        this.f23194if = overlayView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ucrop_UCropView);
        overlayView.m27540this(typedArrayObtainStyledAttributes);
        gestureCropImageView.m27522throws(typedArrayObtainStyledAttributes);
        typedArrayObtainStyledAttributes.recycle();
        gestureCropImageView.setCropBoundsChangeListener(new Cdo());
        overlayView.setOverlayViewChangeListener(new Cif());
    }
}
