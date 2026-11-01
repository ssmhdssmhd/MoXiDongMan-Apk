.class public abstract Lcom/google/zxing/if;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/kw0;


# direct methods
.method public constructor <init>(Landroid/support/v4/kw0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/zxing/if;->do:Landroid/support/v4/kw0;

    return-void
.end method


# virtual methods
.method public final case()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/if;->do:Landroid/support/v4/kw0;

    invoke-virtual {v0}, Landroid/support/v4/kw0;->try()I

    move-result v0

    return v0
.end method

.method public abstract do(Landroid/support/v4/kw0;)Lcom/google/zxing/if;
.end method

.method public abstract for(ILandroid/support/v4/w8;)Landroid/support/v4/w8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation
.end method

.method public abstract if()Landroid/support/v4/z8;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation
.end method

.method public final new()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/if;->do:Landroid/support/v4/kw0;

    invoke-virtual {v0}, Landroid/support/v4/kw0;->if()I

    move-result v0

    return v0
.end method

.method public final try()Landroid/support/v4/kw0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/if;->do:Landroid/support/v4/kw0;

    return-object v0
.end method
