.class public Lcom/wsw/cospa/utils/do$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wsw/cospa/utils/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# instance fields
.field public case:Ljava/io/File;

.field private final do:Ljava/util/concurrent/atomic/AtomicLong;

.field private final for:J

.field private final if:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final new:I

.field private final try:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/io/File;JI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcom/wsw/cospa/utils/do$if;->case:Ljava/io/File;

    .line 6
    iput-wide p2, p0, Lcom/wsw/cospa/utils/do$if;->for:J

    .line 7
    iput p4, p0, Lcom/wsw/cospa/utils/do$if;->new:I

    .line 8
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/wsw/cospa/utils/do$if;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/utils/do$if;->break()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/File;JILcom/wsw/cospa/utils/do$do;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/wsw/cospa/utils/do$if;-><init>(Ljava/io/File;JI)V

    return-void
.end method

.method private break()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/wsw/cospa/utils/do$if$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/utils/do$if$do;-><init>(Lcom/wsw/cospa/utils/do$if;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic case(Lcom/wsw/cospa/utils/do$if;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method private catch(Ljava/io/File;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private class()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->case:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private const(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->final(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 4
    iget-object v1, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic do(Lcom/wsw/cospa/utils/do$if;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->final(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic else(Lcom/wsw/cospa/utils/do$if;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/do$if;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private final(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/wsw/cospa/utils/do$if;->case:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic for(Lcom/wsw/cospa/utils/do$if;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/utils/do$if;->class()V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/utils/do$if;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->super(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic if(Lcom/wsw/cospa/utils/do$if;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->throw(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic new(Lcom/wsw/cospa/utils/do$if;Ljava/io/File;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->catch(Ljava/io/File;)J

    move-result-wide p0

    return-wide p0
.end method

.method private super(Ljava/io/File;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/wsw/cospa/utils/do$if;->new:I

    if-le v0, v2, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/wsw/cospa/utils/do$if;->while()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->if:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->catch(Ljava/io/File;)J

    move-result-wide v0

    .line 8
    iget-object v2, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    :goto_1
    add-long/2addr v2, v0

    .line 9
    iget-wide v4, p0, Lcom/wsw/cospa/utils/do$if;->for:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/wsw/cospa/utils/do$if;->while()J

    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v2, v2

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    goto :goto_1

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/wsw/cospa/utils/do$if;->do:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 15
    iget-object v1, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/utils/do$if;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->const(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private throw(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wsw/cospa/utils/do$if;->const(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1
.end method

.method public static synthetic try(Lcom/wsw/cospa/utils/do$if;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    return-object p0
.end method

.method private while()J
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-nez v2, :cond_2

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 6
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 8
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v8

    if-gez v10, :cond_1

    .line 9
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    move-object v3, v5

    goto :goto_0

    .line 10
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-direct {p0, v2}, Lcom/wsw/cospa/utils/do$if;->catch(Ljava/io/File;)J

    move-result-wide v0

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    iget-object v3, p0, Lcom/wsw/cospa/utils/do$if;->try:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-wide v0

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
