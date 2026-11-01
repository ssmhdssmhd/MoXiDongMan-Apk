.class public Landroid/support/v4/xh1$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/xh1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/xh1$do$do;
    }
.end annotation


# static fields
.field public static final case:I = 0x2

.field public static final else:I = 0x3

.field public static final goto:I = 0x4

.field public static final new:I = 0x0

.field public static final try:I = 0x1


# instance fields
.field private do:I

.field private for:Ljava/lang/CharSequence;

.field private if:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/support/v4/xh1$do;->do:I

    .line 3
    iput-object p1, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/xh1;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/support/v4/xh1$do;->if(Z)Landroid/support/v4/xh1;

    move-result-object v0

    return-object v0
.end method

.method public for(I)Landroid/support/v4/xh1$do;
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/xh1$do;->do:I

    return-object p0
.end method

.method public if(Z)Landroid/support/v4/xh1;
    .locals 6

    .line 1
    new-instance v0, Landroid/support/v4/xh1;

    iget-object v1, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/xh1;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3
    sget p1, Lcom/qmuiteam/qmui/R$layout;->qmui_tip_dialog_layout:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    sget p1, Lcom/qmuiteam/qmui/R$id;->contentWrap:I

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 5
    iget v1, p0, Landroid/support/v4/xh1$do;->do:I

    const/4 v2, 0x2

    const/4 v3, -0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 6
    new-instance v1, Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    iget-object v4, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;-><init>(Landroid/content/Context;)V

    const/4 v4, -0x1

    .line 7
    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setColor(I)V

    .line 8
    iget-object v4, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    const/16 v5, 0x20

    invoke-static {v4, v5}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->setSize(I)V

    .line 9
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    const/4 v4, 0x3

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_4

    .line 12
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget v5, p0, Landroid/support/v4/xh1$do;->do:I

    if-ne v5, v2, :cond_2

    .line 16
    iget-object v4, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    sget v5, Lcom/qmuiteam/qmui/R$drawable;->qmui_icon_notify_done:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    if-ne v5, v4, :cond_3

    .line 17
    iget-object v4, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    sget v5, Lcom/qmuiteam/qmui/R$drawable;->qmui_icon_notify_error:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v4, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    sget v5, Lcom/qmuiteam/qmui/R$drawable;->qmui_icon_notify_info:I

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 20
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/support/v4/xh1$do;->for:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 21
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    iget v3, p0, Landroid/support/v4/xh1$do;->do:I

    if-eqz v3, :cond_5

    .line 24
    iget-object v3, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    const/16 v5, 0xc

    invoke-static {v3, v5}, Landroid/support/v4/ih1;->new(Landroid/content/Context;I)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 25
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v3, 0x11

    .line 27
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    iget-object v3, p0, Landroid/support/v4/xh1$do;->if:Landroid/content/Context;

    sget v4, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_white:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    iget-object v2, p0, Landroid/support/v4/xh1$do;->for:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    return-object v0
.end method

.method public new(Ljava/lang/CharSequence;)Landroid/support/v4/xh1$do;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/xh1$do;->for:Ljava/lang/CharSequence;

    return-object p0
.end method
