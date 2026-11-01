.class public final synthetic Landroid/support/v4/ff;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic do:Lorg/chromium/base/Callback;

.field public final synthetic if:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/ff;->do:Lorg/chromium/base/Callback;

    iput-object p2, p0, Landroid/support/v4/ff;->if:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/ff;->do:Lorg/chromium/base/Callback;

    iget-object v1, p0, Landroid/support/v4/ff;->if:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/gf;->for(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    return-void
.end method
