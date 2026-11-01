.class Lcom/luck/picture/lib/compress/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/compress/new;->while(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic for:Lcom/luck/picture/lib/compress/new;

.field public final synthetic if:Lcom/luck/picture/lib/compress/InputStreamProvider;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    iput-object p2, p0, Lcom/luck/picture/lib/compress/new$do;->do:Landroid/content/Context;

    iput-object p3, p0, Lcom/luck/picture/lib/compress/new$do;->if:Lcom/luck/picture/lib/compress/InputStreamProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x2

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/new;->else(Lcom/luck/picture/lib/compress/new;)I

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v1}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->do:Landroid/content/Context;

    iget-object v4, p0, Lcom/luck/picture/lib/compress/new$do;->if:Lcom/luck/picture/lib/compress/InputStreamProvider;

    invoke-static {v1, v2, v4}, Lcom/luck/picture/lib/compress/new;->do(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->if(Lcom/luck/picture/lib/compress/new;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->if(Lcom/luck/picture/lib/compress/new;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 5
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->if(Lcom/luck/picture/lib/compress/new;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v5}, Lcom/luck/picture/lib/compress/new;->case(Lcom/luck/picture/lib/compress/new;)I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-static {v5}, Landroid/support/v4/rd1;->goto(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 8
    :goto_0
    invoke-virtual {v2, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->final(Z)V

    if-eqz v5, :cond_1

    const-string v5, ""

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v2, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->const(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->case(Lcom/luck/picture/lib/compress/new;)I

    move-result v2

    iget-object v5, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v5}, Lcom/luck/picture/lib/compress/new;->if(Lcom/luck/picture/lib/compress/new;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    .line 11
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v3}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v6}, Lcom/luck/picture/lib/compress/new;->if(Lcom/luck/picture/lib/compress/new;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v3}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v3, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 13
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v3}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 14
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v2}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/compress/new$do;->for:Lcom/luck/picture/lib/compress/new;

    invoke-static {v3}, Lcom/luck/picture/lib/compress/new;->goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_4
    return-void
.end method
