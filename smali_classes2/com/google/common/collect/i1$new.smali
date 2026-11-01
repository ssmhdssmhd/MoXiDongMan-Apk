.class Lcom/google/common/collect/i1$new;
.super Lcom/google/common/collect/x0$try;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/i1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/x0$try;-><init>(Lcom/google/common/collect/x0;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/i1;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/i1$new;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/i1$for;

    iget-object v1, p0, Lcom/google/common/collect/i1$new;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/i1$for;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/x0$try;->createMap(Lcom/google/common/collect/x0$if;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
