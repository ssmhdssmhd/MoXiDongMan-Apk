.class public final Landroid/support/v4/x01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# instance fields
.field public final do:Landroid/support/v4/uw1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/support/v4/uw1;

    invoke-direct {v0}, Landroid/support/v4/uw1;-><init>()V

    iput-object v0, p0, Landroid/support/v4/x01;->do:Landroid/support/v4/uw1;

    return-void
.end method


# virtual methods
.method public do()Lrx/Subscription;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/x01;->do:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->current()Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public if(Lrx/Subscription;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Landroid/support/v4/x01;->do:Landroid/support/v4/uw1;

    invoke-virtual {v0, p1}, Landroid/support/v4/uw1;->replace(Lrx/Subscription;)Z

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Subscription can not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/x01;->do:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/x01;->do:Landroid/support/v4/uw1;

    invoke-virtual {v0}, Landroid/support/v4/uw1;->unsubscribe()V

    return-void
.end method
