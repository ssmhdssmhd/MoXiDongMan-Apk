.class final Lcom/luck/picture/lib/rxbus2/if$for;
.super Landroid/support/v4/n10;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/rxbus2/if;->case(JLcom/luck/picture/lib/rxbus2/if$new;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/n10<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/luck/picture/lib/rxbus2/if$new;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/rxbus2/if$new;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/rxbus2/if$for;->if:Lcom/luck/picture/lib/rxbus2/if$new;

    invoke-direct {p0}, Landroid/support/v4/n10;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/n10;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/if$for;->if:Lcom/luck/picture/lib/rxbus2/if$new;

    invoke-virtual {v0}, Lcom/luck/picture/lib/rxbus2/if$new;->for()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/n10;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/if$for;->if:Lcom/luck/picture/lib/rxbus2/if$new;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/rxbus2/if$new;->new(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/n10;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/rxbus2/if$for;->if:Lcom/luck/picture/lib/rxbus2/if$new;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/rxbus2/if$new;->try(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
