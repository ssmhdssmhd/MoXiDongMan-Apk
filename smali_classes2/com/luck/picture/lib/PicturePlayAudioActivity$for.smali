.class Lcom/luck/picture/lib/PicturePlayAudioActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/luck/picture/lib/PicturePlayAudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PicturePlayAudioActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PicturePlayAudioActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->private(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->abstract(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->private(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/support/v4/cx;->for(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->continue(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->private(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->continue(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->private(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->strictfp(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePlayAudioActivity;->private(Lcom/luck/picture/lib/PicturePlayAudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/support/v4/cx;->for(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePlayAudioActivity$for;->do:Lcom/luck/picture/lib/PicturePlayAudioActivity;

    iget-object v1, v0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->switch:Landroid/os/Handler;

    iget-object v0, v0, Lcom/luck/picture/lib/PicturePlayAudioActivity;->throws:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
