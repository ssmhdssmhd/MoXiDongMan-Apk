.class final Lrx/internal/operators/abstract$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/abstract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# instance fields
.field public final do:Lrx/internal/operators/abstract$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/abstract$if<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/abstract$if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/abstract$if<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/abstract$do;->do:Lrx/internal/operators/abstract$if;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/abstract$do;->do:Lrx/internal/operators/abstract$if;

    invoke-virtual {v0}, Landroid/support/v4/y22;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/abstract$do;->do:Lrx/internal/operators/abstract$if;

    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/abstract$if;->do(J)V

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/abstract$do;->do:Lrx/internal/operators/abstract$if;

    invoke-virtual {v0}, Lrx/internal/operators/abstract$if;->if()V

    return-void
.end method
