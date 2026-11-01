.class public Lcom/wsw/cospa/utils/DialogTool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/utils/DialogTool$try;,
        Lcom/wsw/cospa/utils/DialogTool$for;,
        Lcom/wsw/cospa/utils/DialogTool$new;,
        Lcom/wsw/cospa/utils/DialogTool$if;,
        Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;,
        Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;,
        Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;
    }
.end annotation


# static fields
.field public static do:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic abstract(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic b(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->e(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic c(Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;->onConfirm(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "\u8d26\u53f7\u6216\u5bc6\u7801\u4e3a\u7a7a"

    .line 4
    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->protected(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic catch(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->g(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic class(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/DialogTool;->implements(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic const(Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->d(Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic continue(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic d(Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static default(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlertDialog;->show()V

    .line 2
    iget-boolean v5, v3, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f0c0132

    .line 4
    invoke-virtual {v5, v6}, Landroid/view/Window;->setContentView(I)V

    const v6, 0x7f0904e9

    .line 5
    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090146

    .line 6
    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090144

    .line 7
    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090145

    .line 8
    invoke-virtual {v5, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 9
    iget v10, v2, Lcom/wsw/cospa/utils/DialogTool$new;->new:I

    const/4 v11, -0x1

    if-ne v11, v10, :cond_0

    .line 10
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 11
    iget v12, v2, Lcom/wsw/cospa/utils/DialogTool$new;->try:F

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    .line 12
    invoke-virtual {v8, v10, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 13
    :cond_1
    iget v10, v2, Lcom/wsw/cospa/utils/DialogTool$new;->case:I

    if-eq v11, v10, :cond_2

    .line 14
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    :cond_2
    iget v10, v2, Lcom/wsw/cospa/utils/DialogTool$new;->else:I

    if-eq v11, v10, :cond_3

    .line 16
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v10, 0x7f0900d0

    .line 17
    invoke-virtual {v5, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0900cf

    .line 18
    invoke-virtual {v5, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0900ce

    .line 19
    invoke-virtual {v5, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0900d1

    .line 20
    invoke-virtual {v5, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v14, 0x7f0900d7

    .line 21
    invoke-virtual {v5, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0900d6

    .line 22
    invoke-virtual {v5, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 23
    iget-object v15, v2, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    move-object/from16 v16, v6

    const/16 v6, 0x8

    if-nez v15, :cond_4

    .line 24
    iget-object v15, v2, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    .line 25
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_4
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v7, ""

    .line 27
    iget-object v15, v2, Lcom/wsw/cospa/utils/DialogTool$new;->if:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 28
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/wsw/cospa/utils/DialogTool$new;->if:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    .line 30
    :goto_1
    iget-object v6, v2, Lcom/wsw/cospa/utils/DialogTool$new;->for:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/wsw/cospa/utils/DialogTool$new;->for:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 32
    :cond_6
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-lez v15, :cond_7

    .line 33
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v17, v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v18, v14

    const v14, 0x7f060116

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14, v15, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_7
    move-object/from16 v17, v5

    move-object/from16 v18, v14

    .line 34
    :goto_2
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget v2, v2, Lcom/wsw/cospa/utils/DialogTool$new;->goto:I

    if-lez v2, :cond_8

    .line 36
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    .line 38
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    :goto_3
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 40
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    sget-object v5, Lcom/wsw/cospa/utils/DialogTool$if;->HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

    if-ne v2, v5, :cond_9

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x8

    .line 42
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 43
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 44
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 45
    new-instance v2, Landroid/support/v4/uz;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/uz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    new-instance v2, Landroid/support/v4/a00;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/a00;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    invoke-virtual {v3, v0, v12}, Lcom/wsw/cospa/utils/DialogTool$try;->for(Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_4

    :cond_9
    const/16 v2, 0x8

    .line 48
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    move-object/from16 v14, v18

    invoke-static {v14, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 51
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    move-object/from16 v5, v17

    invoke-static {v5, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 52
    new-instance v2, Landroid/support/v4/b00;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/b00;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v2, Landroid/support/v4/p00;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/p00;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-virtual {v3, v0, v5}, Lcom/wsw/cospa/utils/DialogTool$try;->for(Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v5, v17

    move-object/from16 v14, v18

    .line 55
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v0, 0x8

    .line 56
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 57
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x7d0

    .line 58
    iget v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->try:I

    if-lez v2, :cond_b

    move v0, v2

    .line 59
    :cond_b
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v5, Landroid/support/v4/g00;

    invoke-direct {v5, v1}, Landroid/support/v4/g00;-><init>(Landroid/app/AlertDialog;)V

    int-to-long v6, v0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_c
    const/16 v2, 0x8

    .line 60
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 61
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 62
    iget-object v6, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 63
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    .line 64
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 66
    new-instance v2, Landroid/support/v4/xz;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/xz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v3, v0, v5}, Lcom/wsw/cospa/utils/DialogTool$try;->for(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_4

    :cond_d
    const/16 v0, 0x8

    .line 68
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 71
    new-instance v0, Landroid/support/v4/tz;

    invoke-direct {v0, v4, v1}, Landroid/support/v4/tz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    :goto_4
    new-instance v0, Landroid/support/v4/i00;

    invoke-direct {v0, v4, v1}, Landroid/support/v4/i00;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 73
    iget-boolean v0, v3, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    if-eqz v0, :cond_e

    .line 74
    new-instance v0, Landroid/support/v4/l00;

    invoke-direct {v0, v1}, Landroid/support/v4/l00;-><init>(Landroid/app/AlertDialog;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_5
    return-void
.end method

.method public static synthetic do(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/DialogTool;->a(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic e(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->private(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static extends(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0c0131

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    const v1, 0x7f090146

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09019f

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7
    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 8
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 9
    invoke-virtual {v2, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    iget-object p3, p1, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 11
    iget-object p1, p1, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 12
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x8

    .line 13
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0900cf

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f0900ce

    .line 15
    invoke-virtual {v0, p3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/high16 p4, 0x20000

    .line 16
    invoke-virtual {v0, p4}, Landroid/view/Window;->clearFlags(I)V

    const/4 p4, 0x5

    .line 17
    invoke-virtual {v0, p4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 18
    iget-object p4, p2, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 19
    iget-object p2, p2, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {p3, p2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 20
    new-instance p2, Landroid/support/v4/k00;

    invoke-direct {p2, p0}, Landroid/support/v4/k00;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    new-instance p1, Landroid/support/v4/e00;

    invoke-direct {p1, p5, v2, p0}, Landroid/support/v4/e00;-><init>(Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance p1, Landroid/support/v4/d00;

    invoke-direct {p1, p0}, Landroid/support/v4/d00;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private static synthetic f(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic final(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/utils/DialogTool;->l(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private static finally(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0c0133

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    const v1, 0x7f090146

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090139

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v3, 0x7f090138

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    if-eqz p1, :cond_0

    .line 7
    iget-object v4, p1, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    iget-object p1, p1, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 10
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const p1, 0x7f0900cf

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v1, 0x7f0900ce

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/high16 v4, 0x20000

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    const/4 v4, 0x5

    .line 14
    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 15
    iget-object v0, p2, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 16
    iget-object p2, p2, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 17
    new-instance p2, Landroid/support/v4/n00;

    invoke-direct {p2, p0}, Landroid/support/v4/n00;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p1, Landroid/support/v4/f00;

    invoke-direct {p1, p3, v2, v3, p0}, Landroid/support/v4/f00;-><init>(Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    new-instance p1, Landroid/support/v4/sz;

    invoke-direct {p1, p0}, Landroid/support/v4/sz;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->h(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic g(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->instanceof(Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic h(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic i(Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic if(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/DialogTool;->volatile(Landroid/app/AlertDialog;)V

    return-void
.end method

.method private static synthetic implements(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic import(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->f(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic instanceof(Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;->onConfirm(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    const-string p0, "\u8f93\u5165\u5185\u5bb9\u4e3a\u7a7a"

    .line 4
    invoke-static {p0}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static synthetic interface(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic j(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic k(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic l(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    .line 1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onBack()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic m(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static n(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic native(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->k(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/utils/DialogTool;->transient(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static o(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->default(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    .line 3
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static p(Landroid/content/Context;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->default(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method

.method private static package(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlertDialog;->show()V

    .line 2
    iget-boolean v5, v3, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f0c0132

    .line 4
    invoke-virtual {v5, v6}, Landroid/view/Window;->setContentView(I)V

    const v6, 0x7f0904e9

    .line 5
    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f090146

    .line 6
    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f090144

    .line 7
    invoke-virtual {v5, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f090145

    .line 8
    invoke-virtual {v5, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 9
    iget v10, v2, Lcom/wsw/cospa/utils/DialogTool$new;->new:I

    const/4 v11, -0x1

    if-ne v11, v10, :cond_0

    .line 10
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    .line 11
    iget v12, v2, Lcom/wsw/cospa/utils/DialogTool$new;->try:F

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_1

    const/4 v10, 0x0

    .line 12
    invoke-virtual {v8, v10, v12}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 13
    :cond_1
    iget v10, v2, Lcom/wsw/cospa/utils/DialogTool$new;->case:I

    if-eq v11, v10, :cond_2

    .line 14
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    :cond_2
    iget v10, v2, Lcom/wsw/cospa/utils/DialogTool$new;->else:I

    if-eq v11, v10, :cond_3

    .line 16
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    const v10, 0x7f0900d0

    .line 17
    invoke-virtual {v5, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0900cf

    .line 18
    invoke-virtual {v5, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0900ce

    .line 19
    invoke-virtual {v5, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0900d1

    .line 20
    invoke-virtual {v5, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    const v14, 0x7f0900d7

    .line 21
    invoke-virtual {v5, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0900d6

    .line 22
    invoke-virtual {v5, v15}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 23
    iget-object v15, v2, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    move-object/from16 v16, v6

    const/4 v6, 0x0

    if-nez v15, :cond_4

    .line 24
    iget-object v15, v2, Lcom/wsw/cospa/utils/DialogTool$new;->do:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const/16 v15, 0x8

    .line 26
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const-string v7, ""

    .line 27
    iget-object v15, v2, Lcom/wsw/cospa/utils/DialogTool$new;->if:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 28
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/wsw/cospa/utils/DialogTool$new;->if:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1

    :cond_5
    const/4 v15, 0x0

    .line 30
    :goto_1
    iget-object v6, v2, Lcom/wsw/cospa/utils/DialogTool$new;->for:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/wsw/cospa/utils/DialogTool$new;->for:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 32
    :cond_6
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-lez v15, :cond_7

    .line 33
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v17, v5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v18, v14

    const v14, 0x7f060116

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v7, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    const/4 v14, 0x0

    invoke-virtual {v6, v7, v14, v15, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_7
    move-object/from16 v17, v5

    move-object/from16 v18, v14

    .line 34
    :goto_2
    iget-object v5, v2, Lcom/wsw/cospa/utils/DialogTool$new;->for:Ljava/lang/String;

    const-string v7, "\u300a"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 35
    new-instance v7, Lcom/wsw/cospa/utils/DialogTool$do;

    invoke-direct {v7, v0}, Lcom/wsw/cospa/utils/DialogTool$do;-><init>(Landroid/content/Context;)V

    add-int/lit8 v14, v5, 0x6

    const/4 v15, 0x0

    invoke-virtual {v6, v7, v5, v14, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 36
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 37
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget v2, v2, Lcom/wsw/cospa/utils/DialogTool$new;->goto:I

    if-lez v2, :cond_8

    .line 39
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    .line 40
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    .line 41
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    :goto_3
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 43
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->new:Lcom/wsw/cospa/utils/DialogTool$if;

    sget-object v5, Lcom/wsw/cospa/utils/DialogTool$if;->HORIZONTAL:Lcom/wsw/cospa/utils/DialogTool$if;

    if-ne v2, v5, :cond_9

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v2, 0x8

    .line 45
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 46
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v11, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 47
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v12, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 48
    new-instance v2, Landroid/support/v4/vz;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/vz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    new-instance v2, Landroid/support/v4/yz;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/yz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v3, v0, v12}, Lcom/wsw/cospa/utils/DialogTool$try;->for(Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_4

    :cond_9
    const/16 v2, 0x8

    .line 51
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 52
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    move-object/from16 v14, v18

    invoke-static {v14, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 54
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    move-object/from16 v5, v17

    invoke-static {v5, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 55
    new-instance v2, Landroid/support/v4/wz;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/wz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v2, Landroid/support/v4/aaa;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/aaa;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v3, v0, v5}, Lcom/wsw/cospa/utils/DialogTool$try;->for(Landroid/content/Context;Landroid/widget/TextView;)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v5, v17

    move-object/from16 v14, v18

    .line 58
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v0, 0x8

    .line 59
    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v0, 0x7d0

    .line 61
    iget v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->try:I

    if-lez v2, :cond_b

    move v0, v2

    .line 62
    :cond_b
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v5, Landroid/support/v4/h00;

    invoke-direct {v5, v1}, Landroid/support/v4/h00;-><init>(Landroid/app/AlertDialog;)V

    int-to-long v6, v0

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_c
    const/16 v2, 0x8

    .line 63
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 65
    iget-object v6, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 66
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v2, 0x8

    .line 67
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v2, v3, Lcom/wsw/cospa/utils/DialogTool$try;->do:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 69
    new-instance v2, Landroid/support/v4/c00;

    invoke-direct {v2, v4, v1}, Landroid/support/v4/c00;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {v3, v0, v5}, Lcom/wsw/cospa/utils/DialogTool$try;->for(Landroid/content/Context;Landroid/widget/TextView;)V

    goto :goto_4

    :cond_d
    const/16 v0, 0x8

    .line 71
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, v3, Lcom/wsw/cospa/utils/DialogTool$try;->if:Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/wsw/cospa/utils/DialogTool;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/support/v4/zz;

    invoke-direct {v0, v4, v1}, Landroid/support/v4/zz;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :goto_4
    new-instance v0, Landroid/support/v4/j00;

    invoke-direct {v0, v4, v1}, Landroid/support/v4/j00;-><init>(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 76
    iget-boolean v0, v3, Lcom/wsw/cospa/utils/DialogTool$try;->for:Z

    if-eqz v0, :cond_e

    .line 77
    new-instance v0, Landroid/support/v4/m00;

    invoke-direct {v0, v1}, Landroid/support/v4/m00;-><init>(Landroid/app/AlertDialog;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_5
    return-void
.end method

.method private static synthetic private(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private static synthetic protected(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onCancel()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic public(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->abstract(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/wsw/cospa/utils/DialogTool;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    return-void
.end method

.method public static r(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/wsw/cospa/utils/DialogTool;->extends(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    .line 3
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static synthetic return(Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/utils/DialogTool;->c(Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Lcom/wsw/cospa/widget/view/FixedTextInputEditText;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static s(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/wsw/cospa/utils/DialogTool;->extends(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    .line 3
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static synthetic static(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/DialogTool;->b(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic strictfp(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onConfirm()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static synthetic super(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/wsw/cospa/utils/DialogTool;->m(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic switch(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->continue(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic synchronized(Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static t(Landroid/content/Context;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 2
    invoke-static/range {v2 .. v7}, Lcom/wsw/cospa/utils/DialogTool;->extends(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Ljava/lang/String;Ljava/lang/String;Lcom/wsw/cospa/utils/DialogTool$EditDialogOptcb;)V

    return-void
.end method

.method public static synthetic this(Landroid/app/AlertDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/wsw/cospa/utils/DialogTool;->i(Landroid/app/AlertDialog;)V

    return-void
.end method

.method public static synthetic throw(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->interface(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic throws(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->j(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic transient(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p3, p2, :cond_1

    .line 1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;->onBack()V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic try(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/wsw/cospa/utils/DialogTool;->strictfp(Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2
    invoke-static {v0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->finally(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;)V

    .line 3
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static v(Landroid/content/Context;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->finally(Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$LoginDialogOptcb;)V

    return-void
.end method

.method private static synthetic volatile(Landroid/app/AlertDialog;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static w(Landroid/app/Activity;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120357

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2
    invoke-static {p0, v0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->package(Landroid/content/Context;Landroid/app/AlertDialog;Lcom/wsw/cospa/utils/DialogTool$new;Lcom/wsw/cospa/utils/DialogTool$try;Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;)V

    .line 3
    invoke-static {p0, v0}, Lcom/gyf/immersionbar/else;->l2(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/else;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method

.method public static synthetic while(Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/wsw/cospa/utils/DialogTool;->synchronized(Landroid/app/AlertDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
