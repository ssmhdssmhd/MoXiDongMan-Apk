.class Lrx/internal/util/else$if;
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
.field public final synthetic do:Lrx/if;

.field public final synthetic if:Lrx/internal/util/else;


# direct methods
.method public constructor <init>(Lrx/internal/util/else;Lrx/if;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/util/else$if;->if:Lrx/internal/util/else;

    iput-object p2, p0, Lrx/internal/util/else$if;->do:Lrx/if;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrx/functions/Action0;

    invoke-virtual {p0, p1}, Lrx/internal/util/else$if;->do(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public do(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/util/else$if;->do:Lrx/if;

    invoke-virtual {v0}, Lrx/if;->do()Lrx/if$do;

    move-result-object v0

    .line 2
    new-instance v1, Lrx/internal/util/else$if$do;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/else$if$do;-><init>(Lrx/internal/util/else$if;Lrx/functions/Action0;Lrx/if$do;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-object v0
.end method
