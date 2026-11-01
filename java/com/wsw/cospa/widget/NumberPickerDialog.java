package com.wsw.cospa.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.NumberPicker;
import com.wsw.cospa.R;

/* loaded from: classes2.dex */
public class NumberPickerDialog extends AlertDialog implements DialogInterface.OnClickListener, NumberPicker.OnValueChangeListener {
    private final String currentValue;
    private final NumberPicker.OnValueChangeListener mCallback;
    private final NumberPicker mNumberPicker;
    private final String maxValue;
    private final String minValue;
    private int newVal;
    private int oldVal;

    public NumberPickerDialog(Context context, NumberPicker.OnValueChangeListener onValueChangeListener, int i, int i2, int i3) {
        super(context, 0);
        this.maxValue = "最大值";
        this.minValue = "最小值";
        this.currentValue = "当前值";
        this.mCallback = onValueChangeListener;
        setIcon(0);
        setTitle("设置数字");
        Context context2 = getContext();
        setButton(-1, "确定", this);
        setButton(-2, "取消", this);
        View viewInflate = ((LayoutInflater) context2.getSystemService("layout_inflater")).inflate(R.layout.arg_res_0x7f0c0135, (ViewGroup) null);
        setView(viewInflate);
        NumberPicker numberPicker = (NumberPicker) viewInflate.findViewById(R.id.arg_res_0x7f09030c);
        this.mNumberPicker = numberPicker;
        numberPicker.setMaxValue(i);
        numberPicker.setMinValue(i2);
        numberPicker.setValue(i3);
        numberPicker.setOnValueChangedListener(this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i != -1) {
            return;
        }
        this.mCallback.onValueChange(this.mNumberPicker, this.oldVal, this.newVal);
    }

    @Override // android.app.Dialog
    public void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        int i = bundle.getInt("最大值");
        int i2 = bundle.getInt("最小值");
        int i3 = bundle.getInt("当前值");
        this.mNumberPicker.setMaxValue(i);
        this.mNumberPicker.setMinValue(i2);
        this.mNumberPicker.setValue(i3);
    }

    @Override // android.app.Dialog
    public Bundle onSaveInstanceState() {
        Bundle bundleOnSaveInstanceState = super.onSaveInstanceState();
        bundleOnSaveInstanceState.putInt("最大值", this.mNumberPicker.getMaxValue());
        bundleOnSaveInstanceState.putInt("最小值", this.mNumberPicker.getMinValue());
        bundleOnSaveInstanceState.putInt("当前值", this.mNumberPicker.getValue());
        return bundleOnSaveInstanceState;
    }

    @Override // android.widget.NumberPicker.OnValueChangeListener
    public void onValueChange(NumberPicker numberPicker, int i, int i2) {
        this.oldVal = i;
        this.newVal = i2;
    }

    public NumberPickerDialog setCurrentValue(int i) {
        this.mNumberPicker.setValue(i);
        this.newVal = i;
        return this;
    }
}
