.class public final Landroid/support/v4/x91;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final do:Landroid/support/v4/z8;

.field private final if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/z8;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/z8;",
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/x91;->do:Landroid/support/v4/z8;

    .line 3
    iput-object p2, p0, Landroid/support/v4/x91;->if:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public do()Landroid/support/v4/z8;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/x91;->do:Landroid/support/v4/z8;

    return-object v0
.end method

.method public if()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/x91;->if:Ljava/util/List;

    return-object v0
.end method
