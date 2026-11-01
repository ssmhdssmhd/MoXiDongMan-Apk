.class final Lrx/internal/schedulers/goto$if;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36e5888d681586eL


# instance fields
.field public final parent:Landroid/support/v4/d32;

.field public final s:Lrx/internal/schedulers/goto;


# direct methods
.method public constructor <init>(Lrx/internal/schedulers/goto;Landroid/support/v4/d32;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/schedulers/goto$if;->s:Lrx/internal/schedulers/goto;

    .line 3
    iput-object p2, p0, Lrx/internal/schedulers/goto$if;->parent:Landroid/support/v4/d32;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/schedulers/goto$if;->s:Lrx/internal/schedulers/goto;

    invoke-virtual {v0}, Lrx/internal/schedulers/goto;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/schedulers/goto$if;->parent:Landroid/support/v4/d32;

    iget-object v1, p0, Lrx/internal/schedulers/goto$if;->s:Lrx/internal/schedulers/goto;

    invoke-virtual {v0, v1}, Landroid/support/v4/d32;->new(Lrx/Subscription;)V

    :cond_0
    return-void
.end method
