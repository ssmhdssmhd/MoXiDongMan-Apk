.class final Lcom/facebook/soloader/final$for$do;
.super Lcom/facebook/soloader/static$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/final$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field private do:I

.field public final synthetic if:Lcom/facebook/soloader/final$for;


# direct methods
.method private constructor <init>(Lcom/facebook/soloader/final$for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/final$for$do;->if:Lcom/facebook/soloader/final$for;

    invoke-direct {p0}, Lcom/facebook/soloader/static$try;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/soloader/final$for;Lcom/facebook/soloader/final$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/soloader/final$for$do;-><init>(Lcom/facebook/soloader/final$for;)V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/final$for$do;->if:Lcom/facebook/soloader/final$for;

    invoke-virtual {v0}, Lcom/facebook/soloader/final$for;->try()[Lcom/facebook/soloader/final$if;

    .line 2
    iget v0, p0, Lcom/facebook/soloader/final$for$do;->do:I

    iget-object v1, p0, Lcom/facebook/soloader/final$for$do;->if:Lcom/facebook/soloader/final$for;

    invoke-static {v1}, Lcom/facebook/soloader/final$for;->for(Lcom/facebook/soloader/final$for;)[Lcom/facebook/soloader/final$if;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public if()Lcom/facebook/soloader/static$new;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/final$for$do;->if:Lcom/facebook/soloader/final$for;

    invoke-virtual {v0}, Lcom/facebook/soloader/final$for;->try()[Lcom/facebook/soloader/final$if;

    .line 2
    iget-object v0, p0, Lcom/facebook/soloader/final$for$do;->if:Lcom/facebook/soloader/final$for;

    invoke-static {v0}, Lcom/facebook/soloader/final$for;->for(Lcom/facebook/soloader/final$for;)[Lcom/facebook/soloader/final$if;

    move-result-object v0

    iget v1, p0, Lcom/facebook/soloader/final$for$do;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/final$for$do;->do:I

    aget-object v0, v0, v1

    .line 3
    iget-object v1, p0, Lcom/facebook/soloader/final$for$do;->if:Lcom/facebook/soloader/final$for;

    invoke-static {v1}, Lcom/facebook/soloader/final$for;->new(Lcom/facebook/soloader/final$for;)Ljava/util/zip/ZipFile;

    move-result-object v1

    iget-object v2, v0, Lcom/facebook/soloader/final$if;->for:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 4
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/static$new;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/static$new;-><init>(Lcom/facebook/soloader/static$if;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v0
.end method
