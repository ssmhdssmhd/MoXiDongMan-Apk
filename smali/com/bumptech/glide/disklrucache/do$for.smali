.class public final Lcom/bumptech/glide/disklrucache/do$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/disklrucache/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "for"
.end annotation


# instance fields
.field private final do:Lcom/bumptech/glide/disklrucache/do$new;

.field private for:Z

.field private final if:[Z

.field public final synthetic new:Lcom/bumptech/glide/disklrucache/do;


# direct methods
.method private constructor <init>(Lcom/bumptech/glide/disklrucache/do;Lcom/bumptech/glide/disklrucache/do$new;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    .line 4
    invoke-static {p2}, Lcom/bumptech/glide/disklrucache/do$new;->try(Lcom/bumptech/glide/disklrucache/do$new;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/do;->new(Lcom/bumptech/glide/disklrucache/do;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/do$for;->if:[Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bumptech/glide/disklrucache/do;Lcom/bumptech/glide/disklrucache/do$new;Lcom/bumptech/glide/disklrucache/do$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/do$for;-><init>(Lcom/bumptech/glide/disklrucache/do;Lcom/bumptech/glide/disklrucache/do$new;)V

    return-void
.end method

.method public static synthetic for(Lcom/bumptech/glide/disklrucache/do$for;)Lcom/bumptech/glide/disklrucache/do$new;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    return-object p0
.end method

.method private goto(I)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/do$new;->else(Lcom/bumptech/glide/disklrucache/do$new;)Lcom/bumptech/glide/disklrucache/do$for;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/do$new;->try(Lcom/bumptech/glide/disklrucache/do$new;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    invoke-virtual {v3, p1}, Lcom/bumptech/glide/disklrucache/do$new;->break(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 6
    :catch_0
    monitor-exit v0

    return-object v2

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public static synthetic new(Lcom/bumptech/glide/disklrucache/do$for;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/do$for;->if:[Z

    return-object p0
.end method


# virtual methods
.method public case(I)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/do$new;->else(Lcom/bumptech/glide/disklrucache/do$new;)Lcom/bumptech/glide/disklrucache/do$for;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/do$new;->try(Lcom/bumptech/glide/disklrucache/do$new;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->if:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->do:Lcom/bumptech/glide/disklrucache/do$new;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/disklrucache/do$new;->catch(I)Ljava/io/File;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/do;->case(Lcom/bumptech/glide/disklrucache/do;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/do;->case(Lcom/bumptech/glide/disklrucache/do;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 8
    :cond_1
    monitor-exit v0

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public do()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/do;->else(Lcom/bumptech/glide/disklrucache/do;Lcom/bumptech/glide/disklrucache/do$for;Z)V

    return-void
.end method

.method public else(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/do$for;->goto(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/do;->for(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public if()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/disklrucache/do$for;->for:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/disklrucache/do$for;->do()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public this(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/disklrucache/do$for;->case(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2
    new-instance p1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lcom/bumptech/glide/disklrucache/for;->if:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/for;->do(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/disklrucache/for;->do(Ljava/io/Closeable;)V

    .line 5
    throw p2
.end method

.method public try()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/do$for;->new:Lcom/bumptech/glide/disklrucache/do;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/do;->else(Lcom/bumptech/glide/disklrucache/do;Lcom/bumptech/glide/disklrucache/do$for;Z)V

    .line 2
    iput-boolean v1, p0, Lcom/bumptech/glide/disklrucache/do$for;->for:Z

    return-void
.end method
