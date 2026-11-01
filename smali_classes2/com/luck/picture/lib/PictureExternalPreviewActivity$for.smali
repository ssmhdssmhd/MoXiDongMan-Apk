.class Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureExternalPreviewActivity;->synchronized(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/String;

.field public final synthetic for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

.field public final synthetic if:Landroid/support/v4/gt;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;Landroid/support/v4/gt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iput-object p2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->do:Ljava/lang/String;

    iput-object p3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->if:Landroid/support/v4/gt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string p1, "\n"

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureBaseActivity;->static()V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/support/v4/rd1;->goto(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    new-instance v0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->do:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;-><init>(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->protected(Lcom/luck/picture/lib/PictureExternalPreviewActivity;Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    .line 4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->interface(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Lcom/luck/picture/lib/PictureExternalPreviewActivity$try;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-static {v2}, Lcom/luck/picture/lib/PictureExternalPreviewActivity;->transient(Lcom/luck/picture/lib/PictureExternalPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v0, v1, v2}, Lcom/luck/picture/lib/tools/do;->try(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->do:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/luck/picture/lib/tools/do;->if(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v4, Lcom/luck/picture/lib/R$string;->picture_save_success:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureBaseActivity;->else()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    sget v4, Lcom/luck/picture/lib/R$string;->picture_save_error:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->for:Lcom/luck/picture/lib/PictureExternalPreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureBaseActivity;->else()V

    .line 13
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureExternalPreviewActivity$for;->if:Landroid/support/v4/gt;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
