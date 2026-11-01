.class final Lrx/internal/util/for$catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "catch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func0<",
        "Lrx/observables/for<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/TimeUnit;

.field private final for:J

.field private final if:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final new:Lrx/if;


# direct methods
.method public constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/if;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/if;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lrx/internal/util/for$catch;->do:Ljava/util/concurrent/TimeUnit;

    .line 3
    iput-object p1, p0, Lrx/internal/util/for$catch;->if:Lrx/Observable;

    .line 4
    iput-wide p2, p0, Lrx/internal/util/for$catch;->for:J

    .line 5
    iput-object p5, p0, Lrx/internal/util/for$catch;->new:Lrx/if;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrx/internal/util/for$catch;->do()Lrx/observables/for;

    move-result-object v0

    return-object v0
.end method

.method public do()Lrx/observables/for;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/for<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/for$catch;->if:Lrx/Observable;

    iget-wide v1, p0, Lrx/internal/util/for$catch;->for:J

    iget-object v3, p0, Lrx/internal/util/for$catch;->do:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lrx/internal/util/for$catch;->new:Lrx/if;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Observable;->i3(JLjava/util/concurrent/TimeUnit;Lrx/if;)Lrx/observables/for;

    move-result-object v0

    return-object v0
.end method
