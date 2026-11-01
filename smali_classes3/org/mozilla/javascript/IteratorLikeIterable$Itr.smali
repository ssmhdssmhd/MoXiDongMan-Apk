.class public final Lorg/mozilla/javascript/IteratorLikeIterable$Itr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/IteratorLikeIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private nextVal:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/mozilla/javascript/IteratorLikeIterable;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/IteratorLikeIterable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v0}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$300(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Callable;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v3}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$200(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    sget-object v4, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/Callable;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "done"

    invoke-static {v0, v3, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v1}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$000(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->this$0:Lorg/mozilla/javascript/IteratorLikeIterable;

    invoke-static {v2}, Lorg/mozilla/javascript/IteratorLikeIterable;->access$100(Lorg/mozilla/javascript/IteratorLikeIterable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v0, v3, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->getObjectProp(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->nextVal:Ljava/lang/Object;

    const/4 v0, 0x1

    return v0

    .line 6
    :cond_1
    invoke-static {v0, v3}, Lorg/mozilla/javascript/ScriptRuntime;->undefReadError(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/javascript/IteratorLikeIterable$Itr;->nextVal:Ljava/lang/Object;

    return-object v0
.end method
