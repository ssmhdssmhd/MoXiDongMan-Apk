.class public Lorg/mozilla/javascript/IteratorLikeIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/javascript/IteratorLikeIterable$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private closed:Z

.field private final cx:Lorg/mozilla/javascript/Context;

.field private final iterator:Lorg/mozilla/javascript/Scriptable;

.field private final next:Lorg/mozilla/javascript/Callable;

.field private final returnFunc:Lorg/mozilla/javascript/Callable;

.field private final scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->cx:Lorg/mozilla/javascript/Context;

    .line 3
    iput-object p2, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->scope:Lorg/mozilla/javascript/Scriptable;

    const-string v0, "next"

    .line 4
    invoke-static {p3, v0, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->next:Lorg/mozilla/javascript/Callable;

    .line 5
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator:Lorg/mozilla/javascript/Scriptable;

    .line 6
    invoke-static {p3}, Lorg/mozilla/javascript/ScriptableObject;->ensureScriptable(Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v0

    const-string v1, "return"

    .line 7
    invoke-interface {v0, v1, v0}, Lorg/mozilla/javascript/Scriptable;->has(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p3, v1, p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getPropFunctionAndThis(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Callable;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->returnFunc:Lorg/mozilla/javascript/Callable;

    .line 9
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->lastStoredScriptable(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->returnFunc:Lorg/mozilla/javascript/Callable;

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->cx:Lorg/mozilla/javascript/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->scope:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator:Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Callable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->next:Lorg/mozilla/javascript/Callable;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->closed:Z

    .line 3
    iget-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->returnFunc:Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->cx:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->scope:Lorg/mozilla/javascript/Scriptable;

    iget-object v3, p0, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator:Lorg/mozilla/javascript/Scriptable;

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/javascript/IteratorLikeIterable;->iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/mozilla/javascript/IteratorLikeIterable$Itr;
    .locals 1

    .line 2
    new-instance v0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;-><init>(Lorg/mozilla/javascript/IteratorLikeIterable;)V

    return-object v0
.end method
