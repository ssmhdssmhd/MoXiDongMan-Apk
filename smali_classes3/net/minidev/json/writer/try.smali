.class public Lnet/minidev/json/writer/try;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Lnet/minidev/json/writer/case<",
            "*>;>;"
        }
    .end annotation
.end field

.field public for:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field

.field public if:Lnet/minidev/json/writer/case;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/minidev/json/writer/case<",
            "Lnet/minidev/json/JSONAwareEx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    const-class v1, Ljava/util/Date;

    sget-object v2, Lnet/minidev/json/writer/if;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, [I

    sget-object v2, Lnet/minidev/json/writer/do;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, [Ljava/lang/Integer;

    sget-object v2, Lnet/minidev/json/writer/do;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, [S

    sget-object v2, Lnet/minidev/json/writer/do;->do:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, [Ljava/lang/Short;

    sget-object v2, Lnet/minidev/json/writer/do;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, [J

    sget-object v2, Lnet/minidev/json/writer/do;->this:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, [Ljava/lang/Long;

    sget-object v2, Lnet/minidev/json/writer/do;->break:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v1, [B

    sget-object v2, Lnet/minidev/json/writer/do;->try:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-class v1, [Ljava/lang/Byte;

    sget-object v2, Lnet/minidev/json/writer/do;->case:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v1, [C

    sget-object v2, Lnet/minidev/json/writer/do;->else:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v1, [Ljava/lang/Character;

    sget-object v2, Lnet/minidev/json/writer/do;->goto:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-class v1, [F

    sget-object v2, Lnet/minidev/json/writer/do;->catch:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v1, [Ljava/lang/Float;

    sget-object v2, Lnet/minidev/json/writer/do;->class:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-class v1, [D

    sget-object v2, Lnet/minidev/json/writer/do;->const:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-class v1, [Ljava/lang/Double;

    sget-object v2, Lnet/minidev/json/writer/do;->final:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-class v1, [Z

    sget-object v2, Lnet/minidev/json/writer/do;->super:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v1, [Ljava/lang/Boolean;

    sget-object v2, Lnet/minidev/json/writer/do;->throw:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Landroid/support/v4/vx;

    invoke-direct {v1, p0}, Landroid/support/v4/vx;-><init>(Lnet/minidev/json/writer/try;)V

    iput-object v1, p0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    .line 21
    new-instance v1, Landroid/support/v4/xx;

    invoke-direct {v1, p0}, Landroid/support/v4/xx;-><init>(Lnet/minidev/json/writer/try;)V

    iput-object v1, p0, Lnet/minidev/json/writer/try;->for:Lnet/minidev/json/writer/case;

    .line 22
    const-class v1, Lnet/minidev/json/JSONAwareEx;

    iget-object v2, p0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v1, Lnet/minidev/json/JSONAware;

    iget-object v2, p0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v1, Lnet/minidev/json/do;

    iget-object v2, p0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class v1, Lnet/minidev/json/if;

    iget-object v2, p0, Lnet/minidev/json/writer/try;->if:Lnet/minidev/json/writer/case;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/minidev/json/writer/case<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/json/writer/case;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 3
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v0, Landroid/support/v4/wx;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/wx;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V

    goto :goto_0

    .line 5
    :cond_1
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Landroid/support/v4/wx;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/wx;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 8
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    new-instance v0, Lnet/minidev/json/writer/do$while;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/do$while;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V

    goto :goto_1

    .line 10
    :cond_4
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    new-instance v0, Lnet/minidev/json/writer/for$do;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/for$do;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V

    goto :goto_1

    .line 12
    :cond_5
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    new-instance v0, Lnet/minidev/json/writer/for$for;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/for$for;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V

    goto :goto_1

    .line 14
    :cond_6
    new-instance v0, Lnet/minidev/json/writer/if$if;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/if$if;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/Class;)V

    .line 15
    :goto_1
    iget-object v1, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public for(Ljava/lang/reflect/Type;)Lnet/minidev/json/writer/case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/try;->if(Ljava/lang/reflect/ParameterizedType;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object p1

    return-object p1
.end method

.method public if(Ljava/lang/reflect/ParameterizedType;)Lnet/minidev/json/writer/case;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/ParameterizedType;",
            ")",
            "Lnet/minidev/json/writer/case<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/minidev/json/writer/case;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v0, Lnet/minidev/json/writer/for$if;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/for$if;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/reflect/ParameterizedType;)V

    goto :goto_0

    .line 5
    :cond_1
    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v0, Lnet/minidev/json/writer/for$new;

    invoke-direct {v0, p0, p1}, Lnet/minidev/json/writer/for$new;-><init>(Lnet/minidev/json/writer/try;Ljava/lang/reflect/ParameterizedType;)V

    .line 7
    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/minidev/json/writer/case<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/minidev/json/writer/try;->do:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public try(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/minidev/json/writer/try;->do(Ljava/lang/Class;)Lnet/minidev/json/writer/case;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lnet/minidev/json/writer/else;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lnet/minidev/json/writer/else;

    invoke-direct {v1, v0}, Lnet/minidev/json/writer/else;-><init>(Lnet/minidev/json/writer/case;)V

    .line 4
    invoke-virtual {p0, p1, v1}, Lnet/minidev/json/writer/try;->new(Ljava/lang/Class;Lnet/minidev/json/writer/case;)V

    move-object v0, v1

    .line 5
    :cond_0
    check-cast v0, Lnet/minidev/json/writer/else;

    invoke-virtual {v0, p2, p3}, Lnet/minidev/json/writer/else;->if(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
