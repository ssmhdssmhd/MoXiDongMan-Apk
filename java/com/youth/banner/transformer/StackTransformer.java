package com.youth.banner.transformer;

import android.view.View;

/* loaded from: classes2.dex */
public class StackTransformer extends ABaseTransformer {
    @Override // com.youth.banner.transformer.ABaseTransformer
    public void onTransform(View view, float f) {
        view.setTranslationX(f >= 0.0f ? (-view.getWidth()) * f : 0.0f);
    }
}
