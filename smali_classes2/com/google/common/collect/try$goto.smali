.class Lcom/google/common/collect/try$goto;
.super Lcom/google/common/collect/try$class;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/try;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "goto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/try<",
        "TK;TV;>.class;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic else:Lcom/google/common/collect/try;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/try;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/try$catch;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/try;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/try<",
            "TK;TV;>.catch;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/try$goto;->else:Lcom/google/common/collect/try;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/collect/try$class;-><init>(Lcom/google/common/collect/try;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/try$catch;)V

    return-void
.end method
