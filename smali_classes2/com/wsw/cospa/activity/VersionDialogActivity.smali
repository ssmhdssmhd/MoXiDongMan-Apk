.class public Lcom/wsw/cospa/activity/VersionDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final final:Ljava/lang/String; = ""

.field public static final super:Ljava/lang/String; = ""

.field public static final throw:Ljava/lang/String; = ""


# instance fields
.field private break:Landroid/widget/TextView;

.field private case:Landroid/widget/LinearLayout;

.field private catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

.field private class:Lcom/tbruyelle/rxpermissions2/RxPermissions;

.field public const:Landroid/support/v4/cq;

.field private do:Landroid/widget/TextView;

.field private else:I

.field private for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

.field private goto:I

.field private if:Landroid/widget/Button;

.field private new:Landroid/widget/ImageView;

.field private this:Landroid/widget/ImageView;

.field private try:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const v0, -0x16bcc7

    .line 2
    iput v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->else:I

    const v0, 0x7f0e000a

    .line 3
    iput v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->goto:I

    .line 4
    new-instance v0, Landroid/support/v4/cq;

    invoke-direct {v0}, Landroid/support/v4/cq;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->const:Landroid/support/v4/cq;

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->native(Ljava/io/File;)V

    return-void
.end method

.method private catch()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/bean/AppUpdateInfo;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->const()V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppSize()J

    move-result-wide v2

    .line 7
    iget-object v4, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v4}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppChangeLog()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u65b0\u7248\u672c\u5927\u5c0f\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/wsw/cospa/utils/default;->finally(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->do:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->try:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "\u662f\u5426\u5347\u7ea7\u5230%s\u7248\u672c\uff1f"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getForceUpdate()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v2, :cond_3

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->case:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->break:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->class()V

    :cond_4
    return-void
.end method

.method private class()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->new:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->break:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private const()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getTopImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/ye2;

    invoke-direct {v0, p0}, Landroid/support/v4/ye2;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;)V

    invoke-static {v0}, Landroid/support/v4/wi0;->else(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/z2;->new(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/VersionDialogActivity$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/VersionDialogActivity$if;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;)V

    invoke-virtual {v0, v1}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/VersionDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->throw()V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/activity/VersionDialogActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->this:Landroid/widget/ImageView;

    return-object p0
.end method

.method private final()V
    .locals 2

    const v0, 0x7f0904c3

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->do:Landroid/widget/TextView;

    const v0, 0x7f0904be

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->try:Landroid/widget/TextView;

    const v0, 0x7f0900d2

    .line 3
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    const v0, 0x7f090309

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/NumberProgressBar;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

    const v0, 0x7f090237

    .line 5
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->new:Landroid/widget/ImageView;

    const v0, 0x7f090278

    .line 6
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->case:Landroid/widget/LinearLayout;

    const v0, 0x7f09024e

    .line 7
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->this:Landroid/widget/ImageView;

    const v0, 0x7f09048c

    .line 8
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->break:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->do:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 10
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->class:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    return-void
.end method

.method public static synthetic for(Lcom/wsw/cospa/activity/VersionDialogActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->else:I

    return p0
.end method

.method public static synthetic goto(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/bean/AppUpdateInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->while(Ljava/lang/Boolean;)V

    return-void
.end method

.method private import(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->this:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroid/support/v4/z2;->for(ILandroid/content/Context;)I

    move-result v0

    invoke-static {v0, p1}, Landroid/support/v4/h30;->for(II)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 4
    iget-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgressTextColor(I)V

    .line 5
    iget-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

    invoke-virtual {p2, p1}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setReachedBarColor(I)V

    .line 6
    iget-object p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    invoke-static {p1}, Landroid/support/v4/ym;->case(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method private native(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    new-instance v1, Lcom/wsw/cospa/activity/VersionDialogActivity$for;

    invoke-direct {v1, p0, p1}, Lcom/wsw/cospa/activity/VersionDialogActivity$for;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/activity/VersionDialogActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/VersionDialogActivity;->import(II)V

    return-void
.end method

.method private super()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-static {v0}, Landroid/support/v4/z2;->do(Lcom/wsw/cospa/bean/AppUpdateInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-static {v0}, Landroid/support/v4/z2;->case(Lcom/wsw/cospa/bean/AppUpdateInfo;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/z2;->public(Landroid/content/Context;Ljava/io/File;)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getForceUpdate()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-static {v0}, Landroid/support/v4/z2;->case(Lcom/wsw/cospa/bean/AppUpdateInfo;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->native(Ljava/io/File;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {p0, p0, v0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->break(Landroid/content/Context;Lcom/wsw/cospa/bean/AppUpdateInfo;)V

    :goto_0
    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/activity/VersionDialogActivity;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    return-object p0
.end method

.method private synthetic throw()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/jh0;->class(Landroidx/fragment/app/FragmentActivity;)Landroid/support/v4/ph0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getTopImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/for;->m1(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/else;->C0()Lcom/bumptech/glide/request/FutureTarget;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {v0}, Landroidx/palette/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/VersionDialogActivity$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/VersionDialogActivity$do;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;)V

    invoke-virtual {v0, v1}, Landroidx/palette/graphics/Palette$Builder;->generate(Landroidx/palette/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic try(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/widget/view/NumberProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

    return-object p0
.end method

.method private synthetic while(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->super()V

    :cond_0
    return-void
.end method


# virtual methods
.method public break(Landroid/content/Context;Lcom/wsw/cospa/bean/AppUpdateInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->if:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppSize()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->for:Lcom/wsw/cospa/widget/view/NumberProgressBar;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_2
    new-instance v2, Ljava/io/File;

    sget-object v4, Landroid/support/v4/wq;->native:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 9
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    .line 11
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/support/v4/wq;->native:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v5, v3}, Lcom/wsw/cospa/utils/static;->if(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    .line 12
    :cond_4
    new-instance v2, Lcom/wsw/cospa/activity/VersionDialogActivity$new;

    invoke-direct {v2, p0, v0, v1}, Lcom/wsw/cospa/activity/VersionDialogActivity$new;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;J)V

    .line 13
    new-instance v2, Lcom/wsw/cospa/activity/VersionDialogActivity$try;

    invoke-direct {v2, p0, v0, v1}, Lcom/wsw/cospa/activity/VersionDialogActivity$try;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;J)V

    .line 14
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 15
    invoke-virtual {p2}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 17
    invoke-static {v2}, Lcom/wsw/cospa/utils/download/do;->if(Lcom/wsw/cospa/utils/download/ProgressResponseListener;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p2

    new-instance v0, Lcom/wsw/cospa/activity/VersionDialogActivity$case;

    invoke-direct {v0, p0, v4, p1}, Lcom/wsw/cospa/activity/VersionDialogActivity$case;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;Ljava/io/File;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getForceUpdate()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900d2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->class:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->while([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    .line 3
    invoke-static {p0}, Landroid/support/v4/mp1;->do(Landroidx/lifecycle/LifecycleOwner;)Lcom/uber/autodispose/AutoDisposeConverter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/new;->as(Lio/reactivex/ObservableConverter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uber/autodispose/ObservableSubscribeProxy;

    new-instance v0, Landroid/support/v4/xe2;

    invoke-direct {v0, p0}, Landroid/support/v4/xe2;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity;)V

    .line 4
    invoke-interface {p1, v0}, Lcom/uber/autodispose/ObservableSubscribeProxy;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->const:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f090237

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    const v0, 0x7f09048c

    if-ne p1, v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch:Lcom/wsw/cospa/bean/AppUpdateInfo;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/AppUpdateInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/z2;->throws(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00a9

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->final()V

    .line 5
    invoke-direct {p0}, Lcom/wsw/cospa/activity/VersionDialogActivity;->catch()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->const:Landroid/support/v4/cq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/cq;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->const:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->dispose()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->const:Landroid/support/v4/cq;

    invoke-virtual {v0}, Landroid/support/v4/cq;->if()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/wsw/cospa/activity/VersionDialogActivity;->const:Landroid/support/v4/cq;

    :cond_0
    return-void
.end method
