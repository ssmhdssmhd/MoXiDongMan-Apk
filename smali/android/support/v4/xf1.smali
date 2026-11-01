.class public final synthetic Landroid/support/v4/xf1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic do:Lorg/chromium/base/Promise$AsyncFunction;

.field public final synthetic if:Lorg/chromium/base/Promise;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/xf1;->do:Lorg/chromium/base/Promise$AsyncFunction;

    iput-object p2, p0, Landroid/support/v4/xf1;->if:Lorg/chromium/base/Promise;

    return-void
.end method


# virtual methods
.method public synthetic bind(Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/gf;->do(Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/xf1;->do:Lorg/chromium/base/Promise$AsyncFunction;

    iget-object v1, p0, Landroid/support/v4/xf1;->if:Lorg/chromium/base/Promise;

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Promise;->for(Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;Ljava/lang/Object;)V

    return-void
.end method
