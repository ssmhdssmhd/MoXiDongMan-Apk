package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes2.dex */
public class AccordionTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f) {
        view.setPivotX(f < 0.0f ? 0.0f : view.getWidth());
        view.setScaleX(f < 0.0f ? f + 1.0f : 1.0f - f);
    }
}
