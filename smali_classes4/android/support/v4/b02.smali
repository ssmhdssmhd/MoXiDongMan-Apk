.class public abstract Landroid/support/v4/b02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field private final do:Landroid/support/v4/d32;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/d32;

    invoke-direct {v0}, Landroid/support/v4/d32;-><init>()V

    iput-object v0, p0, Landroid/support/v4/b02;->do:Landroid/support/v4/d32;

    return-void
.end method


# virtual methods
.method public final do(Lrx/Subscription;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/b02;->do:Landroid/support/v4/d32;

    invoke-virtual {v0, p1}, Landroid/support/v4/d32;->do(Lrx/Subscription;)V

    return-void
.end method

.method public abstract if(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/b02;->do:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public final unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/b02;->do:Landroid/support/v4/d32;

    invoke-virtual {v0}, Landroid/support/v4/d32;->unsubscribe()V

    return-void
.end method
