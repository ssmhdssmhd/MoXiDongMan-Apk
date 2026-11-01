package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {

    /* renamed from: do, reason: not valid java name */
    private boolean f11484do;

    /* renamed from: com.google.android.material.bottomsheet.BottomSheetDialogFragment$if, reason: invalid class name */
    public class Cif extends BottomSheetBehavior.Celse {
        private Cif() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.Celse
        /* renamed from: do */
        public void mo12895do(@NonNull View view, float f) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.Celse
        /* renamed from: if */
        public void mo12896if(@NonNull View view, int i) {
            if (i == 5) {
                BottomSheetDialogFragment.this.m12903if();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    private void m12902for(@NonNull BottomSheetBehavior<?> bottomSheetBehavior, boolean z) {
        this.f11484do = z;
        if (bottomSheetBehavior.m12885protected() == 5) {
            m12903if();
            return;
        }
        if (getDialog() instanceof BottomSheetDialog) {
            ((BottomSheetDialog) getDialog()).removeDefaultCallback();
        }
        bottomSheetBehavior.m12887super(new Cif());
        bottomSheetBehavior.r(5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public void m12903if() {
        if (this.f11484do) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    /* renamed from: new, reason: not valid java name */
    private boolean m12904new(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof BottomSheetDialog)) {
            return false;
        }
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        BottomSheetBehavior<FrameLayout> behavior = bottomSheetDialog.getBehavior();
        if (!behavior.a() || !bottomSheetDialog.getDismissWithAnimation()) {
            return false;
        }
        m12902for(behavior, z);
        return true;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (m12904new(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (m12904new(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new BottomSheetDialog(getContext(), getTheme());
    }
}
