.class final Lcom/google/common/collect/a2$do;
.super Lcom/google/common/collect/a2$catch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a2;->try(I)Lcom/google/common/collect/a2$catch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a2$catch<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic if:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/common/collect/a2$do;->if:I

    invoke-direct {p0}, Lcom/google/common/collect/a2$catch;-><init>()V

    return-void
.end method


# virtual methods
.method public for()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/common/collect/a2$do;->if:I

    invoke-static {v0}, Lcom/google/common/collect/l2;->new(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
