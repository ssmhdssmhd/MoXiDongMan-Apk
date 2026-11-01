.class Lcom/google/protobuf/return$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/return;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/return$new$if;,
        Lcom/google/protobuf/return$new$do;
    }
.end annotation


# instance fields
.field private final do:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$if;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final for:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/google/protobuf/return$new$do;",
            ">;"
        }
    .end annotation
.end field

.field private if:I

.field private final new:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$if;",
            "Lcom/google/protobuf/return$new$do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/return$new;->do:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/protobuf/return$new;->if:I

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/return$new;->for:Ljava/util/Stack;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/return$new;->new:Ljava/util/Map;

    return-void
.end method

.method private do(Lcom/google/protobuf/return$new$if;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/protobuf/return$new$if;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$if;

    .line 2
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->return()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Descriptors$else;

    .line 4
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->abstract()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v4, v5, :cond_2

    .line 6
    iget-object v4, p0, Lcom/google/protobuf/return$new;->new:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/return$new$do;

    .line 7
    iget-object v3, v3, Lcom/google/protobuf/return$new$do;->new:Lcom/google/protobuf/return$new$if;

    if-eq v3, p1, :cond_2

    .line 8
    iget-boolean v3, v3, Lcom/google/protobuf/return$new$if;->if:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 9
    :goto_0
    iput-boolean v2, p1, Lcom/google/protobuf/return$new$if;->if:Z

    .line 10
    iget-object v0, p1, Lcom/google/protobuf/return$new$if;->do:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$if;

    .line 11
    iget-object v2, p0, Lcom/google/protobuf/return$new;->do:Ljava/util/Map;

    iget-boolean v3, p1, Lcom/google/protobuf/return$new$if;->if:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private if(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/return$new$do;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/protobuf/return$new$do;

    iget v1, p0, Lcom/google/protobuf/return$new;->if:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/protobuf/return$new;->if:I

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/return$new$do;-><init>(Lcom/google/protobuf/Descriptors$if;I)V

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/return$new;->for:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/return$new;->new:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$if;->super()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Descriptors$else;

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->while()Lcom/google/protobuf/Descriptors$else$do;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/Descriptors$else$do;->MESSAGE:Lcom/google/protobuf/Descriptors$else$do;

    if-ne v2, v3, :cond_0

    .line 6
    iget-object v2, p0, Lcom/google/protobuf/return$new;->new:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/return$new$do;

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/Descriptors$else;->native()Lcom/google/protobuf/Descriptors$if;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/return$new;->if(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/return$new$do;

    move-result-object v1

    .line 8
    iget v2, v0, Lcom/google/protobuf/return$new$do;->for:I

    iget v1, v1, Lcom/google/protobuf/return$new$do;->for:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/protobuf/return$new$do;->for:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, v2, Lcom/google/protobuf/return$new$do;->new:Lcom/google/protobuf/return$new$if;

    if-nez v1, :cond_0

    .line 10
    iget v1, v0, Lcom/google/protobuf/return$new$do;->for:I

    iget v2, v2, Lcom/google/protobuf/return$new$do;->for:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/protobuf/return$new$do;->for:I

    goto :goto_0

    .line 11
    :cond_2
    iget p1, v0, Lcom/google/protobuf/return$new$do;->if:I

    iget v1, v0, Lcom/google/protobuf/return$new$do;->for:I

    if-ne p1, v1, :cond_4

    .line 12
    new-instance p1, Lcom/google/protobuf/return$new$if;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/google/protobuf/return$new$if;-><init>(Lcom/google/protobuf/return$do;)V

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/google/protobuf/return$new;->for:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/return$new$do;

    .line 14
    iput-object p1, v1, Lcom/google/protobuf/return$new$do;->new:Lcom/google/protobuf/return$new$if;

    .line 15
    iget-object v2, p1, Lcom/google/protobuf/return$new$if;->do:Ljava/util/List;

    iget-object v3, v1, Lcom/google/protobuf/return$new$do;->do:Lcom/google/protobuf/Descriptors$if;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v1, v0, :cond_3

    .line 16
    invoke-direct {p0, p1}, Lcom/google/protobuf/return$new;->do(Lcom/google/protobuf/return$new$if;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public for(Lcom/google/protobuf/Descriptors$if;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/return$new;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/return$new;->do:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit p0

    return p1

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/protobuf/return$new;->if(Lcom/google/protobuf/Descriptors$if;)Lcom/google/protobuf/return$new$do;

    move-result-object p1

    iget-object p1, p1, Lcom/google/protobuf/return$new$do;->new:Lcom/google/protobuf/return$new$if;

    iget-boolean p1, p1, Lcom/google/protobuf/return$new$if;->if:Z

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
