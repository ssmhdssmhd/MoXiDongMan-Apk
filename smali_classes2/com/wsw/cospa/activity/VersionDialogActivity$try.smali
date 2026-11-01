.class Lcom/wsw/cospa/activity/VersionDialogActivity$try;
.super Lcom/wsw/cospa/utils/download/try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/VersionDialogActivity;->break(Landroid/content/Context;Lcom/wsw/cospa/bean/AppUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic for:J

.field public final synthetic new:Lcom/wsw/cospa/activity/VersionDialogActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/VersionDialogActivity;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try;->new:Lcom/wsw/cospa/activity/VersionDialogActivity;

    iput-wide p2, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try;->for:J

    invoke-direct {p0}, Lcom/wsw/cospa/utils/download/try;-><init>()V

    return-void
.end method


# virtual methods
.method public do(JJZ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytesRead:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentLength:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p5}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long p5, p1, v2

    if-lez p5, :cond_1

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x64

    cmp-long p5, p3, v2

    if-eqz p5, :cond_0

    .line 4
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    mul-long v2, p1, v4

    div-long/2addr v2, p3

    invoke-virtual {p5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "% done"

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p3, "================================"

    .line 5
    invoke-static {v1, p3}, Landroid/support/v4/vv0;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p3, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try;->new:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try;->new:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {p3}, Lcom/wsw/cospa/activity/VersionDialogActivity;->try(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/widget/view/NumberProgressBar;

    move-result-object p3

    mul-long p1, p1, v4

    iget-wide p4, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try;->for:J

    div-long/2addr p1, p4

    long-to-int p2, p1

    invoke-virtual {p3, p2}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setProgress(I)V

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/VersionDialogActivity$try;->new:Lcom/wsw/cospa/activity/VersionDialogActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/VersionDialogActivity;->try(Lcom/wsw/cospa/activity/VersionDialogActivity;)Lcom/wsw/cospa/widget/view/NumberProgressBar;

    move-result-object p1

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/NumberProgressBar;->setMax(I)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/wsw/cospa/activity/VersionDialogActivity$try$do;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/activity/VersionDialogActivity$try$do;-><init>(Lcom/wsw/cospa/activity/VersionDialogActivity$try;)V

    invoke-static {p1}, Landroid/support/v4/wi0;->try(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
