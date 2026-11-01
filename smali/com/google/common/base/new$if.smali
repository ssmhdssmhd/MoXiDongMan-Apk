.class final Lcom/google/common/base/new$if;
.super Lcom/google/common/base/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field public final for:Lcom/google/common/base/new;

.field public final if:Lcom/google/common/base/new;


# direct methods
.method public constructor <init>(Lcom/google/common/base/new;Lcom/google/common/base/new;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/new;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/new;

    iput-object p1, p0, Lcom/google/common/base/new$if;->if:Lcom/google/common/base/new;

    .line 3
    invoke-static {p2}, Landroid/support/v4/af1;->continue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/new;

    iput-object p1, p0, Lcom/google/common/base/new$if;->for:Lcom/google/common/base/new;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/new;->try(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/util/BitSet;)V
    .locals 3
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/common/base/new$if;->if:Lcom/google/common/base/new;

    invoke-virtual {v1, v0}, Lcom/google/common/base/new;->d(Ljava/util/BitSet;)V

    .line 3
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/google/common/base/new$if;->for:Lcom/google/common/base/new;

    invoke-virtual {v2, v1}, Lcom/google/common/base/new;->d(Ljava/util/BitSet;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-void
.end method

.method public package(C)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/new$if;->if:Lcom/google/common/base/new;

    invoke-virtual {v0, p1}, Lcom/google/common/base/new;->package(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/base/new$if;->for:Lcom/google/common/base/new;

    invoke-virtual {v0, p1}, Lcom/google/common/base/new;->package(C)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.and("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/new$if;->if:Lcom/google/common/base/new;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/base/new$if;->for:Lcom/google/common/base/new;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
