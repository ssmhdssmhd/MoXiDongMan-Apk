.class final Lcom/google/common/cache/LocalCache$interface;
.super Lcom/google/common/cache/LocalCache$throws;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "interface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$throws<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final if:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$throws;-><init>(Ljava/lang/Object;)V

    .line 2
    iput p2, p0, Lcom/google/common/cache/LocalCache$interface;->if:I

    return-void
.end method


# virtual methods
.method public getWeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/cache/LocalCache$interface;->if:I

    return v0
.end method
