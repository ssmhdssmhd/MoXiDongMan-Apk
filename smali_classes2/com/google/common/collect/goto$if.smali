.class Lcom/google/common/collect/goto$if;
.super Lcom/google/common/collect/goto$do;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/goto<",
        "TK;TV;>.do;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic if:Lcom/google/common/collect/goto;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/goto$if;->if:Lcom/google/common/collect/goto;

    invoke-direct {p0, p1}, Lcom/google/common/collect/goto$do;-><init>(Lcom/google/common/collect/goto;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Lcom/google/common/collect/c3;->else(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/common/collect/c3;->catch(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
