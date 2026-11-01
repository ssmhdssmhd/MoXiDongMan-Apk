.class public Lcom/luck/picture/lib/PictureExternalPreviewActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;,
        Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;
    }
.end annotation


# instance fields
.field private const:Landroid/widget/ImageButton;

.field private final:Landroid/widget/TextView;

.field private import:Ljava/lang/String;

.field private native:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

.field private public:Landroid/view/LayoutInflater;

.field private return:Lcom/luck/picture/lib/permissions/do;

.field private static:Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

.field private super:Lcom/luck/picture/lib/widget/PreviewViewPager;

.field private switch:Landroid/os/Handler;

.field private throw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private while:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->throw:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->while:I

    .line 4
    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$new;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$new;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->switch:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic abstract(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->implements(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V

    return-void
.end method

.method public static synthetic continue(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/permissions/do;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->return:Lcom/luck/picture/lib/permissions/do;

    return-object p0
.end method

.method public static synthetic finally(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->throw:Ljava/util/List;

    return-object p0
.end method

.method private implements(Landroid/graphics/Bitmap;Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;)V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setQuickScaleEnabled(Z)V

    .line 2
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setZoomEnabled(Z)V

    .line 3
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setPanEnabled(Z)V

    const/16 v0, 0x64

    .line 4
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDuration(I)V

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setMinimumScaleType(I)V

    .line 6
    invoke-virtual {p2, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->setDoubleTapZoomDpi(I)V

    .line 7
    invoke-static {p1}, Landroid/support/v4/vl0;->for(Landroid/graphics/Bitmap;)Landroid/support/v4/vl0;

    move-result-object p1

    new-instance v0, Landroid/support/v4/yl0;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/support/v4/yl0;-><init>(FLandroid/graphics/PointF;I)V

    invoke-virtual {p2, p1, v0}, Lcom/luck/picture/lib/widget/longimage/SubsamplingScaleImageView;->b0(Landroid/support/v4/vl0;Landroid/support/v4/yl0;)V

    return-void
.end method

.method private instanceof()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->final:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->while:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->throw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->native:Lcom/luck/picture/lib/PictureExternalPreviewActivity$SimpleFragmentAdapter;

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->super:Lcom/luck/picture/lib/widget/PreviewViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->super:Lcom/luck/picture/lib/widget/PreviewViewPager;

    iget v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->while:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->super:Lcom/luck/picture/lib/widget/PreviewViewPager;

    new-instance v1, Lcom/luck/picture/lib/PictureExternalPreviewActivity$do;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$do;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public static synthetic interface(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->static:Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    return-object p0
.end method

.method public static synthetic package(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->final:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic private(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->public:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static synthetic protected(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->static:Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    return-object p1
.end method

.method public static synthetic strictfp(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/permissions/do;)Lcom/luck/picture/lib/permissions/do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->return:Lcom/luck/picture/lib/permissions/do;

    return-object p1
.end method

.method private synchronized(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/gt;

    .line 2
    invoke-static {p0}, Landroid/support/v4/is1;->for(Landroid/content/Context;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v2, v0, 0x4

    .line 3
    invoke-static {p0}, Landroid/support/v4/is1;->if(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v3, v0, 0x4

    sget v4, Lcom/luck/picture/lib/R$layout;->picture_wind_base_dialog_xml:I

    sget v5, Lcom/luck/picture/lib/R$style;->Theme_dialog:I

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/gt;-><init>(Landroid/content/Context;IIII)V

    .line 4
    sget v0, Lcom/luck/picture/lib/R$id;->btn_cancel:I

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 5
    sget v1, Lcom/luck/picture/lib/R$id;->btn_commit:I

    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 6
    sget v2, Lcom/luck/picture/lib/R$id;->tv_title:I

    invoke-virtual {v6, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 7
    sget v3, Lcom/luck/picture/lib/R$id;->tv_content:I

    invoke-virtual {v6, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 8
    sget v4, Lcom/luck/picture/lib/R$string;->picture_prompt:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    sget v2, Lcom/luck/picture/lib/R$string;->picture_prompt_content:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    new-instance v2, Lcom/luck/picture/lib/PictureExternalPreviewActivity$if;

    invoke-direct {v2, p0, v6}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$if;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Landroid/support/v4/gt;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;

    invoke-direct {v0, p0, p1, v6}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;Landroid/support/v4/gt;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic transient(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->import:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic volatile(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->synchronized(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 11

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".png"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->import:Ljava/lang/String;

    .line 4
    invoke-static {p0, p1, v1}, Lcom/luck/picture/lib/tools/do;->try(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 6
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 7
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 8
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_0

    .line 9
    invoke-virtual {v0, v1, v5, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/2addr v6, v7

    int-to-long v7, v6

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    div-long/2addr v7, v9

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 12
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 13
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->switch:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc8

    .line 14
    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->switch:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/luck/picture/lib/R$string;->picture_save_error:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    sget v0, Lcom/luck/picture/lib/R$anim;->a3:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    sget p1, Lcom/luck/picture/lib/R$anim;->a3:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_activity_external_preview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->public:Landroid/view/LayoutInflater;

    .line 4
    sget p1, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->final:Landroid/widget/TextView;

    .line 5
    sget p1, Lcom/luck/picture/lib/R$id;->left_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->const:Landroid/widget/ImageButton;

    .line 6
    sget p1, Lcom/luck/picture/lib/R$id;->preview_pager:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/widget/PreviewViewPager;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->super:Lcom/luck/picture/lib/widget/PreviewViewPager;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->while:I

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "directory_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->import:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "previewSelectList"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->throw:Ljava/util/List;

    .line 10
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->const:Landroid/widget/ImageButton;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->instanceof()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->static:Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->switch:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->static:Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    :cond_0
    return-void
.end method
