.class final Lcom/google/common/base/new$super;
.super Lcom/google/common/base/new$this;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "super"
.end annotation


# instance fields
.field private final if:C


# direct methods
.method public constructor <init>(C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/new$this;-><init>()V

    .line 2
    iput-char p1, p0, Lcom/google/common/base/new$super;->if:C

    return-void
.end method


# virtual methods
.method public d(Ljava/util/BitSet;)V
    .locals 2
    .annotation build Landroid/support/v4/li0;
    .end annotation

    .line 1
    iget-char v0, p0, Lcom/google/common/base/new$super;->if:C

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    .line 2
    iget-char v0, p0, Lcom/google/common/base/new$super;->if:C

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public if(Lcom/google/common/base/new;)Lcom/google/common/base/new;
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/google/common/base/new$super;->if:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/new;->package(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/base/new;->if(Lcom/google/common/base/new;)Lcom/google/common/base/new;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public package(C)Z
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/google/common/base/new$super;->if:C

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public protected(Lcom/google/common/base/new;)Lcom/google/common/base/new;
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/google/common/base/new$super;->if:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/new;->package(C)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/common/base/new;->for()Lcom/google/common/base/new;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public strictfp()Lcom/google/common/base/new;
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/google/common/base/new$super;->if:C

    invoke-static {v0}, Lcom/google/common/base/new;->while(C)Lcom/google/common/base/new;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/google/common/base/new$super;->if:C

    invoke-static {v1}, Lcom/google/common/base/new;->do(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
