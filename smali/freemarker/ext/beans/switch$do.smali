.class Lfreemarker/ext/beans/switch$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/zeroturnaround/javarebel/ClassEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# instance fields
.field private final do:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfreemarker/ext/beans/switch$do;->do:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public do(ILjava/lang/Class;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfreemarker/ext/beans/switch$do;->do:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/class;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/zeroturnaround/javarebel/ReloaderFactory;->getInstance()Lorg/zeroturnaround/javarebel/Reloader;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/zeroturnaround/javarebel/Reloader;->removeClassReloadListener(Lorg/zeroturnaround/javarebel/ClassEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Lfreemarker/ext/beans/class;->b(Ljava/lang/Class;)V

    :cond_1
    :goto_0
    return-void
.end method
