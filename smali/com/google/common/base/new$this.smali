.class abstract Lcom/google/common/base/new$this;
.super Lcom/google/common/base/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/new;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "this"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/base/new;-><init>()V

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

.method public strictfp()Lcom/google/common/base/new;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/base/new$throws;

    invoke-direct {v0, p0}, Lcom/google/common/base/new$throws;-><init>(Lcom/google/common/base/new;)V

    return-object v0
.end method

.method public final transient()Lcom/google/common/base/new;
    .locals 0

    return-object p0
.end method
