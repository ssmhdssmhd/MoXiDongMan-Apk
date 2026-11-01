.class Lrx/internal/util/else$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/else;->i6(Lrx/if;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lrx/functions/Action0;",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lrx/internal/schedulers/if;

.field public final synthetic if:Lrx/internal/util/else;


# direct methods
.method public constructor <init>(Lrx/internal/util/else;Lrx/internal/schedulers/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/else$do;->if:Lrx/internal/util/else;

    iput-object p2, p0, Lrx/internal/util/else$do;->do:Lrx/internal/schedulers/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/functions/Action0;

    invoke-virtual {p0, p1}, Lrx/internal/util/else$do;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/util/else$do;->do:Lrx/internal/schedulers/if;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/if;->new(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method
