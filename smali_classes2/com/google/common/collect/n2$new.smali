.class Lcom/google/common/collect/n2$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/n2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "new"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "Lcom/google/common/collect/n2;",
        "Lcom/google/common/collect/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final do:Lcom/google/common/collect/n2$new;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/n2$new;

    invoke-direct {v0}, Lcom/google/common/collect/n2$new;-><init>()V

    sput-object v0, Lcom/google/common/collect/n2$new;->do:Lcom/google/common/collect/n2$new;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/n2;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2$new;->do(Lcom/google/common/collect/n2;)Lcom/google/common/collect/a;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/google/common/collect/n2;)Lcom/google/common/collect/a;
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/common/collect/n2;->upperBound:Lcom/google/common/collect/a;

    return-object p1
.end method
