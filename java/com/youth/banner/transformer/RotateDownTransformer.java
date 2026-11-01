package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes2.dex */
public class RotateDownTransformer extends ABaseTransformer {
    private static final float ROT_MOD = -15.0f;

    @Override // com.youth.banner.transformer.ABaseTransformer
    public boolean isPagingEnabled() {
        return true;
    }

    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f) {
        float width = view.getWidth();
        float height = view.getHeight();
        float f2 = f * ROT_MOD * (-1.25f);
        view.setPivotX(width * 0.5f);
        view.setPivotY(height);
        view.setRotation(f2);
    }
}
