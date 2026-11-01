.class public final Lrx/internal/util/else;
.super Lrx/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/else$else;,
        Lrx/internal/util/else$case;,
        Lrx/internal/util/else$try;,
        Lrx/internal/util/else$new;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final for:Z


# instance fields
.field public final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "rx.just.strong-mode"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lrx/internal/util/else;->for:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/else$new;

    invoke-direct {v0, p1}, Lrx/internal/util/else$new;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/plugins/if;->volatile(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/internal/util/else;->if:Ljava/lang/Object;

    return-void
.end method

.method public static e6(Ljava/lang/Object;)Lrx/internal/util/else;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/else<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/else;

    invoke-direct {v0, p0}, Lrx/internal/util/else;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static f6(Landroid/support/v4/y22;Ljava/lang/Object;)Lrx/Producer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/support/v4/y22<",
            "-TT;>;TT;)",
            "Lrx/Producer;"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lrx/internal/util/else;->for:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/support/v4/yz1;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/yz1;-><init>(Landroid/support/v4/y22;Ljava/lang/Object;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lrx/internal/util/else$else;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/else$else;-><init>(Landroid/support/v4/y22;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public g6()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/else;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public h6(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "+TR;>;>;)",
            "Lrx/Observable<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/else$for;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/else$for;-><init>(Lrx/internal/util/else;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public i6(Lrx/if;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/if;",
            ")",
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lrx/internal/schedulers/if;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lrx/internal/schedulers/if;

    .line 3
    new-instance v0, Lrx/internal/util/else$do;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/else$do;-><init>(Lrx/internal/util/else;Lrx/internal/schedulers/if;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lrx/internal/util/else$if;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/else$if;-><init>(Lrx/internal/util/else;Lrx/if;)V

    .line 5
    :goto_0
    new-instance p1, Lrx/internal/util/else$try;

    iget-object v1, p0, Lrx/internal/util/else;->if:Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lrx/internal/util/else$try;-><init>(Ljava/lang/Object;Lrx/functions/Func1;)V

    invoke-static {p1}, Lrx/Observable;->q5(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
