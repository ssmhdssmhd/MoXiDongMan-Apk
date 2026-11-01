.class public Lcc/shinichi/library/tool/ui/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/shinichi/library/tool/ui/do$for;
    }
.end annotation


# static fields
.field private static final do:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcc/shinichi/library/tool/ui/do;->do:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static for()Lcc/shinichi/library/tool/ui/do;
    .locals 1

    .line 1
    invoke-static {}, Lcc/shinichi/library/tool/ui/do$for;->do()Lcc/shinichi/library/tool/ui/do;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public do(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcc/shinichi/library/tool/ui/do;->do:Landroid/os/Handler;

    new-instance v1, Lcc/shinichi/library/tool/ui/do$if;

    invoke-direct {v1, p0, p1, p2}, Lcc/shinichi/library/tool/ui/do$if;-><init>(Lcc/shinichi/library/tool/ui/do;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public if(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcc/shinichi/library/tool/ui/do;->do:Landroid/os/Handler;

    new-instance v1, Lcc/shinichi/library/tool/ui/do$do;

    invoke-direct {v1, p0, p1, p2}, Lcc/shinichi/library/tool/ui/do$do;-><init>(Lcc/shinichi/library/tool/ui/do;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
