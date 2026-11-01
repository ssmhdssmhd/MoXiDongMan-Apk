.class Lcc/shinichi/library/view/ImagePreviewActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewActivity;->static(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;ZIJJ)V
    .locals 0

    const-string p4, "url"

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p2}, Lcc/shinichi/library/view/ImagePreviewActivity;->new(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/support/v4/vi0$do;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4
    iput p1, p2, Landroid/os/Message;->what:I

    .line 5
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->new(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/support/v4/vi0$do;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p2}, Lcc/shinichi/library/view/ImagePreviewActivity;->final(Lcc/shinichi/library/view/ImagePreviewActivity;)I

    move-result p2

    if-ne p3, p2, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p2, p3}, Lcc/shinichi/library/view/ImagePreviewActivity;->super(Lcc/shinichi/library/view/ImagePreviewActivity;I)I

    .line 9
    iget-object p2, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p2}, Lcc/shinichi/library/view/ImagePreviewActivity;->new(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/support/v4/vi0$do;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    .line 10
    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 11
    invoke-virtual {p5, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "progress"

    .line 12
    invoke-virtual {p5, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x2

    .line 13
    iput p1, p2, Landroid/os/Message;->what:I

    .line 14
    iput-object p5, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$for;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->new(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/support/v4/vi0$do;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
