.class public final synthetic Landroid/support/v4/gf;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static do(Lorg/chromium/base/Callback;Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "_this"    # Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/ff;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/ff;-><init>(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic for(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/gf;->if(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic if(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 0
    .param p0, "_this"    # Lorg/chromium/base/Callback;

    .line 1
    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
