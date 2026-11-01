.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$do;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$new;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$goto;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$for;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$case;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$MenuBaseDialogBuilder;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$try;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$if;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog$else;
    }
.end annotation


# instance fields
.field public do:Z

.field private for:Z

.field private if:Z

.field private new:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/qmuiteam/qmui/R$style;->QMUI_Dialog:I

    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->do:Z

    .line 4
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->if:Z

    .line 5
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->new:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->if()V

    return-void
.end method

.method private for()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v2, 0x11

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private if()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->setCancelable(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public case(Landroid/app/Activity;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v2, v1, 0x400

    const/16 v3, 0x400

    if-eq v2, v3, :cond_2

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    .line 8
    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 9
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :goto_1
    return-void
.end method

.method public do()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->do:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->new()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method public new()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->for:Z

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->if:Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v2, [I

    const v3, 0x101035b

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->if:Z

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    :goto_0
    iput-boolean v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->for:Z

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->if:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->for()V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->do:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->do:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->do:Z

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->if:Z

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->for:Z

    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->new:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void

    .line 3
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 4
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialog;->case(Landroid/app/Activity;)V

    return-void
.end method
