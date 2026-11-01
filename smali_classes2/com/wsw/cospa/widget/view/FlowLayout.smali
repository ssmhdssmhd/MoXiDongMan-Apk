.class public Lcom/wsw/cospa/widget/view/FlowLayout;
.super Lcom/google/android/flexbox/FlexboxLayout;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/widget/view/FlowLayout$OnOverflowItemClickListener;,
        Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;
    }
.end annotation


# static fields
.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final INVALID_VAULE:I = -0x1


# instance fields
.field private mAdapter:Lcom/wsw/cospa/widget/view/FlowAdapter;

.field private mCheckStates:Landroid/util/SparseBooleanArray;

.field private mCheckedItemCount:I

.field private mChoiceMode:I

.field private mItemBottom:I

.field private mItemLeft:I

.field private mItemRight:I

.field private mItemTop:I

.field private mMaxChecked:I

.field private mOnItemClickListener:Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;

.field private mOnOverflowItemClickListener:Lcom/wsw/cospa/widget/view/FlowLayout$OnOverflowItemClickListener;

.field private mOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/widget/view/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/wsw/cospa/widget/view/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    .line 5
    iput-boolean v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOverflow:Z

    .line 6
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 7
    sget-object v1, Lcom/wsw/cospa/R$styleable;->FlowLayout:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p3, 0x2

    .line 8
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemLeft:I

    const/4 p3, 0x5

    .line 9
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemTop:I

    const/4 p3, 0x3

    .line 10
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemRight:I

    .line 11
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemBottom:I

    .line 12
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    const/4 p3, 0x7

    const/4 v1, -0x1

    .line 13
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mMaxChecked:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayout;->setFlexWrap(I)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setAlignContent(I)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayout;->setJustifyContent(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/wsw/cospa/widget/view/FlowLayout;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/widget/view/FlowLayout;->performItemClick(Landroid/view/View;I)V

    return-void
.end method

.method private layoutViews()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mAdapter:Lcom/wsw/cospa/widget/view/FlowAdapter;

    invoke-virtual {v1}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mAdapter:Lcom/wsw/cospa/widget/view/FlowAdapter;

    invoke-virtual {v1, v0, p0}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getView(ILcom/wsw/cospa/widget/view/FlowLayout;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 5
    new-instance v2, Lcom/wsw/cospa/widget/view/FlowItemView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/wsw/cospa/widget/view/FlowItemView;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 7
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 8
    iget v3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemLeft:I

    iget v4, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemTop:I

    iget v5, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemRight:I

    iget v6, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemBottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 9
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v1, Lcom/wsw/cospa/widget/view/FlowLayout$1;

    invoke-direct {v1, p0, v0}, Lcom/wsw/cospa/widget/view/FlowLayout$1;-><init>(Lcom/wsw/cospa/widget/view/FlowLayout;I)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->updateOnScreenCheckedViews()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private performItemClick(Landroid/view/View;I)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mMaxChecked:I

    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    if-lez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    iget v2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mMaxChecked:I

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v3

    .line 5
    iput v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOverflow:Z

    goto :goto_0

    .line 8
    :cond_2
    iput-boolean v2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOverflow:Z

    .line 9
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 12
    iget-object v2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v0, :cond_4

    .line 13
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    goto :goto_0

    .line 14
    :cond_4
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    goto :goto_0

    .line 15
    :cond_5
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 17
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 18
    iput v3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    goto :goto_0

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 20
    :cond_7
    iput v2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    .line 21
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->updateOnScreenCheckedViews()V

    .line 22
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOverflow:Z

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOnOverflowItemClickListener:Lcom/wsw/cospa/widget/view/FlowLayout$OnOverflowItemClickListener;

    if-eqz v0, :cond_a

    .line 24
    invoke-interface {v0, p1, p2, p0}, Lcom/wsw/cospa/widget/view/FlowLayout$OnOverflowItemClickListener;->onOverflowItemClick(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V

    goto :goto_1

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOnItemClickListener:Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;

    if-eqz v0, :cond_a

    .line 26
    invoke-interface {v0, p1, p2, p0}, Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;->onItemClick(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V

    :cond_a
    :goto_1
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Lcom/wsw/cospa/widget/view/FlowItemView;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Lcom/wsw/cospa/widget/view/FlowItemView;

    iget-object v3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wsw/cospa/widget/view/FlowItemView;->setChecked(Z)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clearChoices()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->updateOnScreenCheckedViews()V

    return-void
.end method

.method public getCheckedItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    return v0
.end method

.method public getMaxChecked()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mMaxChecked:I

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isOverFlow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOverflow:Z

    return v0
.end method

.method public onDataChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->clearChoices()V

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->layoutViews()V

    return-void
.end method

.method public setAdapter(Lcom/wsw/cospa/widget/view/FlowAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mAdapter:Lcom/wsw/cospa/widget/view/FlowAdapter;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mAdapter:Lcom/wsw/cospa/widget/view/FlowAdapter;

    .line 3
    invoke-virtual {p1, p0}, Lcom/wsw/cospa/widget/view/FlowAdapter;->setOnDataChangedListener(Lcom/wsw/cospa/widget/view/FlowAdapter$OnDataChangedListener;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->clearChoices()V

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->layoutViews()V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The adpater of FlowLayout has been attached!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setChoiceMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mMaxChecked:I

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->clearChoices()V

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->layoutViews()V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mChoiceMode:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v0, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_3

    if-eqz p2, :cond_2

    .line 4
    iget p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    goto :goto_0

    .line 5
    :cond_2
    iget p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    .line 6
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->updateOnScreenCheckedViews()V

    goto :goto_3

    .line 7
    :cond_4
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/FlowLayout;->isItemChecked(I)Z

    move-result v0

    if-eq v0, p2, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_6

    .line 8
    invoke-virtual {p0, p1}, Lcom/wsw/cospa/widget/view/FlowLayout;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_7
    if-eqz p2, :cond_8

    .line 10
    iget-object p2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 11
    iput v3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    goto :goto_2

    .line 12
    :cond_8
    iget-object p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-nez p1, :cond_a

    .line 13
    :cond_9
    iput v2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mCheckedItemCount:I

    :cond_a
    :goto_2
    if-eqz v0, :cond_b

    .line 14
    invoke-direct {p0}, Lcom/wsw/cospa/widget/view/FlowLayout;->updateOnScreenCheckedViews()V

    :cond_b
    :goto_3
    return-void
.end method

.method public setItemMargins(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemLeft:I

    .line 2
    iput p2, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemTop:I

    .line 3
    iput p3, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemRight:I

    .line 4
    iput p4, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mItemBottom:I

    return-void
.end method

.method public setMaxChecked(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mMaxChecked:I

    return-void
.end method

.method public setOnItemClickListener(Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOnItemClickListener:Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;

    return-void
.end method

.method public setOnOverflowItemClickListener(Lcom/wsw/cospa/widget/view/FlowLayout$OnOverflowItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/widget/view/FlowLayout;->mOnOverflowItemClickListener:Lcom/wsw/cospa/widget/view/FlowLayout$OnOverflowItemClickListener;

    return-void
.end method
