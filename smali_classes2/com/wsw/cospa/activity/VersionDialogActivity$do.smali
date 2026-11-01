.class Lcom/wsw/cospa/activity/VersionDialogActivity$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/palette/graphics/Palette$PaletteAsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/VersionDialogActivity;->throw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/VersionDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/VersionDialogActivity$do;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->if()V

    return-void
.end method

.method private synthetic if()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0}, Landroid/support/v4/jh0;->class(Landroidx/fragment/app/FragmentActivity;)Landroid/support/v4/ph0;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->goto(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/bean/AppUpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getTopImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/ph0;->n(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->else(Lcom/wsw/cospa/activity/VersionDialogActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->m0(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/new;

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->this(Lcom/wsw/cospa/activity/VersionDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Landroid/support/v4/z2;->for(ILandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/VersionDialogActivity;->for(Lcom/wsw/cospa/activity/VersionDialogActivity;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/h30;->for(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->try(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/widget/view/NumberProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->for(Lcom/wsw/cospa/activity/VersionDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgressTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->try(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/widget/view/NumberProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->for(Lcom/wsw/cospa/activity/VersionDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setReachedBarColor(I)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->this(Lcom/wsw/cospa/activity/VersionDialogActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$do;->do:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->for(Lcom/wsw/cospa/activity/VersionDialogActivity;)I

    move-result v1

    invoke-static {v1}, Landroid/support/v4/ym;->case(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public onGenerated(Landroidx/palette/graphics/Palette;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/wsw/cospa/activity/volatile;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/activity/volatile;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity$do;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    return-void
.end method
