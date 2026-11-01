.class final Lcom/google/common/hash/const$new;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "new"
.end annotation


# instance fields
.field private do:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/common/hash/const$new;->do:J

    return-void
.end method


# virtual methods
.method public do()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/common/hash/const$new;->do:J

    const-wide v2, 0x27bb2ee687b0b0fdL    # 2.694898184339827E-117

    mul-long v0, v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/const$new;->do:J

    const/16 v2, 0x21

    ushr-long/2addr v0, v2

    long-to-int v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-double v0, v1

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method
