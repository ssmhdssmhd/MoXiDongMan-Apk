.class Lcom/google/common/io/const$do;
.super Lcom/google/common/io/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/const;-><init>(IZLjava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/io/const;


# direct methods
.method public constructor <init>(Lcom/google/common/io/const;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/io/const$do;->do:Lcom/google/common/io/const;

    invoke-direct {p0}, Lcom/google/common/io/new;-><init>()V

    return-void
.end method


# virtual methods
.method public const()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/io/const$do;->do:Lcom/google/common/io/const;

    invoke-static {v0}, Lcom/google/common/io/const;->do(Lcom/google/common/io/const;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public finalize()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/const$do;->do:Lcom/google/common/io/const;

    invoke-virtual {v0}, Lcom/google/common/io/const;->try()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :goto_0
    return-void
.end method
