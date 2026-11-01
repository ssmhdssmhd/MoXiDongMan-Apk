.class public final Landroid/support/v4/vm1;
.super Ljava/util/AbstractMap$SimpleImmutableEntry;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleImmutableEntry<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lcom/google/common/cache/goto;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/goto;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/cache/goto;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    invoke-static {p3}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/cache/goto;

    iput-object p1, p0, Landroid/support/v4/vm1;->cause:Lcom/google/common/cache/goto;

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/goto;)Landroid/support/v4/vm1;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;",
            "Lcom/google/common/cache/goto;",
            ")",
            "Landroid/support/v4/vm1<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/support/v4/vm1;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/vm1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/goto;)V

    return-object v0
.end method


# virtual methods
.method public getCause()Lcom/google/common/cache/goto;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vm1;->cause:Lcom/google/common/cache/goto;

    return-object v0
.end method

.method public wasEvicted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/vm1;->cause:Lcom/google/common/cache/goto;

    invoke-virtual {v0}, Lcom/google/common/cache/goto;->wasEvicted()Z

    move-result v0

    return v0
.end method
