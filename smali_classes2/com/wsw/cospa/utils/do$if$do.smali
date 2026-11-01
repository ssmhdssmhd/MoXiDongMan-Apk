.class Lcom/wsw/cospa/utils/do$if$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/utils/do$if;->break()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/utils/do$if;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/utils/do$if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/utils/do$if$do;->do:Lcom/wsw/cospa/utils/do$if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if$do;->do:Lcom/wsw/cospa/utils/do$if;

    iget-object v0, v0, Lcom/wsw/cospa/utils/do$if;->case:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, v0, v2

    int-to-long v6, v3

    .line 3
    iget-object v3, p0, Lcom/wsw/cospa/utils/do$if$do;->do:Lcom/wsw/cospa/utils/do$if;

    invoke-static {v3, v5}, Lcom/wsw/cospa/utils/do$if;->new(Lcom/wsw/cospa/utils/do$if;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    add-int/lit8 v4, v4, 0x1

    .line 4
    iget-object v6, p0, Lcom/wsw/cospa/utils/do$if$do;->do:Lcom/wsw/cospa/utils/do$if;

    invoke-static {v6}, Lcom/wsw/cospa/utils/do$if;->try(Lcom/wsw/cospa/utils/do$if;)Ljava/util/Map;

    move-result-object v6

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 6
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if$do;->do:Lcom/wsw/cospa/utils/do$if;

    invoke-static {v0}, Lcom/wsw/cospa/utils/do$if;->case(Lcom/wsw/cospa/utils/do$if;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if$do;->do:Lcom/wsw/cospa/utils/do$if;

    invoke-static {v0}, Lcom/wsw/cospa/utils/do$if;->else(Lcom/wsw/cospa/utils/do$if;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-void
.end method
