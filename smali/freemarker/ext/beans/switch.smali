.class Lfreemarker/ext/beans/switch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfreemarker/ext/beans/ClassChangeNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/switch$do;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static do()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/zeroturnaround/javarebel/ReloaderFactory;->getInstance()Lorg/zeroturnaround/javarebel/Reloader;

    return-void
.end method


# virtual methods
.method public subscribe(Lfreemarker/ext/beans/class;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/zeroturnaround/javarebel/ReloaderFactory;->getInstance()Lorg/zeroturnaround/javarebel/Reloader;

    move-result-object v0

    new-instance v1, Lfreemarker/ext/beans/switch$do;

    invoke-direct {v1, p1}, Lfreemarker/ext/beans/switch$do;-><init>(Lfreemarker/ext/beans/class;)V

    invoke-interface {v0, v1}, Lorg/zeroturnaround/javarebel/Reloader;->addClassReloadListener(Lorg/zeroturnaround/javarebel/ClassEventListener;)V

    return-void
.end method
