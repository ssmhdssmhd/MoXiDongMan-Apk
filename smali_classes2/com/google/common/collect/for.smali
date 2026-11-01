.class public abstract Lcom/google/common/collect/for;
.super Landroid/support/v4/ac2;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/for$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/ac2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private do:Lcom/google/common/collect/for$if;

.field private if:Ljava/lang/Object;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/ac2;-><init>()V

    .line 2
    sget-object v0, Lcom/google/common/collect/for$if;->NOT_READY:Lcom/google/common/collect/for$if;

    iput-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    return-void
.end method

.method private for()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/common/collect/for$if;->FAILED:Lcom/google/common/collect/for$if;

    iput-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/for;->do()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/for;->if:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    sget-object v1, Lcom/google/common/collect/for$if;->DONE:Lcom/google/common/collect/for$if;

    if-eq v0, v1, :cond_0

    .line 4
    sget-object v0, Lcom/google/common/collect/for$if;->READY:Lcom/google/common/collect/for$if;

    iput-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract do()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 4
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    sget-object v1, Lcom/google/common/collect/for$if;->FAILED:Lcom/google/common/collect/for$if;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/support/v4/af1;->t(Z)V

    .line 2
    sget-object v0, Lcom/google/common/collect/for$do;->do:[I

    iget-object v1, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/for;->for()Z

    move-result v0

    return v0

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public final if()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/for$if;->DONE:Lcom/google/common/collect/for$if;

    iput-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/v4/lf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/common/collect/for$if;->NOT_READY:Lcom/google/common/collect/for$if;

    iput-object v0, p0, Lcom/google/common/collect/for;->do:Lcom/google/common/collect/for$if;

    .line 3
    iget-object v0, p0, Lcom/google/common/collect/for;->if:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/common/collect/for;->if:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/for;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/common/collect/for;->if:Ljava/lang/Object;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
