.class public final Lorg/reactivestreams/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/reactivestreams/do$do;,
        Lorg/reactivestreams/do$try;,
        Lorg/reactivestreams/do$if;,
        Lorg/reactivestreams/do$case;,
        Lorg/reactivestreams/do$else;,
        Lorg/reactivestreams/do$for;,
        Lorg/reactivestreams/do$goto;,
        Lorg/reactivestreams/do$new;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static case(Ljava/util/concurrent/Flow$Subscriber;)Lorg/reactivestreams/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "TT;>;)",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "flowSubscriber"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/do$for;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/do$for;

    iget-object p0, p0, Lorg/reactivestreams/do$for;->do:Lorg/reactivestreams/Subscriber;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/Subscriber;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/reactivestreams/Subscriber;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/do$else;

    invoke-direct {v0, p0}, Lorg/reactivestreams/do$else;-><init>(Ljava/util/concurrent/Flow$Subscriber;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static do(Lorg/reactivestreams/Processor;)Ljava/util/concurrent/Flow$Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Processor<",
            "-TT;+TU;>;)",
            "Ljava/util/concurrent/Flow$Processor<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsProcessor"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/do$case;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/do$case;

    iget-object p0, p0, Lorg/reactivestreams/do$case;->do:Ljava/util/concurrent/Flow$Processor;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/Flow$Processor;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/util/concurrent/Flow$Processor;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/do$if;

    invoke-direct {v0, p0}, Lorg/reactivestreams/do$if;-><init>(Lorg/reactivestreams/Processor;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static for(Lorg/reactivestreams/Subscriber;)Ljava/util/concurrent/Flow$Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;)",
            "Ljava/util/concurrent/Flow$Subscriber<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsSubscriber"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/do$else;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/do$else;

    iget-object p0, p0, Lorg/reactivestreams/do$else;->do:Ljava/util/concurrent/Flow$Subscriber;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/Flow$Subscriber;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/util/concurrent/Flow$Subscriber;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/do$for;

    invoke-direct {v0, p0}, Lorg/reactivestreams/do$for;-><init>(Lorg/reactivestreams/Subscriber;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static if(Lorg/reactivestreams/Publisher;)Ljava/util/concurrent/Flow$Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reactivestreams/Publisher<",
            "+TT;>;)",
            "Ljava/util/concurrent/Flow$Publisher<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "reactiveStreamsPublisher"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/do$try;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/do$try;

    iget-object p0, p0, Lorg/reactivestreams/do$try;->do:Ljava/util/concurrent/Flow$Publisher;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/Flow$Publisher;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/util/concurrent/Flow$Publisher;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/do$do;

    invoke-direct {v0, p0}, Lorg/reactivestreams/do$do;-><init>(Lorg/reactivestreams/Publisher;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static new(Ljava/util/concurrent/Flow$Processor;)Lorg/reactivestreams/Processor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Processor<",
            "-TT;+TU;>;)",
            "Lorg/reactivestreams/Processor<",
            "TT;TU;>;"
        }
    .end annotation

    const-string v0, "flowProcessor"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/do$if;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/do$if;

    iget-object p0, p0, Lorg/reactivestreams/do$if;->do:Lorg/reactivestreams/Processor;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/Processor;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/reactivestreams/Processor;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/do$case;

    invoke-direct {v0, p0}, Lorg/reactivestreams/do$case;-><init>(Ljava/util/concurrent/Flow$Processor;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static try(Ljava/util/concurrent/Flow$Publisher;)Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Flow$Publisher<",
            "+TT;>;)",
            "Lorg/reactivestreams/Publisher<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "flowPublisher"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lorg/reactivestreams/do$do;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lorg/reactivestreams/do$do;

    iget-object p0, p0, Lorg/reactivestreams/do$do;->do:Lorg/reactivestreams/Publisher;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p0, Lorg/reactivestreams/Publisher;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Lorg/reactivestreams/Publisher;

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lorg/reactivestreams/do$try;

    invoke-direct {v0, p0}, Lorg/reactivestreams/do$try;-><init>(Ljava/util/concurrent/Flow$Publisher;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
