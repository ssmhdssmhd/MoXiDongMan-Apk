.class public Lcom/luck/picture/lib/PictureVideoPlayActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private const:Ljava/lang/String;

.field private final:Landroid/widget/ImageView;

.field private import:I

.field private super:Landroid/widget/MediaController;

.field private throw:Landroid/widget/VideoView;

.field private while:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->const:Ljava/lang/String;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->import:I

    return-void
.end method

.method public static synthetic finally(Lcom/luck/picture/lib/PictureVideoPlayActivity;)Landroid/widget/VideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    return-object p0
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/PictureVideoPlayActivity$do;

    invoke-direct {v0, p0, p1}, Lcom/luck/picture/lib/PictureVideoPlayActivity$do;-><init>(Lcom/luck/picture/lib/PictureVideoPlayActivity;Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->iv_play:I

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->while:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->while:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_activity_video_play:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "video_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->const:Ljava/lang/String;

    .line 5
    sget p1, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->final:Landroid/widget/ImageView;

    .line 6
    sget p1, Lcom/luck/picture/lib/R$id;->video_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/VideoView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    const/high16 v0, -0x1000000

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    .line 8
    sget p1, Lcom/luck/picture/lib/R$id;->iv_play:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->while:Landroid/widget/ImageView;

    .line 9
    new-instance p1, Landroid/widget/MediaController;

    invoke-direct {p1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->super:Landroid/widget/MediaController;

    .line 10
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 11
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {p1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 12
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->super:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 13
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->final:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object p1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->while:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->super:Landroid/widget/MediaController;

    .line 2
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    .line 3
    iput-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->while:Landroid/widget/ImageView;

    .line 4
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->import:I

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/PictureVideoPlayActivity$if;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureVideoPlayActivity$if;-><init>(Lcom/luck/picture/lib/PictureVideoPlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->import:I

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->seekTo(I)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->import:I

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->const:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureVideoPlayActivity;->throw:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 3
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method
