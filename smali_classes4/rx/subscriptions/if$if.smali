.class final Lrx/subscriptions/if$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final do:Z

.field public final if:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lrx/subscriptions/if$if;->do:Z

    .line 3
    iput p2, p0, Lrx/subscriptions/if$if;->if:I

    return-void
.end method


# virtual methods
.method public do()Lrx/subscriptions/if$if;
    .locals 3

    .line 1
    new-instance v0, Lrx/subscriptions/if$if;

    iget-boolean v1, p0, Lrx/subscriptions/if$if;->do:Z

    iget v2, p0, Lrx/subscriptions/if$if;->if:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/if$if;-><init>(ZI)V

    return-object v0
.end method

.method public for()Lrx/subscriptions/if$if;
    .locals 3

    .line 1
    new-instance v0, Lrx/subscriptions/if$if;

    iget v1, p0, Lrx/subscriptions/if$if;->if:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lrx/subscriptions/if$if;-><init>(ZI)V

    return-object v0
.end method

.method public if()Lrx/subscriptions/if$if;
    .locals 3

    .line 1
    new-instance v0, Lrx/subscriptions/if$if;

    iget-boolean v1, p0, Lrx/subscriptions/if$if;->do:Z

    iget v2, p0, Lrx/subscriptions/if$if;->if:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/if$if;-><init>(ZI)V

    return-object v0
.end method
