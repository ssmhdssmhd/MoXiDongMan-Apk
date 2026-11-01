package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;

/* renamed from: com.google.android.material.timepicker.do, reason: invalid class name */
/* loaded from: classes.dex */
class Cdo extends AccessibilityDelegateCompat {

    /* renamed from: do, reason: not valid java name */
    private final AccessibilityNodeInfoCompat.AccessibilityActionCompat f13166do;

    public Cdo(Context context, int i) {
        this.f13166do = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(16, context.getString(i));
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.addAction(this.f13166do);
    }
}
