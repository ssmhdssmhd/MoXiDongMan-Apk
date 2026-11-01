.class public final Lcom/google/zxing/for;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Lcom/google/zxing/if;

.field private if:Landroid/support/v4/z8;


# direct methods
.method public constructor <init>(Lcom/google/zxing/if;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binarizer must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public case()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->try()Landroid/support/v4/kw0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/kw0;->else()Z

    move-result v0

    return v0
.end method

.method public do(IIII)Lcom/google/zxing/for;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->try()Landroid/support/v4/kw0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/kw0;->do(IIII)Landroid/support/v4/kw0;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/google/zxing/for;

    iget-object p3, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {p3, p1}, Lcom/google/zxing/if;->do(Landroid/support/v4/kw0;)Lcom/google/zxing/if;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/zxing/for;-><init>(Lcom/google/zxing/if;)V

    return-object p2
.end method

.method public else()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->try()Landroid/support/v4/kw0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/kw0;->goto()Z

    move-result v0

    return v0
.end method

.method public for(ILandroid/support/v4/w8;)Landroid/support/v4/w8;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/if;->for(ILandroid/support/v4/w8;)Landroid/support/v4/w8;

    move-result-object p1

    return-object p1
.end method

.method public goto()Lcom/google/zxing/for;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->try()Landroid/support/v4/kw0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/kw0;->this()Landroid/support/v4/kw0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/zxing/for;

    iget-object v2, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v2, v0}, Lcom/google/zxing/if;->do(Landroid/support/v4/kw0;)Lcom/google/zxing/if;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/for;-><init>(Lcom/google/zxing/if;)V

    return-object v1
.end method

.method public if()Landroid/support/v4/z8;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/support/v4/j41;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->if:Landroid/support/v4/z8;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->if()Landroid/support/v4/z8;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/for;->if:Landroid/support/v4/z8;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/for;->if:Landroid/support/v4/z8;

    return-object v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->new()I

    move-result v0

    return v0
.end method

.method public this()Lcom/google/zxing/for;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->try()Landroid/support/v4/kw0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/kw0;->break()Landroid/support/v4/kw0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/zxing/for;

    iget-object v2, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v2, v0}, Lcom/google/zxing/if;->do(Landroid/support/v4/kw0;)Lcom/google/zxing/if;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/zxing/for;-><init>(Lcom/google/zxing/if;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/for;->if()Landroid/support/v4/z8;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/z8;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/support/v4/j41; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public try()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/for;->do:Lcom/google/zxing/if;

    invoke-virtual {v0}, Lcom/google/zxing/if;->case()I

    move-result v0

    return v0
.end method
