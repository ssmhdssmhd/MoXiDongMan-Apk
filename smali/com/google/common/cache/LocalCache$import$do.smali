.class Lcom/google/common/cache/LocalCache$import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/LocalCache$import;->loadAsync(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$const;Lcom/google/common/cache/for;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic for:Lcom/google/common/cache/LocalCache$const;

.field public final synthetic if:I

.field public final synthetic new:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic try:Lcom/google/common/cache/LocalCache$import;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/LocalCache$import;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$const;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$import$do;->try:Lcom/google/common/cache/LocalCache$import;

    iput-object p2, p0, Lcom/google/common/cache/LocalCache$import$do;->do:Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/cache/LocalCache$import$do;->if:I

    iput-object p4, p0, Lcom/google/common/cache/LocalCache$import$do;->for:Lcom/google/common/cache/LocalCache$const;

    iput-object p5, p0, Lcom/google/common/cache/LocalCache$import$do;->new:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$import$do;->try:Lcom/google/common/cache/LocalCache$import;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$import$do;->do:Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/cache/LocalCache$import$do;->if:I

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$import$do;->for:Lcom/google/common/cache/LocalCache$const;

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$import$do;->new:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$import;->getAndRecordStats(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$const;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/common/cache/LocalCache;->package:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v1, p0, Lcom/google/common/cache/LocalCache$import$do;->for:Lcom/google/common/cache/LocalCache$const;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/LocalCache$const;->case(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
