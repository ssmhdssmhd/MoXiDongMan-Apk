.class public abstract Lcn/qqtheme/framework/popup/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/DialogInterface$OnKeyListener;",
        "Landroid/content/DialogInterface$OnDismissListener;"
    }
.end annotation


# static fields
.field public static final else:I = -0x1

.field public static final goto:I = -0x2


# instance fields
.field private case:Z

.field public do:Landroid/app/Activity;

.field public for:I

.field public if:I

.field private new:Landroid/app/Dialog;

.field private try:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/qqtheme/framework/popup/do;->case:Z

    .line 3
    iput-object p1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    .line 4
    invoke-static {p1}, Landroid/support/v4/js1;->for(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 5
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcn/qqtheme/framework/popup/do;->if:I

    .line 6
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcn/qqtheme/framework/popup/do;->for:I

    .line 7
    invoke-direct {p0}, Lcn/qqtheme/framework/popup/do;->this()V

    return-void
.end method

.method private this()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    .line 2
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 4
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 5
    new-instance v0, Landroid/app/Dialog;

    iget-object v3, p0, Lcn/qqtheme/framework/popup/do;->do:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 7
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 9
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v3, 0x50

    .line 11
    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 12
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 14
    iget-object v1, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 15
    :cond_0
    iget v0, p0, Lcn/qqtheme/framework/popup/do;->if:I

    invoke-virtual {p0, v0, v2}, Lcn/qqtheme/framework/popup/do;->default(II)V

    return-void
.end method


# virtual methods
.method public break()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/qqtheme/framework/popup/do;->for:I

    return v0
.end method

.method public abstract catch()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public class()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->do()V

    const/4 v0, 0x0

    return v0
.end method

.method public const(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method public default(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget p1, p0, Lcn/qqtheme/framework/popup/do;->if:I

    :cond_0
    const/4 v0, -0x2

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2
    iget p1, p0, Lcn/qqtheme/framework/popup/do;->if:I

    :goto_0
    const/4 p2, -0x2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 3
    iget p1, p0, Lcn/qqtheme/framework/popup/do;->if:I

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "will set popup width/height to: %s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_4

    .line 6
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 7
    :cond_4
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    :goto_2
    iget-object p1, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public do()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->if()V

    return-void
.end method

.method public else()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/qqtheme/framework/popup/do;->if:I

    return v0
.end method

.method public extends(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcn/qqtheme/framework/popup/do;->default(II)V

    return-void
.end method

.method public final(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method

.method public final finally()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/qqtheme/framework/popup/do;->case:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->package()V

    return-void

    :cond_0
    const-string v0, "do something before popup show"

    .line 4
    invoke-static {p0, v0}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->import()V

    .line 6
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->catch()Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcn/qqtheme/framework/popup/do;->throw(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0, v0}, Lcn/qqtheme/framework/popup/do;->while(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/qqtheme/framework/popup/do;->case:Z

    .line 10
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 11
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->package()V

    return-void
.end method

.method public for()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goto()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public final if()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "popup dismiss"

    .line 2
    invoke-static {p0, v0}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public import()V
    .locals 0

    return-void
.end method

.method public native(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcn/qqtheme/framework/popup/do;->if:I

    iget v0, p0, Lcn/qqtheme/framework/popup/do;->for:I

    int-to-float v0, v0

    const v1, 0x3f59999a    # 0.85f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcn/qqtheme/framework/popup/do;->default(II)V

    :cond_0
    return-void
.end method

.method public new()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->do()V

    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/qqtheme/framework/popup/do;->class()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public package()V
    .locals 1

    const-string v0, "popup show"

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public public(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    return-void
.end method

.method public return(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 3
    iget p1, p0, Lcn/qqtheme/framework/popup/do;->if:I

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    mul-float p1, p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcn/qqtheme/framework/popup/do;->extends(I)V

    :cond_1
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    new-instance v1, Lcn/qqtheme/framework/popup/do$do;

    invoke-direct {v1, p0, p1}, Lcn/qqtheme/framework/popup/do$do;-><init>(Lcn/qqtheme/framework/popup/do;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string p1, "popup setOnDismissListener"

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    new-instance v1, Lcn/qqtheme/framework/popup/do$if;

    invoke-direct {v1, p0, p1}, Lcn/qqtheme/framework/popup/do$if;-><init>(Lcn/qqtheme/framework/popup/do;Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const-string p1, "popup setOnKeyListener"

    .line 2
    invoke-static {p0, p1}, Landroid/support/v4/uv0;->native(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcn/qqtheme/framework/popup/do;->if:I

    iget v0, p0, Lcn/qqtheme/framework/popup/do;->for:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcn/qqtheme/framework/popup/do;->default(II)V

    :cond_0
    return-void
.end method

.method public super(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->new:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public switch(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lcn/qqtheme/framework/popup/do;->default(II)V

    return-void
.end method

.method public throw(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public throws(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/qqtheme/framework/popup/do;->case:Z

    return-void
.end method

.method public try()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/qqtheme/framework/popup/do;->try:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public while(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    return-void
.end method
