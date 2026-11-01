.class final Lcom/facebook/soloader/const$if$do;
.super Lcom/facebook/soloader/static$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/soloader/const$if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field private do:I

.field public final synthetic if:Lcom/facebook/soloader/const$if;


# direct methods
.method private constructor <init>(Lcom/facebook/soloader/const$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/soloader/const$if$do;->if:Lcom/facebook/soloader/const$if;

    invoke-direct {p0}, Lcom/facebook/soloader/static$try;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/soloader/const$if;Lcom/facebook/soloader/const$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/facebook/soloader/const$if$do;-><init>(Lcom/facebook/soloader/const$if;)V

    return-void
.end method


# virtual methods
.method public do()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/soloader/const$if$do;->do:I

    iget-object v1, p0, Lcom/facebook/soloader/const$if$do;->if:Lcom/facebook/soloader/const$if;

    invoke-static {v1}, Lcom/facebook/soloader/const$if;->for(Lcom/facebook/soloader/const$if;)[Lcom/facebook/soloader/const$for;

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
    iget-object v0, p0, Lcom/facebook/soloader/const$if$do;->if:Lcom/facebook/soloader/const$if;

    invoke-static {v0}, Lcom/facebook/soloader/const$if;->for(Lcom/facebook/soloader/const$if;)[Lcom/facebook/soloader/const$for;

    move-result-object v0

    iget v1, p0, Lcom/facebook/soloader/const$if$do;->do:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/const$if$do;->do:I

    aget-object v0, v0, v1

    .line 2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lcom/facebook/soloader/const$for;->for:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 3
    :try_start_0
    new-instance v2, Lcom/facebook/soloader/static$new;

    invoke-direct {v2, v0, v1}, Lcom/facebook/soloader/static$new;-><init>(Lcom/facebook/soloader/static$if;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v0
.end method
