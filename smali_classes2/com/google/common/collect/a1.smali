.class final Lcom/google/common/collect/a1;
.super Lcom/google/common/collect/r0;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/a1$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/r0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x0<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/r0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/a1;->map:Lcom/google/common/collect/x0;

    return-void
.end method

.method public static synthetic access$000(Lcom/google/common/collect/a1;)Lcom/google/common/collect/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/collect/a1;->map:Lcom/google/common/collect/x0;

    return-object p0
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/v0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v0<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a1;->map:Lcom/google/common/collect/x0;

    invoke-virtual {v0}, Lcom/google/common/collect/x0;->entrySet()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->asList()Lcom/google/common/collect/v0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/common/collect/a1$if;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/a1$if;-><init>(Lcom/google/common/collect/a1;Lcom/google/common/collect/v0;)V

    return-object v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/s1;->while(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Landroid/support/v4/ac2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/ac2<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/a1$do;

    invoke-direct {v0, p0}, Lcom/google/common/collect/a1$do;-><init>(Lcom/google/common/collect/a1;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/a1;->iterator()Landroid/support/v4/ac2;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/collect/a1;->map:Lcom/google/common/collect/x0;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/common/collect/a1$for;

    iget-object v1, p0, Lcom/google/common/collect/a1;->map:Lcom/google/common/collect/x0;

    invoke-direct {v0, v1}, Lcom/google/common/collect/a1$for;-><init>(Lcom/google/common/collect/x0;)V

    return-object v0
.end method
