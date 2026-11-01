.class Lcc/shinichi/library/tool/image/do$do;
.super Landroid/support/v4/za0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/tool/image/do;->do(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/content/Context;

.field public final synthetic if:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/tool/image/do$do;->do:Landroid/content/Context;

    iput-object p2, p0, Lcc/shinichi/library/tool/image/do$do;->if:Ljava/lang/String;

    invoke-direct {p0}, Landroid/support/v4/za0;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 4
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const-string v0, "."

    .line 1
    invoke-super {p0, p1, p2}, Landroid/support/v4/za0;->do(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p2

    invoke-virtual {p2}, Lcc/shinichi/library/do;->else()Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    :try_start_0
    iget-object v1, p0, Lcc/shinichi/library/tool/image/do$do;->if:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcc/shinichi/library/tool/image/do$do;->if:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    invoke-static {v1}, Landroid/support/v4/pw0;->for(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcc/shinichi/library/tool/image/if;->try(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcc/shinichi/library/tool/file/FileUtil;->while(Ljava/lang/String;)Z

    .line 13
    invoke-static {p1, p2, v0}, Lcc/shinichi/library/tool/file/FileUtil;->this(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object p1

    iget-object v1, p0, Lcc/shinichi/library/tool/image/do$do;->do:Landroid/content/Context;

    const-string v2, "\u6210\u529f\u4fdd\u5b58\u5230 "

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcc/shinichi/library/tool/file/SingleMediaScanner;

    iget-object v1, p0, Lcc/shinichi/library/tool/image/do$do;->do:Landroid/content/Context;

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcc/shinichi/library/tool/image/do$do$do;

    invoke-direct {v0, p0}, Lcc/shinichi/library/tool/image/do$do$do;-><init>(Lcc/shinichi/library/tool/image/do$do;)V

    invoke-direct {p1, v1, p2, v0}, Lcc/shinichi/library/tool/file/SingleMediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;Lcc/shinichi/library/tool/file/SingleMediaScanner$ScanListener;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object p1

    iget-object p2, p0, Lcc/shinichi/library/tool/image/do$do;->do:Landroid/content/Context;

    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p1, p2, v0}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/za0;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object p1

    iget-object v0, p0, Lcc/shinichi/library/tool/image/do$do;->do:Landroid/content/Context;

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    invoke-virtual {p1, v0, v1}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/za0;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 2
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object v0

    iget-object v1, p0, Lcc/shinichi/library/tool/image/do$do;->do:Landroid/content/Context;

    const-string v2, "\u5f00\u59cb\u4e0b\u8f7d..."

    invoke-virtual {v0, v1, v2}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Landroid/support/v4/za0;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/transition/Transition;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcc/shinichi/library/tool/image/do$do;->do(Ljava/io/File;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
