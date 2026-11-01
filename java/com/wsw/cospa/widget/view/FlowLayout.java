package com.wsw.cospa.widget.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseBooleanArray;
import android.view.View;
import com.google.android.flexbox.FlexboxLayout;
import com.wsw.cospa.R;
import com.wsw.cospa.widget.view.FlowAdapter;

/* loaded from: classes2.dex */
public class FlowLayout extends FlexboxLayout implements FlowAdapter.OnDataChangedListener {
    public static final int CHOICE_MODE_MULTIPLE = 2;
    public static final int CHOICE_MODE_NONE = 0;
    public static final int CHOICE_MODE_SINGLE = 1;
    private static final int INVALID_VAULE = -1;
    private FlowAdapter mAdapter;
    private SparseBooleanArray mCheckStates;
    private int mCheckedItemCount;
    private int mChoiceMode;
    private int mItemBottom;
    private int mItemLeft;
    private int mItemRight;
    private int mItemTop;
    private int mMaxChecked;
    private OnItemClickListener mOnItemClickListener;
    private OnOverflowItemClickListener mOnOverflowItemClickListener;
    private boolean mOverflow;

    public interface OnItemClickListener {
        void onItemClick(View view, int i, FlowLayout flowLayout);
    }

    public interface OnOverflowItemClickListener {
        void onOverflowItemClick(View view, int i, FlowLayout flowLayout);
    }

    public FlowLayout(Context context) {
        this(context, null);
    }

    private void layoutViews() {
        removeAllViews();
        for (final int i = 0; i < this.mAdapter.getCount(); i++) {
            View view = this.mAdapter.getView(i, this);
            view.setDuplicateParentStateEnabled(true);
            FlowItemView flowItemView = new FlowItemView(getContext());
            flowItemView.addView(view);
            FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(this.mItemLeft, this.mItemTop, this.mItemRight, this.mItemBottom);
            flowItemView.setLayoutParams(layoutParams);
            flowItemView.setOnClickListener(new View.OnClickListener() { // from class: com.wsw.cospa.widget.view.FlowLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    FlowLayout.this.performItemClick(view2, i);
                }
            });
            addView(flowItemView);
            updateOnScreenCheckedViews();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performItemClick(View view, int i) {
        int i2 = this.mChoiceMode;
        if (i2 != 1) {
            if (i2 == 2) {
                int i3 = this.mMaxChecked;
                if (i3 == -1 || i3 <= 0) {
                    boolean z = !this.mCheckStates.get(i, false);
                    this.mCheckStates.put(i, z);
                    if (z) {
                        this.mCheckedItemCount++;
                    } else {
                        this.mCheckedItemCount--;
                    }
                } else if (!this.mCheckStates.get(i, false)) {
                    int i4 = this.mCheckedItemCount;
                    if (i4 < this.mMaxChecked) {
                        this.mCheckedItemCount = i4 + 1;
                        this.mCheckStates.put(i, true);
                    } else {
                        this.mOverflow = true;
                    }
                } else {
                    this.mOverflow = false;
                    this.mCheckedItemCount--;
                    this.mCheckStates.put(i, false);
                }
            }
        } else if (!this.mCheckStates.get(i, false)) {
            this.mCheckStates.clear();
            this.mCheckStates.put(i, true);
            this.mCheckedItemCount = 1;
        } else if (this.mCheckStates.size() == 0 || !this.mCheckStates.valueAt(0)) {
            this.mCheckedItemCount = 0;
        }
        updateOnScreenCheckedViews();
        if (this.mChoiceMode == 2 && this.mOverflow) {
            OnOverflowItemClickListener onOverflowItemClickListener = this.mOnOverflowItemClickListener;
            if (onOverflowItemClickListener != null) {
                onOverflowItemClickListener.onOverflowItemClick(view, i, this);
                return;
            }
            return;
        }
        OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(view, i, this);
        }
    }

    private void updateOnScreenCheckedViews() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof FlowItemView) {
                ((FlowItemView) childAt).setChecked(this.mCheckStates.get(i));
            } else {
                childAt.setActivated(this.mCheckStates.get(i));
            }
        }
    }

    public void clearChoices() {
        SparseBooleanArray sparseBooleanArray = this.mCheckStates;
        if (sparseBooleanArray != null) {
            sparseBooleanArray.clear();
        }
        this.mCheckedItemCount = 0;
        updateOnScreenCheckedViews();
    }

    public int getCheckedItemCount() {
        return this.mCheckedItemCount;
    }

    public int getCheckedItemPosition() {
        SparseBooleanArray sparseBooleanArray;
        if (this.mChoiceMode == 1 && (sparseBooleanArray = this.mCheckStates) != null && sparseBooleanArray.size() == 1) {
            return this.mCheckStates.keyAt(0);
        }
        return -1;
    }

    public SparseBooleanArray getCheckedItemPositions() {
        if (this.mChoiceMode != 0) {
            return this.mCheckStates;
        }
        return null;
    }

    public int getChoiceMode() {
        return this.mChoiceMode;
    }

    public int getMaxChecked() {
        return this.mMaxChecked;
    }

    public boolean isItemChecked(int i) {
        SparseBooleanArray sparseBooleanArray;
        if (this.mChoiceMode == 0 || (sparseBooleanArray = this.mCheckStates) == null) {
            return false;
        }
        return sparseBooleanArray.get(i);
    }

    public boolean isOverFlow() {
        return this.mOverflow;
    }

    @Override // com.wsw.cospa.widget.view.FlowAdapter.OnDataChangedListener
    public void onDataChanged() {
        clearChoices();
        layoutViews();
    }

    public void setAdapter(FlowAdapter flowAdapter) {
        if (this.mAdapter != null) {
            throw new UnsupportedOperationException("The adpater of FlowLayout has been attached!");
        }
        this.mAdapter = flowAdapter;
        flowAdapter.setOnDataChangedListener(this);
        clearChoices();
        layoutViews();
    }

    public void setChoiceMode(int i) {
        this.mChoiceMode = i;
        this.mMaxChecked = -1;
        clearChoices();
        layoutViews();
    }

    public void setItemChecked(int i, boolean z) {
        int i2 = this.mChoiceMode;
        if (i2 == 0) {
            return;
        }
        if (i2 == 2) {
            boolean z2 = this.mCheckStates.get(i);
            this.mCheckStates.put(i, z);
            if (z2 != z) {
                if (z) {
                    this.mCheckedItemCount++;
                } else {
                    this.mCheckedItemCount--;
                }
            }
            updateOnScreenCheckedViews();
            return;
        }
        boolean z3 = isItemChecked(i) != z;
        if (z || isItemChecked(i)) {
            this.mCheckStates.clear();
        }
        if (z) {
            this.mCheckStates.put(i, true);
            this.mCheckedItemCount = 1;
        } else if (this.mCheckStates.size() == 0 || !this.mCheckStates.valueAt(0)) {
            this.mCheckedItemCount = 0;
        }
        if (z3) {
            updateOnScreenCheckedViews();
        }
    }

    public void setItemMargins(int i, int i2, int i3, int i4) {
        this.mItemLeft = i;
        this.mItemTop = i2;
        this.mItemRight = i3;
        this.mItemBottom = i4;
    }

    public void setMaxChecked(int i) {
        this.mMaxChecked = i;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnOverflowItemClickListener(OnOverflowItemClickListener onOverflowItemClickListener) {
        this.mOnOverflowItemClickListener = onOverflowItemClickListener;
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mChoiceMode = 0;
        this.mOverflow = false;
        this.mCheckStates = new SparseBooleanArray();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FlowLayout, i, 0);
        if (typedArrayObtainStyledAttributes != null) {
            this.mItemLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
            this.mItemTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
            this.mItemRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
            this.mItemBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
            this.mChoiceMode = typedArrayObtainStyledAttributes.getInt(0, 0);
            this.mMaxChecked = typedArrayObtainStyledAttributes.getInt(7, -1);
            typedArrayObtainStyledAttributes.recycle();
        }
        setFlexWrap(1);
        setAlignContent(0);
        setJustifyContent(0);
    }
}
