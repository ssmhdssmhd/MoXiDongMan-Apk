.class public Lcc/shinichi/library/glide/do;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcc/shinichi/library/glide/do$do;

    invoke-direct {v1, p0}, Lcc/shinichi/library/glide/do$do;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static for(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/support/v4/ow;

    new-instance v1, Lcom/bumptech/glide/load/model/if;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/model/if;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/support/v4/b70;->do()Landroid/support/v4/b70;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/ow;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    .line 2
    new-instance p1, Landroid/support/v4/qr1;

    invoke-direct {p1}, Landroid/support/v4/qr1;-><init>()V

    .line 3
    invoke-virtual {p1, v0}, Landroid/support/v4/qr1;->do(Lcom/bumptech/glide/load/Key;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "image_manager_disk_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v1, 0xfa00000

    const/4 p0, 0x1

    .line 5
    invoke-static {v0, p0, p0, v1, v2}, Lcom/bumptech/glide/disklrucache/do;->throws(Ljava/io/File;IIJ)Lcom/bumptech/glide/disklrucache/do;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/do;->native(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/do$try;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/do$try;->if(I)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static if(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->new(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/Glide;->for()V

    return-void
.end method
