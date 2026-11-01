.class Lcom/google/common/collect/w1$case;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public do:Lcom/google/common/collect/w1$else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public for:I

.field public if:Lcom/google/common/collect/w1$else;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/w1$else;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/w1$else<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/collect/w1$case;->do:Lcom/google/common/collect/w1$else;

    .line 3
    iput-object p1, p0, Lcom/google/common/collect/w1$case;->if:Lcom/google/common/collect/w1$else;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/google/common/collect/w1$else;->case:Lcom/google/common/collect/w1$else;

    .line 5
    iput-object v0, p1, Lcom/google/common/collect/w1$else;->try:Lcom/google/common/collect/w1$else;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/google/common/collect/w1$case;->for:I

    return-void
.end method
