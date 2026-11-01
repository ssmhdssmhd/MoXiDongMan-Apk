.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$if;
    }
.end annotation


# static fields
.field public static final break:I = 0x2

.field public static final goto:I = 0x0

.field public static final this:I = 0x1


# instance fields
.field private case:Lcom/qmuiteam/qmui/layout/QMUIButton;

.field private do:Landroid/content/Context;

.field private else:Z

.field private for:I

.field private if:Ljava/lang/CharSequence;

.field private new:I

.field private try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->else:Z

    .line 5
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->do:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->if:Ljava/lang/CharSequence;

    .line 7
    iput p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->new:I

    .line 8
    iput-object p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->else:Z

    .line 17
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->do:Landroid/content/Context;

    .line 18
    iput p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->for:I

    .line 19
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->if:Ljava/lang/CharSequence;

    .line 20
    iput p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->new:I

    .line 21
    iput-object p5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->else:Z

    .line 11
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->do:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->if:Ljava/lang/CharSequence;

    .line 13
    iput p3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->new:I

    .line 14
    iput-object p4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V

    return-void
.end method

.method public static synthetic do(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    return-object p0
.end method

.method public static synthetic if(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->case:Lcom/qmuiteam/qmui/layout/QMUIButton;

    return-object p0
.end method

.method private new(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1
    new-instance v4, Lcom/qmuiteam/qmui/layout/QMUIButton;

    invoke-direct {v4, v1}, Lcom/qmuiteam/qmui/layout/QMUIButton;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 2
    invoke-static {v4, v5}, Lcom/qmuiteam/qmui/util/for;->static(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x0

    .line 3
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setMinHeight(I)V

    .line 4
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/4 v7, 0x1

    .line 5
    invoke-virtual {v4, v7}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    .line 6
    invoke-virtual {v4, v7}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 7
    sget-object v8, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef:[I

    sget v9, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_action_style:I

    invoke-virtual {v1, v5, v8, v9, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v9

    move-object v13, v5

    move-object v14, v13

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v10, v9, :cond_a

    .line 9
    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v15

    .line 10
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_gravity:I

    const/4 v5, -0x1

    if-ne v15, v7, :cond_0

    .line 11
    invoke-virtual {v8, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_1

    .line 12
    :cond_0
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_textColor:I

    if-ne v15, v7, :cond_1

    .line 13
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 14
    :cond_1
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_textSize:I

    if-ne v15, v7, :cond_2

    .line 15
    invoke-virtual {v8, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    goto :goto_1

    .line 16
    :cond_2
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_action_button_padding_horizontal:I

    if-ne v15, v7, :cond_4

    .line 17
    invoke-virtual {v8, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    :cond_3
    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 18
    :cond_4
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_background:I

    if-ne v15, v7, :cond_5

    .line 19
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qmuiteam/qmui/util/for;->static(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 20
    :cond_5
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_minWidth:I

    if-ne v15, v7, :cond_6

    .line 21
    invoke-virtual {v8, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setMinWidth(I)V

    .line 23
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setMinimumWidth(I)V

    goto :goto_1

    .line 24
    :cond_6
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_positive_action_text_color:I

    if-ne v15, v7, :cond_7

    .line 25
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    goto :goto_1

    .line 26
    :cond_7
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_negative_action_text_color:I

    if-ne v15, v7, :cond_8

    .line 27
    invoke-virtual {v8, v15}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_1

    .line 28
    :cond_8
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_action_icon_space:I

    if-ne v15, v7, :cond_9

    .line 29
    invoke-virtual {v8, v15, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    goto :goto_1

    .line 30
    :cond_9
    sget v7, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_textStyle:I

    if-ne v15, v7, :cond_3

    .line 31
    invoke-virtual {v8, v15, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v7, 0x0

    .line 32
    invoke-virtual {v4, v7, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object v5, v7

    const/4 v7, 0x1

    goto :goto_0

    .line 33
    :cond_a
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    invoke-virtual {v4, v11, v6, v11, v6}, Landroid/widget/Button;->setPadding(IIII)V

    if-gtz v3, :cond_b

    .line 35
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    goto :goto_3

    .line 36
    :cond_b
    invoke-static {v1, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v3, v12, v2, v1}, Landroid/support/v4/vh1;->for(ZILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 38
    iget-boolean v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->else:Z

    invoke-virtual {v4, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    .line 39
    iget v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->new:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 40
    invoke-virtual {v4, v13}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_4

    :cond_c
    if-nez v1, :cond_d

    .line 41
    invoke-virtual {v4, v14}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_d
    :goto_4
    return-object v4
.end method


# virtual methods
.method public case(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->else:Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->case:Lcom/qmuiteam/qmui/layout/QMUIButton;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public else(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->try:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$ActionListener;

    return-void
.end method

.method public for(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;I)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->if:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->for:I

    invoke-direct {p0, v0, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->new(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->case:Lcom/qmuiteam/qmui/layout/QMUIButton;

    .line 2
    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;

    invoke-direct {v1, p0, p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$do;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->case:Lcom/qmuiteam/qmui/layout/QMUIButton;

    return-object p1
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->new:I

    return v0
.end method
