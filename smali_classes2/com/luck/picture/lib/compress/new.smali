.class public Lcom/luck/picture/lib/compress/new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/compress/new$if;
    }
.end annotation


# static fields
.field private static final class:Ljava/lang/String; = "Luban"

.field private static final const:Ljava/lang/String; = "luban_disk_cache"

.field private static final final:I = 0x0

.field private static final super:I = 0x1

.field private static final throw:I = 0x2

.field private static final while:I = 0x3


# instance fields
.field private break:I

.field private case:Lcom/luck/picture/lib/compress/CompressionPredicate;

.field private catch:Landroid/os/Handler;

.field private do:Ljava/lang/String;

.field private else:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/compress/InputStreamProvider;",
            ">;"
        }
    .end annotation
.end field

.field private for:I

.field private goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private if:Z

.field private new:Lcom/luck/picture/lib/compress/OnRenameListener;

.field private this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private try:Lcom/luck/picture/lib/compress/OnCompressListener;


# direct methods
.method private constructor <init>(Lcom/luck/picture/lib/compress/new$if;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/luck/picture/lib/compress/new;->break:I

    .line 4
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->do(Lcom/luck/picture/lib/compress/new$if;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/new;->goto:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->if(Lcom/luck/picture/lib/compress/new$if;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/new;->this:Ljava/util/List;

    .line 6
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->new(Lcom/luck/picture/lib/compress/new$if;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->try(Lcom/luck/picture/lib/compress/new$if;)Lcom/luck/picture/lib/compress/OnRenameListener;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/new;->new:Lcom/luck/picture/lib/compress/OnRenameListener;

    .line 8
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->case(Lcom/luck/picture/lib/compress/new$if;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/new;->else:Ljava/util/List;

    .line 9
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->else(Lcom/luck/picture/lib/compress/new$if;)Lcom/luck/picture/lib/compress/OnCompressListener;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/compress/new;->try:Lcom/luck/picture/lib/compress/OnCompressListener;

    .line 10
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->goto(Lcom/luck/picture/lib/compress/new$if;)I

    move-result v0

    iput v0, p0, Lcom/luck/picture/lib/compress/new;->for:I

    .line 11
    invoke-static {p1}, Lcom/luck/picture/lib/compress/new$if;->this(Lcom/luck/picture/lib/compress/new$if;)Lcom/luck/picture/lib/compress/CompressionPredicate;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new;->case:Lcom/luck/picture/lib/compress/CompressionPredicate;

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new;->catch:Landroid/os/Handler;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/luck/picture/lib/compress/new$if;Lcom/luck/picture/lib/compress/new$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/new;-><init>(Lcom/luck/picture/lib/compress/new$if;)V

    return-void
.end method

.method private break(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/luck/picture/lib/compress/do;->SINGLE:Lcom/luck/picture/lib/compress/do;

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/compress/do;->extSuffix(Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/luck/picture/lib/compress/new;->super(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/luck/picture/lib/compress/new;->new:Lcom/luck/picture/lib/compress/OnRenameListener;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/luck/picture/lib/compress/OnRenameListener;->rename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {p0, p1, v1}, Lcom/luck/picture/lib/compress/new;->throw(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/compress/new;->case:Lcom/luck/picture/lib/compress/CompressionPredicate;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/luck/picture/lib/compress/CompressionPredicate;->apply(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/luck/picture/lib/compress/new;->for:I

    .line 7
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/luck/picture/lib/compress/do;->needCompress(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    new-instance p1, Lcom/luck/picture/lib/compress/if;

    iget-boolean v0, p0, Lcom/luck/picture/lib/compress/new;->if:Z

    invoke-direct {p1, p2, v1, v0}, Lcom/luck/picture/lib/compress/if;-><init>(Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/if;->do()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lcom/luck/picture/lib/compress/new;->for:I

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/luck/picture/lib/compress/do;->needCompress(ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/luck/picture/lib/compress/if;

    iget-boolean v0, p0, Lcom/luck/picture/lib/compress/new;->if:Z

    invoke-direct {p1, p2, v1, v0}, Lcom/luck/picture/lib/compress/if;-><init>(Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;Z)V

    .line 11
    invoke-virtual {p1}, Lcom/luck/picture/lib/compress/if;->do()Ljava/io/File;

    move-result-object p1

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/io/File;

    .line 12
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public static synthetic case(Lcom/luck/picture/lib/compress/new;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/compress/new;->break:I

    return p0
.end method

.method private catch(Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/luck/picture/lib/compress/if;

    sget-object v1, Lcom/luck/picture/lib/compress/do;->SINGLE:Lcom/luck/picture/lib/compress/do;

    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/compress/do;->extSuffix(Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/luck/picture/lib/compress/new;->super(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-boolean v1, p0, Lcom/luck/picture/lib/compress/new;->if:Z

    invoke-direct {v0, p1, p2, v1}, Lcom/luck/picture/lib/compress/if;-><init>(Lcom/luck/picture/lib/compress/InputStreamProvider;Ljava/io/File;Z)V

    invoke-virtual {v0}, Lcom/luck/picture/lib/compress/if;->do()Ljava/io/File;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p1}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    .line 3
    throw p2
.end method

.method private class(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/compress/new;->else:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/compress/InputStreamProvider;

    invoke-direct {p0, p1, v2}, Lcom/luck/picture/lib/compress/new;->this(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private const(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    const-string v0, "luban_disk_cache"

    .line 1
    invoke-static {p1, v0}, Lcom/luck/picture/lib/compress/new;->final(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic do(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/new;->this(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic else(Lcom/luck/picture/lib/compress/new;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/luck/picture/lib/compress/new;->break:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/luck/picture/lib/compress/new;->break:I

    return v0
.end method

.method private static final(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Luban"

    .line 4
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-object v0
.end method

.method public static synthetic for(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/new;->while(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic goto(Lcom/luck/picture/lib/compress/new;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new;->catch:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic if(Lcom/luck/picture/lib/compress/new;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/compress/new;->this:Ljava/util/List;

    return-object p0
.end method

.method public static import(Landroid/content/Context;)Lcom/luck/picture/lib/compress/new$if;
    .locals 1

    .line 1
    new-instance v0, Lcom/luck/picture/lib/compress/new$if;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/compress/new$if;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic new(Lcom/luck/picture/lib/compress/new;Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/new;->catch(Lcom/luck/picture/lib/compress/InputStreamProvider;Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private super(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/new;->const(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p2, ".jpg"

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private this(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/luck/picture/lib/compress/new;->break(Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p2}, Lcom/luck/picture/lib/compress/InputStreamProvider;->close()V

    .line 3
    throw p1
.end method

.method private throw(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/new;->const(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->do:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public static synthetic try(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/compress/new;->class(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private while(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->else:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/compress/new;->goto:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->try:Lcom/luck/picture/lib/compress/OnCompressListener;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->try:Lcom/luck/picture/lib/compress/OnCompressListener;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "image file cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->else:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/luck/picture/lib/compress/new;->break:I

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/compress/InputStreamProvider;

    .line 7
    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/luck/picture/lib/compress/new$do;

    invoke-direct {v3, p0, p1, v1}, Lcom/luck/picture/lib/compress/new$do;-><init>(Lcom/luck/picture/lib/compress/new;Landroid/content/Context;Lcom/luck/picture/lib/compress/InputStreamProvider;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/compress/new;->try:Lcom/luck/picture/lib/compress/OnCompressListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v0}, Lcom/luck/picture/lib/compress/OnCompressListener;->onStart()V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/luck/picture/lib/compress/OnCompressListener;->onSuccess(Ljava/util/List;)V

    :goto_0
    return v1
.end method
